<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/7/2016
 * Time: 1:05 PM
 */

class Search_chu_model extends BF_Model
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
        "invalid_session" => array(20, "Invalid session"),
        "permission_denied" => array(30, "Permission Denied")
    );

    public function run($session,$id,$email,$name,$phone)
    {
        if ($session === null || $id === null || $email === null || $name === null || $phone === null) {
            $arr = array(
                "code" => $this->response_code["missing"][0],
                "message" => $this->response_code["missing"][1]
            );
            return $arr;
        } else {
            $chu = $this->e_chu_session->check_session($session)->find_all();
            if ($chu) {
                $chu = $chu[0];
                if($chu->role == 0){
                    $arr = array(
                        "code" => $this->response_code["permission_denied"][0],
                        "message" => $this->response_code["permission_denied"][1]
                    );
                    return $arr;
                }else{
                    $condition = array();
                    if($id != ""){
                        $condition["id"] = $id;
                    }
                    if($email != ""){
                        $condition["email"] = $email;
                    }
                    if($name != ""){
                        $condition["name"] = $name;
                    }
                    if($email != ""){
                        $condition["phone"] = $phone;
                    }
                    $data = $this->e_chu->select("*")->like($condition)->find_all();
                    foreach ($data as &$item){
                        $item->ava = ih_image($item->ava, 256, 256, true, null, 0, true);
                    }
                    $arr = array(
                        "code" => $this->response_code["success"][0],
                        "message" => $this->response_code["success"][1],
                        "data" => $data
                    );
                    return $arr;
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
