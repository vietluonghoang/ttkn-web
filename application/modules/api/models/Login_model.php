<?php

/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/15/2016
 * Time: 9:20 PM
 */
class Login_model extends BF_Model
{
    public function __construct()
    {
        parent::__construct();
        $CI =& get_instance();
        $CI->load->model('E_chu', 'e_chu');
        $CI->load->model('E_chu_session', 'e_chu_session');
        $this->load->library('curl');
        $this->config->load('config');
    }

    private $additional_curl_opts = [CURLOPT_SSL_VERIFYPEER => 0, CURLOPT_TIMEOUT => 300];

    protected $response_code = array(
        "success" => array(1, "Success"),
        "missing" => array(10, "Missing parameters"),
        "invalid_fb" => array(20, "Invalid facebook"),
        "unknown" => array(30, "Unknown error"),
    );

    public function run($facebook_id,$access_token,$ip_address)
    {
        $new_session = str_replace('.', '', uniqid('', TRUE));
        $session_expired = date('Y-m-d H:i:s', time() + (30 * 24 * 60 * 60));
        if ($facebook_id === null || $access_token === null) {
            $arr = array(
                "code" => $this->response_code["missing"][0],
                "message" => $this->response_code["missing"][1]
            );
            return $arr;
        } else {
            //find facebook account
//get facebook info
            $graph_api_ver = 'v2.5';
            $url = "https://graph.facebook.com/" . $graph_api_ver . "/me";
            $params = array(
                'access_token' => $access_token,
                'fields' => 'email,gender,first_name,last_name,picture'
            );
            $result = json_decode($this->curl->_simple_call('get', $url, $params, $this->additional_curl_opts), TRUE);
            if (isset($result['error']) || !$result) {
                $arr = array(
                    "code" => $this->response_code["invalid_fb"][0],
                    "message" => $this->response_code["invalid_fb"][1],
                );
                return $arr;
            }
            $url = "https://graph.facebook.com/" . $graph_api_ver . "/" . $facebook_id . "/picture";
            $params = array(
                'access_token' => $access_token,
                'width' => '2048'
            );
            $img_result = $this->curl->_simple_call('get', $url, $params, $this->additional_curl_opts);
            if (isset($img_result['error']) || !$img_result) {
                $arr = array(
                    "code" => $this->response_code["invalid_fb"][0],
                    "message" => $this->response_code["invalid_fb"][1],
                );
                return $arr;
            }
            $content_type = $this->curl->info["content_type"];
            if ($content_type == "image/gif") {
                $ext = "gif";
            }
            if ($content_type == "image/png" || $content_type == "image/x-png") {
                $ext = "png";
            }
            if ($content_type == "image/jpeg" || $content_type == "image/pjpeg") {
                $ext = "jpg";
            }
            $chu=$this->e_chu->where(array("email"=>$result["email"],"fb_id"=>$facebook_id))->find_all();
            if($chu[0]){
                $chu=$chu[0];
                if (!is_dir($image_dir = $this->config->item('image_path') . $chu->id)) {
                    @mkdir($image_dir, 0777, TRUE);
                }
                $file_name = md5(uniqid(mt_rand())) . "." . $ext;
                $current_time = date('Y-m-d H:i:s', time());
                file_put_contents($image_dir . "/" . $file_name, $img_result);
                $data = array(
                    'fb_id' => $facebook_id,
                    'fb_token' => $access_token,
                    'email' => $result["email"],
                    'name' => $result["first_name"] . $result["last_name"],
                    'last_login' => $current_time,
                    'ava'=>$image_dir . "/" . $file_name
                );
                $this->e_chu->update($chu->id,$data);
                $this->e_chu_session->insert(array(
                    "chu_session"=>$new_session,
                    "chu_id"=>$chu->id,
                    "expired"=>$session_expired,
                    "ip_address"=> $ip_address
                ));
                $arr = array(
                    "code" => $this->response_code["success"][0],
                    "message" => $this->response_code["success"][1],
                    "session"=>$new_session,
                    "role"=>$chu->role,
                    "expired"=>$chu->expired
                );
                return $arr;
            }else{
                $current_time = date('Y-m-d H:i:s', time());
                $data = array(
                    'fb_id' => $facebook_id,
                    'fb_token' => $access_token,
                    'email' => $result["email"],
                    'name' => $result["first_name"] . " " . $result["last_name"],
                    'last_login' => $current_time,
                    'status' => "active",
                    'role' => 0,
                    "expired"=>$current_time
                );
                if($chu = $this->e_chu->insert($data)){
                    if (!is_dir($image_dir = $this->config->item('image_path') . $chu)) {
                        @mkdir($image_dir, 0777, TRUE);
                    }
                    $file_name = md5(uniqid(mt_rand())) . "." . $ext;

                    file_put_contents($image_dir . "/" . $file_name, $img_result);
                    $this->e_chu->update($chu,array(
                        "ava" => $image_dir . "/" . $file_name
                    ));
                    $this->e_chu_session->insert(array(
                        "chu_session"=>$new_session,
                        "chu_id"=>$chu,
                        "expired"=>$session_expired,
                        "ip_address"=> $ip_address
                    ));
                    $arr = array(
                        "code" => $this->response_code["success"][0],
                        "message" => $this->response_code["success"][1],
                        "session"=>$new_session,
                        "role"=>0,
                        "expired"=>null
                    );
                    return $arr;
                }else{
                    $arr = array(
                        "code" => $this->response_code["unknown"][0],
                        "message" => $this->response_code["unknown"][1],
                    );
                    return $arr;
                }
            }
        }
    }
}