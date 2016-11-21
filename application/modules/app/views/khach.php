<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/31/2016
 * Time: 1:39 AM
 */
?>
<div id="khach_detail">
    <div class="white_panel">
        <div class="row">
            <div class="col-xs-4 img_wrap">
                <?php
                if (isset($khach["image"])) {
                    echo "<img src='" . $khach["image"][0]["path"] . "' />";
                }
                ?>
            </div>
            <div class="col-xs-8 khach_info_wrap">
                <div class="field_title">Tên:</div>
                <?php
                if (isset($khach["name"])) {
                    foreach ($khach["name"] as $key => $item) {
                        echo "<div class='info_item'>" . $item["name"] . "</div>";
                    }
                }
                ?>
            </div>
            <div class="col-xs-8 khach_info_wrap">
                <div class="field_title">Giấy tờ:</div>
                <?php
                if (isset($khach["giay_to"])) {
                    foreach ($khach["giay_to"] as $key => $item) {
                        echo "<div class='info_item'>" . $item["loai"] . ": " . $item["maso"] . "</div>";
                    }
                }
                ?>
            </div>
            <div class="col-xs-8 khach_info_wrap">
                <div class="field_title">Địa chỉ:</div>
                <?php
                if (isset($khach["dia_chi"])) {
                    foreach ($khach["dia_chi"] as $key => $item) {
                        echo "<div class='info_item'>" . $item["diachi"] . "</div>";
                    }
                }
                ?>
            </div>
            <div class="col-xs-8 khach_info_wrap">
                <div class="field_title">Điện thoại:</div>
                <?php
                if (isset($khach["phone"])) {
                    foreach ($khach["phone"] as $key => $item) {
                        echo "<div class='info_item'>" . $item["phone"] . "</div>";
                    }
                }
                ?>
            </div>
            <div class="col-xs-8 khach_info_wrap">
                <div class="field_title">Ghi chú:</div>
                <?php
                if (isset($khach["ghichu"])) {
                    foreach ($khach["ghichu"] as $key => $item) {
                        echo "<div class='info_item'>" . $item["ghichu"] . "</div>";
                    }
                }
                ?>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-10 col-xs-offset-1 other_info_wrap">
                <?php
                if (isset($khach["image"])) {
                    foreach ($khach["image"] as $key => $item) {
                        if ($key != 0) {
                            echo "<img src='" . $item["path"] . "' />";
                        }
                    }
                }
                ?>
            </div>
        </div>
    </div>
    <div class="container text-center">
        <?php
        if ($connect) {
            ?>
            <a href="khach?id=<?php echo $khach["khach_id"] ?>&connect=false" class="btn btn-success btn-large">Hủy
                khách</a>
            <?php
            if ($connect[0]->status != "reported") {
                ?>
                <a href="khach?id=<?php echo $khach["khach_id"] ?>&report=true" type="button"
                   class="btn btn-success btn-large">Đang nợ tôi</a>
                <?php
            } else {
                ?>
                <a href="khach?id=<?php echo $khach["khach_id"] ?>&report=false" type="button"
                   class="btn btn-success btn-large">Hết nợ</a>
                <?php
            }
        } else {
            ?>
            <a href="khach?id=<?php echo $khach["khach_id"] ?>&connect=true" class="btn btn-success btn-large">Nhận
                khách</a>
            <?php
        }
        ?>

        <a href="edit_khach?id=<?php echo $khach["khach_id"] ?>" type="button" class="btn btn-success btn-large">Sửa
            khách</a>

    </div>
</div>



