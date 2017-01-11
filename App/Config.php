<?php
namespace App;

class Config
{

    use Singleton;

    private $config_file;

    public function __construct($config_file = 'config')
    {
        $this->config_file = $config_file . '.php';
        include_once $this->config_file;
        $this->data = new ConfigItem($data);
    }

    public function __get($k)
    {
        if (is_array($this->data->$k)){
            return new ConfigItem($this->data->$k);
        } else {
            return $this->data->$k;
        }
    }

    public function save()
    {
        $config_string = "<?php\r\n";
        foreach ($this->data->data as $k=>$v){
            $config_string .= "\$data['" . $k . "'] = " . var_export($v, TRUE) . ";\r\n";
        }
        return file_put_contents($this->config_file, $config_string);
    }

}