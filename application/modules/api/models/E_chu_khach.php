<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/12/2016
 * Time: 11:59 PM
 */

class E_chu_khach extends BF_Model
{
    protected $table_name = 'chu_khach';
    protected $key = 'id';
    protected $return_insert_id = true;
    protected $date_format = 'datetime';
    protected $set_created = true;
    protected $created_field = 'created_on';

    public function __construct()
    {
        parent::__construct();
    }
}