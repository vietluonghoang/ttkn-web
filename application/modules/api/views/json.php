<?php
/**
 * Created by PhpStorm.
 * User: nullpointerexx
 * Date: 10/13/15
 * Time: 3:53 PM
 */

$this->output->enable_profiler(false);
$this->output->set_content_type('application/json');
echo json_encode($data_json,JSON_UNESCAPED_UNICODE);