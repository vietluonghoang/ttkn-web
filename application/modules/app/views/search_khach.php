<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/21/2016
 * Time: 2:11 AM
 */
?>
<form action="" enctype="multipart/form-data" method="post">
    <div class="form-inline">
        <table class="table_search">
            <tbody>
            <tr>
                <td class="col-xs-6" style="color: white;">Tên</td>
                <td class="col-xs-6"><input type="text" name="name" class="search_value"/></td>
            </tr>
            <tr>
                <td class="col-xs-6" style="color: white;">Giấy tờ</td>
                <td class="col-xs-6"><input type="text" name="giayto" class="search_value"/></td>
            </tr>
            <tr>
                <td class="col-xs-6" style="color: white;">Địa chỉ</td>
                <td class="col-xs-6"><input type="text" name="address" class="search_value"/></td>
            </tr>
            <tr>
                <td class="col-xs-6" style="color: white;">Số điện thoại</td>
                <td class="col-xs-6"><input type="text" name="phone" class="search_value"/></td>
            </tr>
            <tr>
                <td class="col-xs-6" style="color: white;">Ghi chú</td>
                <td class="col-xs-6"><input type="text" name="note" class="search_value"/></td>
            </tr>
            <tr>
                <td class="col-xs-6" style="color: white;"></td>
                <td class="col-xs-6">
                    <button type="submit" class="btn btn-info add_new_giayto_icon">Tìm</button>
                </td>
            </tr>
            </tbody>
        </table>

    </div>
</form>
<div class="wrap_card_list">

    <?php
    foreach ($khach as $key => $item) {
        ?>
        <div class="panel panel-default wrap_khach_item">
            <div class="panel-heading"><?php echo $item["name"][0]["name"]; ?></div>
            <div class="panel-body wrap_khach_item_content row vertical-align">
                    <div class="info_khach_image_wrap col-xs-6 col-sm-5 vertical-align">
                        <img class="info_khach_image" src="<?php if (isset($item["image"])) {
                            echo $item["image"][0]["path"];
                        } ?>"/>
                    </div>
                    <div class="info_khach col-xs-6 col-sm-5 vertical-align">
                        Tên - <?php echo $item["name"][0]["name"]; ?><br/>
                        Địa chỉ - <?php echo $item["dia_chi"][0]["diachi"]; ?><br/>
                        Điện thoại - <?php echo $item["phone"][0]["phone"]; ?><br/>
                    </div>
                    <div class="function_khach col-xs-12 col-sm-2 vertical-align">
                        <a href="khach?id=<?php echo $item["khach_id"]; ?>" type="button"
                           class="btn btn-success btn-large btn_function">Chi tiết</a>
                    </div>
            </div>
        </div>

        <?php
    }
    ?>
</div>

