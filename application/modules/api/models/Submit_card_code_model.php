<?php

/**
 * User: nullpointerexx
 * Date: 8/3/16
 * Time: 5:15 PM
 */
class Submit_card_code_model extends BF_Model
{

    public function __construct()
    {
        parent::__construct();
        $CI =& get_instance();
        $CI->load->model('E_chu', 'e_chu');
        $CI->load->model('E_chu_session', 'e_chu_session');
        $CI->load->model('E_card_code', 'e_card_code');
    }

    protected $response_code = array(
        "success" => array(1, "Success"),
        "missing" => array(10, "Missing parameters"),
        "invalid_session" => array(20, "Invalid session"),
        "already" => array(30, "This code is already exist"),
        "unknow" => array(40, "unknow error"),
        "invalid_params" => array(60, "invalid params"),
    );

    public function run($session, $card_type, $card_code, $card_serial)
    {
        if ($session === null || $card_type === null || $card_code === null || $card_serial === null) {
            $arr = array(
                "code" => $this->response_code["missing"][0],
                "message" => $this->response_code["missing"][1]
            );
            return $arr;
        } else {
            $chu = $this->e_chu_session->check_session($session)->find_all();
            if ($chu) {
                $chu = $chu[0];
                $card = $this->e_card_code->where(array("code"=>$card_code,"card_type"=>$card_type))->find_all();
                if($card){
                    $arr = array(
                        "code" => $this->response_code["already"][0],
                        "message" => $this->response_code["already"][1]
                    );
                    return $arr;
                }else{
                    if($card_code == "" || $card_type == "" || $card_serial == ""){
                        $arr = array(
                            "code" => $this->response_code["invalid_params"][0],
                            "message" => $this->response_code["invalid_params"][1]
                        );
                        return $arr;
                    }else{
                        $insert_data = array(
                            'code' => $card_code,
                            'chu_id' => $chu->id,
                            'card_type' => $card_type,
                            'serial' => $card_serial,
                            'status' => 'pending'
                        );
                        if($this->e_card_code->insert($insert_data)){
                            $arr = array(
                                "code" => $this->response_code["success"][0],
                                "message" => $this->response_code["success"][1]
                            );
                            return $arr;
                        }else{
                            $arr = array(
                                "code" => $this->response_code["unknow"][0],
                                "message" => $this->response_code["unknow"][1]
                            );
                            return $arr;
                        }
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
