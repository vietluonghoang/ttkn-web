<?php defined('BASEPATH') || exit('No direct script access allowed');
/**
 * User: nullpointerexx
 * Date: 8/4/16
 * Time: 4:43 PM
 */
class Add_khach extends Api_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('add_khach_model','model');
    }

    public function v1()
    {
        //code here
        $session = $this->input->get_post('session');
        $name = $this->input->get_post('name');
        $giay_to = $this->input->get_post('paper');
        $dia_chi = $this->input->get_post('address');
        $note = $this->input->get_post('note');
        $phone = $this->input->get_post('phone');

        $arr = $this->model->run($session,$name,$giay_to,$dia_chi,$note,$phone,$_FILES);

        Template::set('data_json', $arr);
        Template::set('page_title', 'data');
        Template::set_view('json');
        Template::render();

        $this->api_log->write_log();
    }
}