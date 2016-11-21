<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/13/2016
 * Time: 1:03 AM
 */

class Update_khach_remove_image extends Api_Controller
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
        $id_list = $this->input->post('data');
        $action = "remove_image";

        $arr = $this->model->run($session,$target_id,$action,$id_list);

        Template::set('data_json', $arr);
        Template::set('page_title', 'data');
        Template::set_view('json');
        Template::render();

        $this->api_log->write_log();
    }
}