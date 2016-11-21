<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/31/2016
 * Time: 1:43 AM
 */

class Get_khach extends Api_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('get_khach_model','model');
    }

    public function v1()
    {
        //code here
        $session = $this->input->get_post('session');
        $id = $this->input->get_post('id');

        $arr = $this->model->run($session,$id);

        Template::set('data_json', $arr);
        Template::set('page_title', 'data');
        Template::set_view('json');
        Template::render();

        $this->api_log->write_log();
    }
}