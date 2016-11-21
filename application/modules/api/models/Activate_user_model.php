<?php

/**
 * Created by PhpStorm.
 * User: nullpointerexx
 * Date: 3/2/16
 * Time: 9:33 AM
 */
class Activate_user_model extends BF_Model
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
        "target_is_admin" => array(30, "Target is admin"),
        "target_not_found" => array(40, "Target not found")
    );

    public function run($session, $target_id,$value)
    {
        if ($session === null || $target_id === null) {
            $arr = array(
                "code" => $this->response_code["missing"][0],
                "message" => $this->response_code["missing"][1]
            );
            return $arr;
        } else {
            $target = $this->e_chu->find_by("id", $target_id);
            if($target){
                if ($target->role == 1) {
                    $arr = array(
                        "code" => $this->response_code["target_is_admin"][0],
                        "message" => $this->response_code["target_is_admin"][1]
                    );
                    return $arr;
                } else {
                    $chu = $this->e_chu_session->check_session($session)->find_all();
                    if ($chu) {
                        $chu = $chu[0];
                        $this->e_chu->update(array("id" => $target_id), array("status" => $value), array("id"));
                        $arr = array(
                            "code" => $this->response_code["success"][0],
                            "message" => $this->response_code["success"][1],
                        );
                        return $arr;
                    } else {
                        $arr = array(
                            "code" => $this->response_code["invalid_session"][0],
                            "message" => $this->response_code["invalid_session"][1],
                        );
                        return $arr;
                    }
                }
            }else{
                $arr = array(
                    "code" => $this->response_code["target_not_found"][0],
                    "message" => $this->response_code["target_not_found"][1],
                );
                return $arr;
            }
        }
    }
}
