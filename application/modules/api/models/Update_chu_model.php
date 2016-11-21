<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/10/2016
 * Time: 12:04 AM
 */
class Update_chu_model extends BF_Model
{

    public function __construct()
    {
        parent::__construct();
        $CI =& get_instance();
        $CI->load->model('E_chu', 'e_chu');
        $CI->load->model('E_chu_session', 'e_chu_session');
    }

    protected $response_code = array(
        "success" => array(1, "Success"),
        "missing" => array(10, "Missing parameters"),
        "invalid_params" => array(30, "invalid params"),
        "invalid_session" => array(20, "Invalid session"),
        "unknow" => array(40, "unknow error"),
    );

    public function run($session, $name, $phone)
    {
        if ($session === null || $name === null || $phone === null) {
            $arr = array(
                "code" => $this->response_code["missing"][0],
                "message" => $this->response_code["missing"][1]
            );
            return $arr;
        } else {
            $chu = $this->e_chu_session->check_session($session)->find_all();
            if ($chu) {
                $chu = $chu[0];
                if($name == ""){
                    $arr = array(
                        "code" => $this->response_code["invalid_params"][0],
                        "message" => $this->response_code["invalid_params"][1]
                    );
                    return $arr;
                }else{
                    if($this->e_chu->update(array("id" => $chu->id), array("name" => $name,"phone"=>$phone), array("id"))){
                        $arr = array(
                            "code" => $this->response_code["success"][0],
                            "message" => $this->response_code["success"][1],
                        );
                        return $arr;
                    }else{
                        $arr = array(
                            "code" => $this->response_code["unknow"][0],
                            "message" => $this->response_code["unknow"][1],
                        );
                        return $arr;
                    }
                }
            } else {
                $arr = array(
                    "code" => $this->response_code["invalid_session"][0],
                    "message" => $this->response_code["invalid_session"][1],
                );
                return $arr;
            }
        }
    }
}
