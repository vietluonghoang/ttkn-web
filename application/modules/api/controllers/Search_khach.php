<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/7/2016
 * Time: 1:01 PM
 */

class Search_khach extends Api_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('search_khach_model','model');
    }

    public function v1()
    {
        //code here
        $session = $this->input->get_post('session');
        $name = $this->input->get_post('name');
        $giayto = $this->input->get_post('giayto');
        $address = $this->input->get_post('address');
        $phone = $this->input->get_post('phone');
        $note = $this->input->get_post('note');
        $weekly = $this->input->get_post('weekly');

        $arr = $this->model->run($session,$name,$giayto,$address,$phone,$note,$weekly);

        Template::set('data_json', $arr);
        Template::set('page_title', 'data');
        Template::set_view('json');
        Template::render();

        $this->api_log->write_log();
    }
}