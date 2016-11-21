<?php

/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/12/2016
 * Time: 11:53 PM
 */
class Update_khach_model extends BF_Model
{
    public function __construct()
    {
        parent::__construct();
        $CI =& get_instance();
        $CI->load->model('E_chu_session', 'e_chu_session');
        $CI->load->model('E_khach_image', 'e_khach_image');
        $this->config->load('config');
    }

    protected $response_code = array(
        "success" => array(1, "Success"),
        "missing" => array(10, "Missing parameters"),
        "invalid_params" => array(30, "invalid params"),
        "image_not_found" => array(60, "images not found"),
        "permission" => array(70, "permission denied"),
        "invalid_session" => array(20, "Invalid session"),
        "unknow" => array(40, "unknow error"),
        "action" => array(50, "unknow action"),
    );

    public function run($session, $target_id, $action, $data)
    {
        if ($session === null || $data === null || $target_id === null || $action === null) {
            $arr = array(
                "code" => $this->response_code["missing"][0],
                "message" => $this->response_code["missing"][1]
            );
            return $arr;
        } else {
            $chu = $this->e_chu_session->check_session($session)->find_all();
            if ($chu) {
                $chu = $chu[0];
                switch ($action) {
                    case "name":
                    case "diachi":
                    case "note":
                    case "phone":
                        $CI =& get_instance();
                        if($action == "phone"){
                            $CI->load->model('E_khach_phone', 'e_model');
                            $field = "content";
                        }else if($action == "note"){
                            $CI->load->model('E_khach_note', 'e_model');
                            $field = "content";
                        }else if($action == "name"){
                            $CI->load->model('E_khach_name', 'e_model');
                            $field = "content";
                        }else if($action == "diachi"){
                            $CI->load->model('E_khach_address', 'e_model');
                            $field = "content";
                        }
                        $diachi_data = json_decode($data, true);
                        if (count($diachi_data) <= 0) {
                            $arr = array(
                                "code" => $this->response_code["invalid_params"][0],
                                "message" => $this->response_code["invalid_params"][1]
                            );
                            return $arr;
                        } else {
                            foreach ($diachi_data as $key => $item) {
                                if ($item["method"] == "add") {
                                    $this->e_model->insert(array("khach_id" => $target_id, "chu_id" => $chu->id, $field => $item["value"]));
                                } else if ($item["method"] == "update") {
                                    $this->e_model->update(array("id" => $item["id"]), array($field => $item["value"]));
                                } else if ($item["method"] == "delete") {
                                    $this->e_model->delete($item["id"]);
                                }
                            }
                            $arr = array(
                                "code" => $this->response_code["success"][0],
                                "message" => $this->response_code["success"][1],
                            );
                            return $arr;
                        }
                        break;
                    case "add_image":
                        //upload
                        $this->load->library('upload');
                        $temp = $data;
                        $cpt = isset($temp['image']['name']) ? count($temp['image']['name']) : 0;
                        if (!is_dir($image_dir = $this->config->item('image_path') . $chu->id)) {
                            @mkdir($image_dir, 0777, TRUE);
                        }
                        if($cpt > 0){
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
                                if ($this->upload->do_upload('image')) {
                                    $uploaded_file = $image_dir . "/" . $file_name . "." . $ext;
                                    if ($i == 0) {
                                        $is_profile = true;
                                    } else {
                                        $is_profile = false;
                                    }
                                    if (!$this->e_khach_image->insert(array("khach_id" => $target_id, "chu_id" => $chu->id, "path" => $uploaded_file, "profile" => $is_profile))) {
                                        $arr = array(
                                            "code" => $this->response_code["unknow_error"][0],
                                            "message" => $this->response_code["unknow_error"][1],
                                        );
                                        return $arr;
                                    }
                                } else {
                                    logit('Could not upload album screenshot: "' . $_FILES['page_thumb']['name'] . '". ' . $this->upload->display_errors(), 'error');
                                    $arr = array(
                                        "code" => $this->response_code["unknow_error"][0],
                                        "message" => $this->response_code["unknow_error"][1],
                                        "error" => $this->upload->display_errors()
                                    );
                                    return $arr;
                                }
                            }
                            $arr = array(
                                "code" => $this->response_code["success"][0],
                                "message" => $this->response_code["success"][1],
                            );
                            return $arr;
                        }else{
                            $arr = array(
                                "code" => $this->response_code["invalid_params"][0],
                                "message" => $this->response_code["invalid_params"][1],
                            );
                            return $arr;
                        }
                        break;
                    case "remove_image":
                        $count = 0;

                        $image_arr = json_decode($data);
                        if(!$image_arr){
                            $arr = array(
                                "code" => $this->response_code["invalid_params"][0],
                                "message" => $this->response_code["invalid_params"][1],
                                "deleted" => $count
                            );
                            return $arr;
                        }
                        foreach($image_arr as $key => $item){
                            $temp_image = $this-> e_khach_image->find($item->id);
                            if($temp_image){
                                if($temp_image->chu_id == $chu->id){
                                    if (file_exists($temp_image->path)) {
                                        unlink($temp_image->path);
                                    }
                                    $this-> e_khach_image->delete_where(array("id" => $temp_image->id));
                                    $count++;
                                }else{
                                    $arr = array(
                                        "code" => $this->response_code["permission"][0],
                                        "message" => $this->response_code["permission"][1],
                                        "deleted" => $count
                                    );
                                    return $arr;
                                }
                            }else{
                                $arr = array(
                                    "code" => $this->response_code["image_not_found"][0],
                                    "message" => $this->response_code["image_not_found"][1],
                                    "deleted" => $count
                                );
                                return $arr;
                            }
                        }
                        $arr = array(
                            "code" => $this->response_code["success"][0],
                            "message" => $this->response_code["success"][1],
                            "deleted" => $count
                        );
                        return $arr;
                        break;
                    case "giayto":
                        $CI =& get_instance();
                        $CI->load->model('E_khach_paper', 'e_model');
                        $field_maso = "content";
                        $field_type = "paper_type_id";
                        $giayto_data = json_decode($data, true);
                        if (count($giayto_data) <= 0) {
                            $arr = array(
                                "code" => $this->response_code["invalid_params"][0],
                                "message" => $this->response_code["invalid_params"][1]
                            );
                            return $arr;
                        } else {
                            foreach ($giayto_data as $key => $item) {
                                if ($item["method"] == "add") {
                                    $this->e_model->insert(array("khach_id" => $target_id, "chu_id" => $chu->id, $field_maso => $item["value"],$field_type => $item["type"]));
                                } else if ($item["method"] == "update") {
                                    $this->e_model->update(array("id" => $item["id"]), array($field_maso => $item["value"],$field_type => $item["type"]));
                                } else if ($item["method"] == "delete") {
                                    $this->e_model->delete($item["id"]);
                                }
                            }
                            $arr = array(
                                "code" => $this->response_code["success"][0],
                                "message" => $this->response_code["success"][1],
                            );
                            return $arr;
                        }
                        break;
                }

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
