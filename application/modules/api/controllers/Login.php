<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/15/2016
 * Time: 9:43 PM
 */
class Login extends Api_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('login_model','model');
    }

    public function v1()
    {
        //code here
        $fb_id = $this->input->get_post('fb_id');
        $fb_token = $this->input->get_post('fb_token');
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
            $ip_address = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ip_address = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $ip_address = $_SERVER['REMOTE_ADDR'];
        }

        $arr = $this->model->run($fb_id,$fb_token,$ip_address);

        Template::set('data_json', $arr);
        Template::set('page_title', 'data');
        Template::set_view('json');
        Template::render();

        $this->api_log->write_log();
    }
}

