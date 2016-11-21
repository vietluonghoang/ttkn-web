<?php
/**
 * User: nullpointerexx
 * Date: 8/3/16
 * Time: 5:15 PM
 */

class Add_khach_model extends BF_Model
{
    public function __construct()
    {
        parent::__construct();
        $CI =& get_instance();
        $CI->load->model('E_chu', 'e_chu');
        $CI->load->model('E_chu_session', 'e_chu_session');
        $CI->load->model('E_card_code', 'e_card_code');
        $CI->load->model('E_khach', 'e_khach');
        $CI->load->model('E_khach_name', 'e_khach_name');
        $CI->load->model('E_khach_paper', 'e_khach_paper');
        $CI->load->model('E_khach_address', 'e_khach_address');
        $CI->load->model('E_khach_note', 'e_khach_note');
        $CI->load->model('E_khach_phone', 'e_khach_phone');
        $CI->load->model('E_khach_image', 'e_khach_image');
        $CI->load->model('E_chu_khach', 'e_chu_khach');
        $this->config->load('config');
    }

    protected $response_code = array(
        "success" => array(1, "Tạo khách Thành công"),
        "missing" => array(10, "Missing parameters"),
        "invalid_session" => array(20, "Invalid session"),
        "invalid_name" => array(30, "Tên không hợp lệ"),
        "invalid_giay_to" => array(40, "Giấy tờ không hợp lệ"),
        "invalid_dia_chi" => array(50, "Địa chỉ không hợp lệ"),
        "invalid_image" => array(60, "Ảnh không hợp lệ"),
        "invalid_note" => array(70, "Ghi chú không hợp lệ"),
        "invalid_phone" => array(80, "Số điện thoại không hợp lệ"),
        "unknow_error" => array(100, "Unknow error"),
    );

    public function run($session, $name, $giay_to, $dia_chi, $note, $phone, $files)
    {
        if ($session === null || $name === null || $giay_to === null || $dia_chi === null) {
            $arr = array(
                "code" => $this->response_code["missing"][0],
                "message" => $this->response_code["missing"][1]
            );
            return $arr;
        } else {
            $chu = $this->e_chu_session->check_session($session)->find_all();
            if ($chu) {
                $chu = $chu[0];
                $name_data = json_decode($name, true);
                $giay_to_data = json_decode($giay_to, true);
                $dia_chi_data = json_decode($dia_chi, true);
                $note_data = array();
                $phone_data = array();
                if (isset($note)) {
                    $note_data = json_decode($note, true);
                }
                if (isset($phone)) {
                    $phone_data = json_decode($phone, true);
                }
                if (count($name_data) == 0) {
                    $arr = array(
                        "code" => $this->response_code["invalid_name"][0],
                        "message" => $this->response_code["invalid_name"][1]
                    );
                    return $arr;
                }
                $id = $this->e_khach->insert(array());
                $this->e_chu_khach->insert(array("khach_id"=>$id,"chu_id"=>$chu->id,"status"=>"reported"));
                foreach ($name_data as $index => $item) {
                    if (!isset($item["value"]) || (!$this->e_khach_name->insert(array("khach_id" => $id, "content" => $item["value"], "chu_id" => $chu->id)))) {
                        $arr = array(
                            "code" => $this->response_code["invalid_name"][0],
                            "message" => $this->response_code["invalid_name"][1],
                        );
                        return $arr;
                    }
                }
                foreach ($giay_to_data as $key => $item) {
                    if (!isset($item["giayto_id"]) || !isset($item["maso"]) || (!$this->e_khach_paper->insert(array("khach_id" => $id, "chu_id" => $chu->id, "paper_type_id" => $item["giayto_id"], "content" => $item["maso"])))) {
                        $arr = array(
                            "code" => $this->response_code["invalid_giay_to"][0],
                            "message" => $this->response_code["invalid_giay_to"][1],
                        );
                        return $arr;
                    }
                }
                foreach ($dia_chi_data as $key => $item) {
                    if (!isset($item["value"]) || !$this->e_khach_address->insert(array("khach_id" => $id, "content" => $item["value"], "chu_id" => $chu->id))) {
                        $arr = array(
                            "code" => $this->response_code["invalid_dia_chi"][0],
                            "message" => $this->response_code["invalid_dia_chi"][1],
                        );
                        return $arr;
                    }

                }
                if (count($note_data) > 0) {
                    foreach ($note_data as $key => $item) {
                        if (!isset($item["value"]) || !$this->e_khach_note->insert(array("khach_id" => $id, "content" => $item["value"], "chu_id" => $chu->id))) {
                            $arr = array(
                                "code" => $this->response_code["invalid_note"][0],
                                "message" => $this->response_code["invalid_note"][1],
                            );
                            return $arr;
                        }
                    }
                }
                if (count($phone_data) > 0) {
                    foreach ($phone_data as $key => $item) {
                        if (!isset($item["value"]) || !$this->e_khach_phone->insert(array("khach_id" => $id, "content" => $item["value"], "chu_id" => $chu->id))) {
                            $arr = array(
                                "code" => $this->response_code["invalid_phone"][0],
                                "message" => $this->response_code["invalid_phone"][1],
                            );
                            return $arr;
                        }
                    }
                }

                //upload
                $this->load->library('upload');
                $temp = $files;
                $cpt = isset($temp['image']['name']) ? count($temp['image']['name']) : 0;
                if (!is_dir($image_dir = $this->config->item('image_path') . $chu->id)) {
                    @mkdir($image_dir, 0777, TRUE);
                }

                for ($i = 0; $i < $cpt; $i++) {
                    $_FILES['image']['name'] = $temp['image']['name'][$i];
                    $filename = explode(".", $_FILES['image']['name']);
                    $ext = end($filename);
                    $_FILES['image']['type'] = $temp['image']['type'][$i];
                    $_FILES['image']['tmp_name'] = $temp['image']['tmp_name'][$i];
                    $_FILES['image']['error'] = $temp['image']['error'][$i];
                    $_FILES['image']['size'] = $temp['image']['size'][$i];
                    $file_name = $this->get_uuid();
                    $this->upload->initialize($this->set_upload_options(realpath($image_dir), $file_name));
                    if(isset($_FILES['image']['name'])){
                        if ($this->upload->do_upload('image')) {
                            $uploaded_file = $image_dir . "/" . $file_name . "." . $ext;
                            if ($i == 0) {
                                $is_profile = true;
                            } else {
                                $is_profile = false;
                            }
                            if (!$this->e_image->insert(array("khach_id" => $id, "chu_id" => $chu->id, "path" => $uploaded_file, "profile" => $is_profile))) {
                                $arr = array(
                                    "code" => $this->response_code["unknow_error"][0],
                                    "message" => $this->response_code["unknow_error"][1],
                                );
                                return $arr;
                            }
                        } else {
                            logit('Could not upload album screenshot: "' . $_FILES['image']['name'] . '". ' . $this->upload->display_errors(), 'error');
                        }
                    }
                }
                $arr = array(
                    "code" => $this->response_code["success"][0],
                    "message" => $this->response_code["success"][1],
                );
                return $arr;
            } else {
                $arr = array(
                    "code" => $this->response_code["invalid_session"][0],
                    "message" => $this->response_code["invalid_session"][1],
                );
                return $arr;
            }
        }
    }

    //Return a random generated unique id
    private function get_uuid()
    {
        return md5(uniqid(mt_rand()));
    }

    private function set_upload_options($path, $file_name)
    {
        //upload an image options
        $config = array();
        $config['upload_path'] = $path;
        $config['file_name'] = $file_name;
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = '0';
        $config['overwrite'] = FALSE;
        return $config;
    }
}
