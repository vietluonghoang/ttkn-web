<?php
/**
 * User: nullpointerexx
 * Date: 8/1/16
 * Time: 6:11 PM
 */

class E_chu_session extends BF_Model
{
    protected $table_name = 'chu_session';
    protected $key = 'chu_session';
    protected $return_insert_id = true;
    protected $set_created = true;
    protected $created_field = 'created_on';
    protected $date_format = 'datetime';


    public function __construct()
    {
        parent::__construct();
    }

    public function with_chu()
    {
        $chu_tbl = $this->db->dbprefix('chu');
        $chu_session_tbl = $this->db->dbprefix($this->table_name);
        $this->join($chu_tbl, $chu_tbl . '.id = ' . $chu_session_tbl . '.chu_id', 'left');
        return $this;
    }

    public function check_session($session){
        $current_time = date('Y-m-d H:i:s', time());
        $chu_tbl = $this->db->dbprefix('chu');
        $chu_session_tbl = $this->db->dbprefix($this->table_name);
        $this->join($chu_tbl, $chu_tbl . '.id = ' . $chu_session_tbl . '.chu_id', 'left')->where($chu_tbl.'.status','active')->where($chu_session_tbl.'.deleted ',0)->where($chu_session_tbl.'.expired > "'.$current_time.'"')->where($chu_session_tbl.".chu_session",$session);
        return $this;
    }
}