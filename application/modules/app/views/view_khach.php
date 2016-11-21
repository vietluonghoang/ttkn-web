<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/20/2016
 * Time: 11:51 PM
 */
?>
<div class="wrap_card_list">

    <?php
    foreach ($khach as $key => $item) {
        ?>
        <div class="panel panel-default wrap_khach_item">
            <div class="panel-heading"><?php echo $item["name"][0]["name"];?></div>
            <div class="panel-body wrap_khach_item_content vertical-align">
                <?php if(isset($item["image"])) : ?>
                    <div class="info_khach_image_wrap col-xs-6 col-sm-5 vertical-align">
                <?php else : ?>
                    <div class="info_khach_image_wrap_default col-xs-6 col-sm-5 vertical-align">
                <?php endif;?>
                    <img class="info_khach_image" src="<?php if(isset($item["image"])){ echo $item["image"][0]["path"];}?>" />
                </div>
                <div class="info_khach col-xs-6 col-sm-5 vertical-align">
                    Tên - <?php echo $item["name"][0]["name"];?><br/>
                    Địa chỉ - <?php if(isset($item["dia_chi"])) echo $item["dia_chi"][0]["diachi"];?><br/>
                    Điện thoại - <?php if(isset($item["phone"])) echo $item["phone"][0]["phone"];?><br/>
                    </div>
                <div class="function_khach col-xs-12 col-sm-2  vertical-align">
                    <a href="khach?id=<?php echo $item["khach_id"]; ?>" type="button" class="btn btn-success btn-large btn_function">Chi tiết</a>
                </div>
            </div>
        </div>

        <?php
    }
    ?>
</div>
<?php
if (isset($_GET["m"]) && $_GET["m"] == 'success') {
    ?>
    <div id="notif_message">
        <div id="notif_type">success</div>
        <div id="notif_content">Tạo khách thành công</div>
    </div>
    <?php
}
?>