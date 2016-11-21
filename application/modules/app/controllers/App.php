<?php

/**
 * App controller
 */
class App extends Front_Controller
{
    protected $permissionCreate = 'App.App.Create';
    protected $permissionDelete = 'App.App.Delete';
    protected $permissionEdit = 'App.App.Edit';
    protected $permissionView = 'App.App.View';

    public function __construct()
    {
        parent::__construct();
        $this->lang->load('app');
        $this->load->model('api/E_khach', 'e_khach');
        $this->load->model('api/E_chu_khach', 'e_chu_khach');
        $this->load->model('api/E_chu', 'e_chu');
        $this->load->model('api/E_khach_image', 'e_image');
        $this->load->model('api/E_card_code', 'e_card_code');
        $this->load->model('api/E_khach_name', 'e_ten_khach');
        $this->load->model('api/E_khach_paper', 'e_giay_to');
        $this->load->model('api/E_khach_address', 'e_dia_chi');
        $this->load->model('api/E_khach_phone', 'e_phone');
        $this->load->model('api/E_khach_note', 'e_ghi_chu');
        $this->load->model('api/E_chu_session', 'e_chu_session');
        $this->load->model('api/login_model', 'login_model');
        $this->load->model('api/process_khach_data', 'process_khach_data');
        $this->load->model('api/list_khach_model', 'list_khach_model');
        $this->load->model('api/search_khach_model', 'search_khach_model');
        $this->load->model('api/submit_card_code_model', 'submit_card_code_model');
        $this->load->model('api/add_khach_model', 'add_khach_model');
        $this->load->model('api/get_khach_model', 'get_khach_model');
        $this->load->model('api/search_chu_model', 'search_chu_model');
        $this->load->model('api/get_card_code_list_model', 'get_card_code_list_model');
        $this->load->model('api/redeem_card_code_model', 'redeem_card_code_model');
        Assets::add_module_js('app', 'app.js');
        Assets::add_module_css('app', 'style.css');
        Template::set_theme("app");
    }

    public function index()
    {
        if (isset($_SESSION["logged"]) && $_SESSION["logged"]) {
            redirect('/app/view_khach');
        } else {
            redirect('/app/start');
        }
    }

    public function start()
    {
        Template::set_view('start');
        Template::render();
    }

    public function add_khach()
    {
        if (!isset($_SESSION["logged"]) || $_SESSION["logged"] == false) {
            redirect('/app/start');
        }
        $current_time = date('Y-m-d H:i:s', time());
        if ($_SESSION["expired"] < $current_time) {
            redirect('/app/nap_tien');
        }
        if (isset($_POST["name"])) {

            //code here
            $session = $_SESSION["chu_session"];
            $name = $this->input->get_post('name');
            $giay_to = $this->input->get_post('giay_to');
            $dia_chi = $this->input->get_post('dia_chi');
            $note = $this->input->get_post('note');
            $phone = $this->input->get_post('phone');
            $arr = $this->add_khach_model->run($session, $name, $giay_to, $dia_chi, $note, $phone, $_FILES);
            if($arr["code"] != 1){
                Template::set("notif_message",$arr["message"]);
                Template::set("notif_type","error");
            }else{
                Template::set("notif_message",$arr["message"]);
                Template::set("notif_type","success");
                redirect('/app/view_khach?m=success');
            }
        }else{
            Template::set_view('add_khach');
            Template::render();
        }

    }

    public function edit_khach()
    {
        Assets::add_js('lightbox.min.js');
        Assets::add_css('lightbox.min.css');
        if (!isset($_SESSION["logged"]) || $_SESSION["logged"] == false) {
            redirect('/app/start');
        }
        $current_time = date('Y-m-d H:i:s', time());
        if ($_SESSION["expired"] < $current_time) {
            redirect('/app/nap_tien');
        }
        $session = $_SESSION["chu_session"];
        $chu = $this->e_chu_session->check_session($session)->find_all();
        $chu = $chu[0];
        if (isset($_GET["id"])) {
            $id = $_GET["id"];
        }
        $data = $this->get_khach_model->run($_SESSION["chu_session"], $id);
        if ($data["code"] == 1) {
            Template::set('khach', $data["data"]);
            Template::set('chu', $chu);
        } else {
            Template::set('khach', null);
        }
        var_dump($data);die;
        Template::set_view('edit_khach');
        Template::render();
    }

    public function update_khach_info_name(){
        $this->load->model('api/update_khach_model', 'update_khach_model');
        $session = $_SESSION["chu_session"];
        $method = $_GET["method"];
        $name = $_GET["name"];
        $target_id = $_GET["khach"];
        $action = "name";
        if($method == "add"){
            $data = '[{"method":"add","value":"'.$name.'"}]';
        }elseif($method == "delete"){
            $data = '[{"method":"delete","id":"'.$name.'"}]';
        }
        $arr = $this->update_khach_model->run($session,$target_id,$action,$data);
        if($arr["code"]==1){
            header('Location: ' . $_SERVER['HTTP_REFERER']);
        }
    }

    public function update_khach_info_diachi(){
        $this->load->model('api/update_khach_model', 'update_khach_model');
        $session = $_SESSION["chu_session"];
        $method = $_GET["method"];
        $name = $_GET["diachi"];
        $target_id = $_GET["khach"];
        $action = "diachi";
        if($method == "add"){
            $data = '[{"method":"add","value":"'.$name.'"}]';
        }elseif($method == "delete"){
            $data = '[{"method":"delete","id":"'.$name.'"}]';
        }
        $arr = $this->update_khach_model->run($session,$target_id,$action,$data);
        if($arr["code"]==1){
            header('Location: ' . $_SERVER['HTTP_REFERER']);
        }
    }

    public function update_khach_info_phone(){
        $this->load->model('api/update_khach_model', 'update_khach_model');
        $session = $_SESSION["chu_session"];
        $method = $_GET["method"];
        $name = $_GET["phone"];
        $target_id = $_GET["khach"];
        $action = "phone";
        if($method == "add"){
            $data = '[{"method":"add","value":"'.$name.'"}]';
        }elseif($method == "delete"){
            $data = '[{"method":"delete","id":"'.$name.'"}]';
        }
        $arr = $this->update_khach_model->run($session,$target_id,$action,$data);
        if($arr["code"]==1){
            header('Location: ' . $_SERVER['HTTP_REFERER']);
        }
    }

    public function update_khach_info_note(){
        $this->load->model('api/update_khach_model', 'update_khach_model');
        $session = $_SESSION["chu_session"];
        $method = $_GET["method"];
        $name = $_GET["note"];
        $target_id = $_GET["khach"];
        $action = "note";
        if($method == "add"){
            $data = '[{"method":"add","value":"'.$name.'"}]';
        }elseif($method == "delete"){
            $data = '[{"method":"delete","id":"'.$name.'"}]';
        }
        $arr = $this->update_khach_model->run($session,$target_id,$action,$data);
        if($arr["code"]==1){
            header('Location: ' . $_SERVER['HTTP_REFERER']);
        }
    }

    public function update_khach_info_giayto(){
        $this->load->model('api/update_khach_model', 'update_khach_model');
        $session = $_SESSION["chu_session"];
        $method = $this->input->get_post("method");
        $target_id = $this->input->get_post("khach");
        $action = "giayto";
        if($method == "add"){
            $type = $_POST["giayto_type"];
            $value = $_POST["giayto_value"];
            $data = '[{"method":"add","value":"'.$value.'","type":"'.$type.'"}]';
        }elseif($method == "delete"){
            $id = $_GET["id"];
            $data = '[{"method":"delete","id":"'.$id.'"}]';
        }
        $arr = $this->update_khach_model->run($session,$target_id,$action,$data);
        if($arr["code"]==1){
            header('Location: ' . $_SERVER['HTTP_REFERER']);
        }
    }

    public function update_khach_info_add_img(){
        $this->load->model('api/update_khach_model', 'update_khach_model');
        $session = $_SESSION["chu_session"];
        $data = $_FILES;
        $target_id = $_POST["khach"];
        $action = "add_image";
        $arr = $this->update_khach_model->run($session,$target_id,$action,$data);
        if($arr["code"]==1){
            header('Location: ' . $_SERVER['HTTP_REFERER']);
        }
    }

    public function update_khach_info_remove_img(){
        $this->load->model('api/update_khach_model', 'update_khach_model');
        $session = $_SESSION["chu_session"];
        $data = $_POST["data"];
        $target_id = $_POST["khach"];
        $action = "remove_image";
        $arr = $this->update_khach_model->run($session,$target_id,$action,$data);
        if($arr["code"]==1){
            var_dump($arr);
        }
    }

    public function view_khach()
    {
        if (!isset($_SESSION["logged"]) || $_SESSION["logged"] == false) {
            redirect('/app/start');
        }
        $current_time = date('Y-m-d H:i:s', time());
        if ($_SESSION["expired"] < $current_time) {
            redirect('/app/nap_tien');
        }
        $session = $_SESSION["chu_session"];
        $data = $this->list_khach_model->run($session, null);
        if ($data["code"] == 1) {
            Template::set('khach', $data["data"]);
        } else {
            Template::set('khach', null);
        }
        Template::set_view('view_khach');
        Template::render();
    }

    public function search_khach()
    {
        if (!isset($_SESSION["logged"]) || $_SESSION["logged"] == false) {
            redirect('/app');
        }
        $current_time = date('Y-m-d H:i:s', time());
        if ($_SESSION["expired"] < $current_time) {
            redirect('/app/nap_tien');
        }
        $session = $_SESSION["chu_session"];
        $name = "";
        $giay_to = "";
        $address = "";
        $phone = "";
        $note = "";
        if (isset($_POST["name"])) {
            $name = $_POST["name"];
        }
        if (isset($_POST["giayto"])) {
            $giay_to = $_POST["giayto"];
        }
        if (isset($_POST["address"])) {
            $address = $_POST["address"];
        }
        if (isset($_POST["phone"])) {
            $phone = $_POST["phone"];
        }
        if (isset($_POST["note"])) {
            $note = $_POST["note"];
        }
        $data = $this->search_khach_model->run($session, $name, $giay_to, $address, $phone, $note,false);
        if ($data["code"] == 1) {
            Template::set('khach', $data["data"]);
        } else {
            Template::set('khach', null);
        }
        Template::set_view('search_khach');
        Template::render();
    }

    public function weekly(){
        if (!isset($_SESSION["logged"]) || $_SESSION["logged"] == false) {
            redirect('/app');
        }
        $current_time = date('Y-m-d H:i:s', time());
        if ($_SESSION["expired"] < $current_time) {
            redirect('/app/nap_tien');
        }
        $session = $_SESSION["chu_session"];
        $name = "";
        $giay_to = "";
        $address = "";
        $phone = "";
        $note = "";
        $data = $this->search_khach_model->run($session, $name, $giay_to, $address, $phone, $note, true);
        if ($data["code"] == 1) {
            Template::set('khach', $data["data"]);
        } else {
            Template::set('khach', null);
        }
        Template::set_view('view_khach');
        Template::render();
    }

    public function khach()
    {
        if (!isset($_SESSION["logged"]) || $_SESSION["logged"] == false) {
            redirect('/app');
        }
        $current_time = date('Y-m-d H:i:s', time());
        if ($_SESSION["expired"] < $current_time) {
            redirect('/app/nap_tien', 'refresh');
        }
        $session = $_SESSION["chu_session"];
        $chu = $this->e_chu_session->check_session($session)->find_all();
        if (isset($_GET["id"])) {
            $id = $_GET["id"];
            $data = $this->get_khach_model->run($session, $id);
            if ($data["code"] == 1) {
                Template::set('khach', $data["data"]);
                $is_connect = $this->e_chu_khach->where(array("khach_id" => $id, "chu_id" => $chu[0]->id))->find_all();
                Template::set('connect', $is_connect);
            } else {
                Template::set('khach', null);
            }
            Template::set_view('khach');
            Template::render();
            if (isset($_GET["connect"])) {
                if ($_GET["connect"] == "true") {
                    $is_connect = $this->e_chu_khach->where(array("khach_id" => $id, "chu_id" => $chu[0]->id))->find_all();
                    if (!$is_connect) {
                        $this->e_chu_khach->insert(array("khach_id" => $id, "chu_id" => $chu[0]->id, "status" => "active"));
                    }
                } else if ($_GET["connect"] == "false") {
                    $this->e_chu_khach->delete_where(array("khach_id" => $id, "chu_id" => $chu[0]->id));
                }
                redirect('/app/khach?id=' . $_GET["id"], 'refresh');
            }
            if (isset($_GET["report"])) {
                if ($_GET["report"] == "true") {
                    $this->e_chu_khach->update(array("khach_id" => $id, "chu_id" => $chu[0]->id), array("status" => "reported"), array("khach_id", "chu_id"));
                } else if ($_GET["report"] == "false") {
                    $this->e_chu_khach->update(array("khach_id" => $id, "chu_id" => $chu[0]->id), array("status" => "active"), array("khach_id", "chu_id"));
                }
                redirect('/app/khach?id=' . $_GET["id"], 'refresh');
            }
        }
    }

    public function login()
    {
        if (isset($_SESSION["logged"]) && $_SESSION["logged"]) {
            redirect('/app/view_khach');
        }

        if (isset($_GET["fb_id"])) {
            if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
                $ip_address = $_SERVER['HTTP_CLIENT_IP'];
            } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
                $ip_address = $_SERVER['HTTP_X_FORWARDED_FOR'];
            } else {
                $ip_address = $_SERVER['REMOTE_ADDR'];
            }
            $data = $this->login_model->run($_GET["fb_id"], $_GET["fb_token"], $ip_address);
            if ($data["code"] == 1) {
                $_SESSION["logged"] = true;
                $_SESSION["chu_session"] = $data["session"];
                $_SESSION["role"] = $data["role"];
                $_SESSION["expired"] = $data["expired"];
            } else {
                $_SESSION["logged"] = false;
                $_SESSION["chu_session"] = null;
                $_SESSION["expired"] = null;
            }
        }
        Template::set_view('login_app');
        Template::render();
    }

    public function logout()
    {
        $_SESSION["logged"] = false;
        $_SESSION["chu_session"] = null;
        redirect('/app/start');
    }

    public function nap_tien()
    {
        if (!isset($_SESSION["logged"]) || $_SESSION["logged"] == false) {
            redirect('/app');
        }
        if (isset($_POST["submit"])) {
            $session = $_SESSION["chu_session"];
            $card_type = $this->input->get_post('type');
            $card_code = $this->input->get_post('code');
            $card_serial = $this->input->get_post('serial');
            $this->submit_card_code_model->run($session, $card_type, $card_code, $card_serial);
            Template::set('success_code', true);
        }
        Template::set_view('nap_tien');
        Template::render();
    }

    public function redeem_code()
    {
        if (isset($_SESSION["role"]) && $_SESSION["role"] == 1) {
            $session = $_SESSION["chu_session"];
            if (isset($_GET["code"])) {
                if(isset($_GET["redeem_type"])){
                    $this->redeem_card_code_model->run($session, $_GET["code"], $_GET["redeem_type"]);
                }
            }
            $chu_name = $_GET["tenchu"];
            $status = $_GET["trangthai"];
            $data = $this->get_card_code_list_model->run($session,$chu_name,$status);
//            var_dump($this->db->last_query());die;
            if ($data["code"] == 1) {
                Template::set('code', $data["data"]);
            }
            Template::set_view('redeem_code');
            Template::render();
        } else {
            echo "Bạn ko có quyền vào trang này";
        }
    }

    public function list_chu(){
        if (isset($_SESSION["role"]) && $_SESSION["role"] == 1) {
            $session = $_SESSION["chu_session"];
            $data = $this->search_chu_model->run($session,"","","","");
            if ($data["code"] == 1) {
                Template::set('chu_data', $data["data"]);
            }
            Template::set_view('list_chu');
            Template::render();
        } else {
            echo "Bạn ko có quyền vào trang này";
        }
    }
}