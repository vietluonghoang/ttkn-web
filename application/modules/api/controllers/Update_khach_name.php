<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/7/2016
 * Time: 12:56 PM
 */

class Update_khach_name extends Api_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('update_khach_model','model');
    }

    public function v1()
    {
        //code here
        $session = $this->input->post('session');
        $target_id = $this->input->post('target_id');
        $data = $this->input->post('data');
        $action = "name";

        $arr = $this->model->run($session,$target_id,$action,$data);

        Template::set('data_json', $arr);
        Template::set('page_title', 'data');
        Template::set_view('json');
        Template::render();

        $this->api_log->write_log();
    }
}