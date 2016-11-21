<?php

/**
 * User: nullpointerexx
 * Date: 8/3/16
 * Time: 5:15 PM
 */
class Get_card_code_list_model extends BF_Model
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
        "permission_denied" => array(30, "Permission Denied")
    );

    public function run($session,$chu_name,$status)
    {
        if ($session === null) {
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
                    $condition_where = array();
                    $qry = $this->e_card_code->with_chu()->select("bf_card_code.id,code,card_type,serial,bf_chu.name,bf_card_code.created_on,bf_card_code.chu_id,bf_card_code.status");
                    if ($chu_name != "") {
                        $condition["bf_chu.name"] = $chu_name;
                        $qry = $qry->like($condition);
                    }
                    if ($status != "") {
                        $condition_where["bf_card_code.status"] = $status;
                        $qry = $qry->where($condition_where);
                    }
                    $data = $qry->find_all();

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
