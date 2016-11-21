<?php defined('BASEPATH') || exit('No direct script access allowed');
/**
 * User: nullpointerexx
 * Date: 8/1/16
 * Time: 6:05 PM
 */

class Get_card_code_list extends Api_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('get_card_code_list_model','model');
    }

    public function v1()
    {
        //code here
        $session = $this->input->get_post('session');
        $chu_name = $this->input->get_post('chu_name');
        $status = $this->input->get_post('status');

        $arr = $this->model->run($session,$chu_name,$status);

        Template::set('data_json', $arr);
        Template::set('page_title', 'data');
        Template::set_view('json');
        Template::render();

        $this->api_log->write_log();
    }
}