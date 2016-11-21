<?php defined('BASEPATH') || exit('No direct script access allowed');
/**
 * User: nullpointerexx
 * Date: 8/1/16
 * Time: 6:05 PM
 */

class Deactivate_user extends Api_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('activate_user_model','model');
    }

    public function v1()
    {
        //code here
        $session = $this->input->get_post('session');
        $target_id = $this->input->get_post('target_id');

        $arr = $this->model->run($session,$target_id,'deactive');

        Template::set('data_json', $arr);
        Template::set('page_title', 'data');
        Template::set_view('json');
        Template::render();

        $this->api_log->write_log();
    }
}
