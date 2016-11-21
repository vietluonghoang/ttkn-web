<?php defined('BASEPATH') || exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/7/2016
 * Time: 4:59 PM
 */

class Update_chu extends Api_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('update_chu_model','model');
    }

    public function v1()
    {
        //code here
        $session = $this->input->get_post('session');
        $name = $this->input->get_post('name');
        $phone = $this->input->get_post('phone');

        $arr = $this->model->run($session,$name,$phone);

        Template::set('data_json', $arr);
        Template::set('page_title', 'data');
        Template::set_view('json');
        Template::render();

        $this->api_log->write_log();
    }
}