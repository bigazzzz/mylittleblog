<?php

namespace App;

abstract class Model
{
    const TABLE = '';
    const COLUMNS = [];
    const RELATIONS = [];

    public static function findAll()
    {
        $db = Db::instance();
        return $db->query(
            'SELECT * FROM ' . static::TABLE,
            static::class
        );
    }

    public static function findById($id)
    {
        $db = Db::instance();
        $res = $db->query_one_element(
            'SELECT * FROM ' . static::TABLE
            . ' WHERE id=:id',
            static::class,
            array('id' => $id)
        );
        return $res;
    }

    public static function find_hasOne($linkname, $id)
    {
        $db = Db::instance();
        $res = $db->query_one_element(
            'SELECT * FROM ' . static::TABLE
            . ' WHERE ' . $linkname. '=:id',
            static::class,
            array('id' => $id)
        );

        return $res;
    }
    public static function find_hasMany($linkname, $id)
    {
        $db = Db::instance();
        $res = $db->query(
            'SELECT * FROM ' . static::TABLE
            . ' WHERE ' . $linkname. '=:id',
            static::class,
            array('id' => $id)
        );
        return $res;
    }

    public static function find_manyToMany($link_model, $link_id, $linkname, $id)
    {
        $db = Db::instance();
        $res = $db->query(
            'SELECT * FROM ' . $link_model::TABLE 
            . ' AS link_table '
            . ' LEFT JOIN ' . static::TABLE
            . ' AS data_table '
            . ' ON link_table.' . $link_id . '=data_table.id'
            . ' WHERE link_table.' . $linkname. '=:id',
            static::class,
            array('id' => $id)
        );
        return $res;
    }

    public function isNew()
    {
        return empty($this->id);
    }

    public function insert()
    {
        if (!$this->isNew()) {
            return;
        }
        $columns = [];
        $values = [];
        foreach ($this as $k => $v) {
            if ('id' == $k) {
                continue;
            }
            $columns[] = $k;
            $values[':'.$k] = $v;
        }
        $sql = '
            INSERT INTO ' . static::TABLE . '
            (' . implode(',', $columns) . ', created_at)
            VALUES
            (' . implode(',', array_keys($values)) . ', NOW())
                    ';
        $db = Db::instance();
        $db->execute($sql, $values);
        $this->id = $db->getLastInsertId();
    }

    public function update()
    {
        if ($this->isNew()) {
            return;
        }
        $values = [];
        $sql = '
            UPDATE ' . static::TABLE . ' SET ';
        foreach ($this as $k => $v) {
            $values[':'.$k] = $v;
            if ($k == 'id'){
                continue;
            }
            $sql .= $k . '=:' . $k;
            $sql .= ', ';
        }
        $sql = substr($sql, 0, -2);
        $sql .= ' WHERE id=:id';
        $db = Db::instance();
        $db->execute($sql, $values);
    }

    public function delete()
    {
        if ($this->isNew()) {
            return;
        }
        $sql = '
            DELETE FROM ' . static::TABLE . '
            WHERE id=:id';
        $db = Db::instance();
        $db->execute($sql, array(':id' => $this->id));
    }

    public function save()
    {
        if ($this->isNew()) {
            $this->insert();
        } else {
            $this->update();
        }
    }

    public static function getLatest(int $count)
    {
        $db = Db::instance();
        $res = $db->query(
            'SELECT * FROM ' . static::TABLE
            . ' ORDER BY created_at DESC'
            . ' LIMIT 0,' . $count,
            static::class
        );
        if (count($res) == 0) {
            return [];
        }
        return $res;
    }

    public function __get($k)
    {

        if ($k == "count"){
            return self::count();
        };
        /*
        Обработка связей таблиц
         */
        if (key_exists($k, static::RELATIONS)){
            /*
            @id - имя поля связанно объекта(таблицы)) с данными, по умолчанию id
             */
            $id = static::RELATIONS[$k]['id'] ?? 'id';
            /*
            Обработка hasOne
            @link_id - имя поля текущего объекта(таблицы), где находиться ID связанной таблицы. по-умолчанию ИМЯВЫЗЫВАЕМОГОСВОЙСТВА_id
            */
            $link_id = static::RELATIONS[$k]['link_id'] ?? $k . '_id';
            if (isset($this->{$link_id})){
                if (static::RELATIONS[$k]['type']=='hasOne'){
                    return static::RELATIONS[$k]['model']::find_hasOne($id, $this->{$link_id});
                }
            };
            /*
            Обработка hasMany
            @link_id - имя поля связанного объекта(таблицы), где находиться ID записей. по-умолчанию ИМЯТЕКУЩЕГООБЪЕКТАБЕЗNAMESPACEИМАЛЕНЬКИМИБУКВАМИ_id
            */
            $link_id = static::RELATIONS[$k]['link_id'] ?? $this->getLinkId();
            if (isset($this->{$id})){
                if (static::RELATIONS[$k]['type']=='hasMany'){
                    return static::RELATIONS[$k]['model']::find_hasMany($link_id, $this->{$id} );
                }
            };
            /*
            Обработка manyToMany
            @links_model = модель(таблица) связей, связующие два объекта. По умолчанию ТЕКУЩАЯМОДЕЛЬ2МОДЕЛЬИЗКОТОРОЙБЕРЕМЗНАЧЕНИЕБЕЗNAMESPACE, если этот класс не существует, то ТЕКУЩАЯМОДЕЛЬБЕЗNAMESPACE2МОДЕЛЬИЗКОТОРОЙБЕРЕМЗНАЧЕНИЕ, если этот класс не существует, то null
            @link_from_id - имя поля в модели(таблице) связей, для текущего объекта, по умолчанию ИМЯТЕКУЩЕГООБЪЕКТАБЕЗNAMESPACEИМАЛЕНЬКИМИБУКВАМИ_id
            @link_to_id - имя поля в модели(таблице) связей, для получаемого объекта, по умолчанию ИМЯВЫЗЫВАЕМОГООБЪЕКТАБЕЗNAMESPACEИМАЛЕНЬКИМИБУКВАМИ_id
             */
            if (isset($this->id)){
                if (static::RELATIONS[$k]['type']=='manyToMany'){
                    $links_model = static::RELATIONS[$k]['link_model'] ?? $this->getLinksModel($k);
                    $link_from_id = static::RELATIONS[$k]['link_from_id'] ?? $this->getLinkId();
                    $link_to_id = static::RELATIONS[$k]['link_to_id'] ?? strtolower(preg_replace('#.+\\\#', '', static::RELATIONS[$k]['model'])) . '_id';
                    return static::RELATIONS[$k]['model']::find_manyToMany($links_model,$link_to_id, $link_from_id, $this->id);
                }
            };
            return false;
        }
        return NULL;
    }

    public function __isset($k)
    {
        return key_exists($k, static::RELATIONS);
    }

    public function getLinkId()
    {
        /*
        возвращает 
         */
        return strtolower(preg_replace('#.+\\\#', '', static::class)) . '_id';
    }

    public function getLinksModel($k)
    {
        /*
        возвращает имя класса без namespace и маленькими буквами + "_id"

         */
        if (class_exists($links_model = static::class . "2" . preg_replace('#.+\\\#', '', static::RELATIONS[$k]['model']))) return $links_model;
        if (class_exists($links_model = static::RELATIONS[$k]['model'] . "2" . preg_replace('#.+\\\#', '', static::class))) return $links_model;
        return null;
    }

    public static function search($data = ['1' => '1'], int $start = 0, int $limit = 0)
    {
        $db = Db::instance();
        $sql = '
            SELECT * FROM ' . static::TABLE;
        if (!is_null($data)){
            $sql .=  ' WHERE ';
            $values = [];
            foreach ($data as $k => $v) {
                $values[':'.$k] = '%' . $v . '%';
                $sql .= $k . ' LIKE :' . $k;
                $sql .= ' AND ';
            }
            $sql = substr($sql, 0, -5);
        };
        if ($limit>0){
            $sql .= ' LIMIT ' . $start . ',' . $limit;
        }
        $res = $db->query(
            $sql,
            static::class,
            $values
        );
        return $res;
    }

    public static function extendedSearch($data = ['1' => '1'])
    {
        foreach ($data as $k=>$v) {
            $data[$k] = str_replace(' ', '%', $v);
        }
        return self::search($data);
    }

    public static function count()
    {
        $db = Db::instance();
        return (int)$db->count(static::TABLE);
    }
 
    public static function page($data = ['1' => '1'], int $page=1, int $record_per_page=5)
    {
        $start_record = ($page-1)*$record_per_page;
        return self::search($data, $start_record, $record_per_page);
    }
}