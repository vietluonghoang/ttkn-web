<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/5/2016
 * Time: 11:50 PM
 */


class E_khach_phone extends BF_Model
{
    protected $table_name = 'khach_phone';
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