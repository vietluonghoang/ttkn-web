<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/30/2016
 * Time: 3:01 AM
 */

class List_khach extends Api_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('List_khach_model','model');
    }

    public function v1()
    {
        //code here
        $session = $this->input->get_post('session');
        $target = $this->input->get_post('target');

        $arr = $this->model->run($session,$target);

        Template::set('data_json', $arr);
        Template::set('page_title', 'data');
        Template::set_view('json');
        Template::render();

        $this->api_log->write_log();
    }
}