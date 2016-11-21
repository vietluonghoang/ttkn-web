<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/7/2016
 * Time: 3:13 PM
 */

class Redeem_card_code_model extends BF_Model
{

    public function __construct()
    {
        parent::__construct();
        $CI =& get_instance();
        $CI->load->model('E_chu', 'e_chu');
        $CI->load->model('E_chu_session', 'e_chu_session');
        $CI->load->model('E_card_code', 'e_card_code');
    }
    protected $redeem_type = array(
        "1"=>30,
        "2"=>60,
        "3"=>90
    );
    protected $response_code = array(
        "success" => array(1, "Success"),
        "missing" => array(10, "Missing parameters"),
        "invalid_session" => array(20, "Invalid session"),
        "invalid_type" => array(30, "Invalid type"),
        "invalid_card_id" => array(40, "Invalid card id"),
        "unknow_error" => array(50, "Unknow error")
    );

    public function run($session, $card_id, $type)
    {
        if ($session === null || $card_id === null || $type === null) {
            $arr = array(
                "code" => $this->response_code["missing"][0],
                "message" => $this->response_code["missing"][1]
            );
            return $arr;
        } else {
            $chu = $this->e_chu_session->check_session($session)->find_all();
            if ($chu) {
                $chu = $chu[0];
                $card_data = $this->e_card_code->where("id",$card_id)->find_all();
                if(!$card_data || !is_numeric($card_id)){
                    $arr = array(
                        "code" => $this->response_code["invalid_card_id"][0],
                        "message" => $this->response_code["invalid_card_id"][1]
                    );
                    return $arr;
                }else{
                    if($type === "1" || $type === "2" || $type === "3"){
                        $current_time = date('Y-m-d H:i:s', time());
                        if($chu->expired > $current_time || $chu->expired == null){
                            $expired = date('Y-m-d H:i:s', strtotime($chu->expired) + $this->redeem_type[$type]*24*60*60);
                        }else{
                            $expired = date('Y-m-d H:i:s', time() + $this->redeem_type[$type]*24*60*60);
                        }
                        $this->e_chu->update(array("id" => $card_data[0]->chu_id), array("expired" => $expired), array("id"));
                        if($this->e_card_code->update(array("id" => $card_id), array("status" => "active","active_by"=>$chu->id), array("id"))){
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
                    }else {
                        $arr = array(
                            "code" => $this->response_code["invalid_type"][0],
                            "message" => $this->response_code["invalid_type"][1]
                        );
                        return $arr;
                    }
                }
            } else {
                var_dump($this->db->last_query());
                $arr = array(
                    "code" => $this->response_code["invalid_session"][0],
                    "message" => $this->response_code["invalid_session"][1],
                );
                return $arr;
            }
        }
    }
}
