<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 9/26/2016
 * Time: 3:02 AM
 */
?>
<div class="wrap_card_list">
    <?php
    foreach ($chu_data as $key => $item) {
        ?>
        <div class="col-xs-6">
        <div class="panel panel-default wrap_chu_item">
            <div class="panel-heading"><?php echo $item->email;?></div>
            <div class="panel-body wrap_khach_item_content">
                <div class="info_khach_image_wrap col-xs-4 col vertical-align">
                    <img class="info_khach_image" src="<?php if(isset($item->ava)){ echo $item->ava;}?>" />
                </div>
                <div class="col-xs-8">
                    <row>
                        <div class="info_khach col-xs-12 vertical-align">
                            Tên - <?php echo $item->name;?><br/>
                            Phone - <?php if(isset($item->phone)) echo $item->phone;?><br/>
                            Role - <?php if(isset($item->role)) echo $item->role;?><br/>
                        </div>
                    </row>
                    <row>
                        <div class="function_khach col-xs-12 vertical-align">
                            <a href="khach?id=<?php echo $item->id; ?>" type=   "button" class="btn btn-success btn-large btn_function">Chi tiết</a>
                        </div>
                    </row>
                </div>
            </div>
        </div>
        </div>
        <?php
    }
    ?>
</div>