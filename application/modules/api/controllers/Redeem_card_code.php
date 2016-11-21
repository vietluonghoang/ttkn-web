<?php
/**
 * User: nullpointerexx
 * Date: 8/4/16
 * Time: 4:31 PM
 */

class Redeem_card_code extends Api_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('redeem_card_code_model','model');
    }

    public function v1()
    {
        //code here
        $session = $this->input->get_post('session');
        $card_id = $this->input->get_post('card_id');
        $type = $this->input->get_post('type');

        $arr = $this->model->run($session,$card_id,$type);

        Template::set('data_json', $arr);
        Template::set('page_title', 'data');
        Template::set_view('json');
        Template::render();

        $this->api_log->write_log();
    }
}