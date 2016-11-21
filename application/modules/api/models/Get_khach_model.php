<?php

/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/12/2016
 * Time: 10:41 PM
 */
class Get_khach_model extends BF_Model
{

    public function __construct()
    {
        parent::__construct();
        $CI =& get_instance();
        $CI->load->model('E_khach', 'e_khach');
        $CI->load->model('E_khach_name', 'e_khach_name');
        $CI->load->model('E_khach_paper', 'e_khach_paper');
        $CI->load->model('E_khach_address', 'e_khach_address');
        $CI->load->model('E_khach_note', 'e_khach_note');
        $CI->load->model('E_khach_phone', 'e_khach_phone');
        $CI->load->model('E_khach_image', 'e_khach_image');
        $CI->load->model('E_chu_khach', 'e_chu_khach');
        $CI->load->model('E_chu_session', 'e_chu_session');
        $CI->load->model('Process_khach_data', 'process_khach_data');
        $CI->load->helper('image_handler_helper');
    }

    protected $response_code = array(
        "success" => array(1, "Success"),
        "missing" => array(10, "Missing parameters"),
        "invalid_session" => array(20, "Invalid session"),
        "permission_denied" => array(30, "Permission Denied")
    );

    public function run($session, $id)
    {
        if ($session === null || $id === null) {
            $arr = array(
                "code" => $this->response_code["missing"][0],
                "message" => $this->response_code["missing"][1]
            );
            return $arr;
        } else {
            $chu = $this->e_chu_session->check_session($session)->find_all();
            if ($chu) {
                $khach_data = $this->e_khach->select("bf_khach.id")->where("bf_khach.id",$id)->find_all();
                $data = $this->process_khach_data->run($khach_data);
                $arr = array(
                    "code" => $this->response_code["success"][0],
                    "message" => $this->response_code["success"][1],
                    "data" => $data[0]
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
    }
}
