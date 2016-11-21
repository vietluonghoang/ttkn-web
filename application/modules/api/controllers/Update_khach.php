<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/7/2016
 * Time: 12:56 PM
 */

class Update_khach extends Api_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('update_khach_model','model');
    }

    public function v1()
    {
        //code here
        $session = $this->input->get_post('session');
        $target_id = $this->input->get_post('target_id');
        $name = $this->input->get_post('name');
        $giay_to = $this->input->get_post('giay_to');
        $dia_chi = $this->input->get_post('dia_chi');
        $image = $this->input->get_post('image');
        $note = $this->input->get_post('note');
        $phone = $this->input->get_post('phone');

        $arr = $this->model->run($session,$name,$giay_to,$dia_chi,$image,$note,$phone);

        Template::set('data_json', $arr);
        Template::set('page_title', 'data');
        Template::set_view('json');
        Template::render();

        $this->api_log->write_log();
    }
}