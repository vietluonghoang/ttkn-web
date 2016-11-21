<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/20/2016
 * Time: 11:43 PM
 */
?>
<div class="panel panel-default">
    <div class="panel-heading">Ảnh</div>
    <div class="panel-body">
        <div class="wrap_new_image">
            <?php
            if (isset($khach["image"])) {
                foreach ($khach["image"] as $key => $item) {
                    $temp_image = @ih_image($item["path"], 0, 0, true, null, 0, true);
                    if ($key == 0) {
                        ?>
                        <div class="wrap_img_edit">
                            <a href='<?php echo($item["path"]); ?>' data-lightbox='khach_image'>
                                <img class='default_ava' src='<?php echo($temp_image); ?>'/>
                            </a>
                            <div class="icon-remove remove_image_button" img_id="<?php echo($temp_image); ?>"></div>
                        </div>
                        <?php
                    } else {
                        ?>
                        <div class="wrap_img_edit">
                            <a href='<?php echo($item["path"]); ?>' data-lightbox='khach_image'>
                                <img class='normal_img' src='<?php echo($item["path"]); ?>'/>
                            </a>
                            <div class="icon-remove remove_image_button" img_id="<?php echo($item["id"]); ?>"></div>
                        </div>
                        <?php
                    }
                }
            }
            ?>
        </div>
        <div class="btn btn-success call_input_popup_group field_edit_image">+</div>
        <div class="wrap_input_popup input_popup_edit_image">
            <div class="btn btn-link close_input_popup" style="position: absolute;top: 5px;right: 5px">x</div>
            <div class="form-inline vcenter">
                <form action="update_khach_info_add_img" method="post" enctype="multipart/form-data"
                      id="form_upload_img">
                    <input type="hidden" name="khach" value="<?php echo($khach["khach_id"]); ?>"/>
                    <label class="btn btn-primary btn-file">
                        Chọn ảnh<input type="file" name="image[]" class="input_new_edit_image" style="display: none;"/>
                    </label>
                    <button type="button" class="btn btn-info add_new_edit_image_icon">Tạo</button>
                </form>

            </div>
        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">Tên khách</div>
    <div class="panel-body">
        <div class="wrap_new_name">
            <?php
            if (isset($khach["name"])) {
                foreach ($khach["name"] as $key => $item) {
                    echo $item["name"];
                    if ($item["chu_id"] == $chu->id) {
                        echo " <a href='update_khach_info_name?method=delete&name=" . $item["name_id"] . "&khach=" . $khach["khach_id"] . "' class='btn btn-default' >Xóa</a>";
                    }
                    echo "<br/><br/>";
                }
            }
            ?>
        </div>
        <div class="btn btn-success call_input_popup_group field_edit_name">+</div>
        <div class="wrap_input_popup input_popup_edit_name">
            <div class="btn btn-link close_input_popup" style="position: absolute;top: 5px;right: 5px">x</div>
            <div class="form-inline vcenter">
                <input type="text" class="input_new_edit_name"/>
                <button type="button" class="btn btn-info add_new_edit_name_icon">Tạo</button>
            </div>
        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">Giấy tờ</div>
    <div class="panel-body">
        <div class="wrap_new_giayto">
            <?php
            if (isset($khach["giay_to"])) {
                foreach ($khach["giay_to"] as $key => $item) {
                    echo $item["loai"] . ": " . $item["maso"];
                    if ($item["chu_id"] == $chu->id) {
                        echo " <a href='update_khach_info_giayto?method=delete&id=" . $item["id"] . "&khach=" . $khach["khach_id"] . "' class='btn btn-default' >Xóa</a>";
                    }
                    echo "<br/><br/>";
                }
            }
            ?>
        </div>
        <div class="btn btn-success call_input_popup_group field_edit_giayto">+</div>
        <div class="wrap_input_popup input_popup_edit_giayto">
            <div class="btn btn-link close_input_popup" style="position: absolute;top: 5px;right: 5px">x</div>
            <div class="form-inline vcenter">
                <form action="update_khach_info_giayto" method="post">
                    <div class="form-inline vcenter">
                        <select class="form-control giayto_type" name="giayto_type">
                            <option value="1">Chứng minh thư</option>
                            <option value="2">Bằng lái</option>
                            <option value="3">Hộ khẩu</option>
                            <option value="4">Sổ đỏ</option>
                        </select>
                        <input type="text" class="input_new_edit_giayto" name="giayto_value"/>
                        <input type="hidden" name="method" value="add"/>
                        <input type="hidden" name="khach" value="<?php echo($khach["khach_id"]); ?>"/>
                        <button type="submit" class="btn btn-info add_new_edit_giayto_icon">Tạo</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">Địa chỉ</div>
    <div class="panel-body">
        <div class="wrap_new_diachi">
            <?php
            if (isset($khach["dia_chi"])) {
                foreach ($khach["dia_chi"] as $key => $item) {
                    echo $item["diachi"];
                    if ($item["chu_id"] == $chu->id) {
                        echo " <a href='update_khach_info_diachi?method=delete&diachi=" . $item["diachi_id"] . "&khach=" . $khach["khach_id"] . "' class='btn btn-default' >Xóa</a>";
                    }
                    echo "<br/><br/>";
                }
            }
            ?>
        </div>
        <div class="btn btn-success call_input_popup_group field_edit_diachi">+</div>
        <div class="wrap_input_popup input_popup_edit_diachi">
            <div class="btn btn-link close_input_popup" style="position: absolute;top: 5px;right: 5px">x</div>
            <div class="form-inline vcenter">
                <input type="text" class="input_new_edit_diachi"/>
                <button type="button" class="btn btn-info add_new_edit_diachi_icon">Tạo</button>
            </div>
        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">Điện thoại</div>
    <div class="panel-body">
        <div class="wrap_new_phone">
            <?php
            if (isset($khach["phone"])) {
                foreach ($khach["phone"] as $key => $item) {
                    echo $item["phone"];
                    if ($item["chu_id"] == $chu->id) {
                        echo " <a href='update_khach_info_phone?method=delete&phone=" . $item["phone_id"] . "&khach=" . $khach["khach_id"] . "' class='btn btn-default' >Xóa</a>";
                    }
                    echo "<br/><br/>";
                }
            }
            ?>
        </div>
        <div class="btn btn-success call_input_popup_group field_edit_phone">+</div>
        <div class="wrap_input_popup input_popup_edit_phone">
            <div class="btn btn-link close_input_popup" style="position: absolute;top: 5px;right: 5px">x</div>
            <div class="form-inline vcenter">
                <input type="text" class="input_new_edit_phone"/>
                <button type="button" class="btn btn-info add_new_edit_phone_icon">Tạo</button>
            </div>
        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">Ghi chú</div>
    <div class="panel-body">
        <div class="wrap_new_note">
            <?php
            if (isset($khach["ghichu"])) {
                foreach ($khach["ghichu"] as $key => $item) {
                    echo $item["ghichu"];
                    if ($item["chu_id"] == $chu->id) {
                        echo " <a href='update_khach_info_note?method=delete&note=" . $item["ghichu_id"] . "&khach=" . $khach["khach_id"] . "' class='btn btn-default' >Xóa</a>";
                    }
                    echo "<br/><br/>";
                }
            }
            ?>
        </div>
        <div class="btn btn-success call_input_popup_group field_edit_note">+</div>
        <div class="wrap_input_popup input_popup_edit_note">
            <div class="btn btn-link close_input_popup" style="position: absolute;top: 5px;right: 5px">x</div>
            <div class="form-inline vcenter">
                <input type="text" class="input_new_edit_note"/>
                <button type="button" class="btn btn-info add_new_edit_note_icon">Tạo</button>
            </div>
        </div>
    </div>
</div>
<div class="text-center">
    <a href="khach?id=<?php echo($_GET['id']); ?>" type="button" class="btn btn-primary btn-large">Xong</a>
</div>
