<?php defined('BASEPATH') || exit('No direct script access allowed');
/**
 * User: nullpointerexx
 * Date: 8/4/16
 * Time: 4:43 PM
 */
class Submit_card_code extends Api_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('submit_card_code_model','model');
    }

    public function v1()
    {
        //code here
        $session = $this->input->get_post('session');
        $card_type = $this->input->get_post('type');
        $card_code = $this->input->get_post('code');
        $card_serial = $this->input->get_post('serial');

        $arr = $this->model->run($session,$card_type,$card_code,$card_serial);

        Template::set('data_json', $arr);
        Template::set('page_title', 'data');
        Template::set_view('json');
        Template::render();

        $this->api_log->write_log();
    }
}