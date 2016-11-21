<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/20/2016
 * Time: 11:43 PM
 */
?>
<form target="" method="post" enctype="multipart/form-data" id="khach_moi">
    <div class="panel panel-default">
        <div class="panel-heading">Tên khách</div>
        <div class="panel-body">
            <input type="hidden" class="hidden_name" name="name" value=""/>
            <div class="wrap_new_name"></div>
            <div class="btn btn-success call_input_popup_group field_name">+</div>
            <div class="wrap_input_popup input_popup_name">
                <div class="btn btn-link close_input_popup" style="position: absolute;top: 5px;right: 5px">x</div>
                <div class="form-inline vcenter">
                    <input type="text" class="input_new_name" required/>
                    <button type="button" class="btn btn-info add_new_name_icon">Tạo</button>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">Giấy tờ</div>
        <div class="panel-body">
            <input type="hidden" class="hidden_giayto" name="giay_to" value=""/>
            <div class="wrap_new_giayto"></div>
            <div class="btn btn-success call_input_popup_group field_giayto">+</div>
            <div class="wrap_input_popup input_popup_giayto">
                <div class="btn btn-link close_input_popup" style="position: absolute;top: 5px;right: 5px">x</div>
                <div class="form-inline vcenter">
                    <select class="form-control giayto_type">
                        <option value="1">Chứng minh thư</option>
                        <option value="2">Bằng lái</option>
                        <option value="3">Hộ khẩu</option>
                        <option value="4">Sổ đỏ</option>
                    </select>
                    <input type="text" class="input_new_giayto" required />
                    <button type="button" class="btn btn-info add_new_giayto_icon">Tạo</button>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">Địa chỉ</div>
        <div class="panel-body">
            <input type="hidden" class="hidden_dia_chi" name="dia_chi" value=""/>
            <div class="wrap_new_diachi"></div>
            <div class="btn btn-success call_input_popup_group field_diachi">+</div>
            <div class="wrap_input_popup input_popup_diachi">
                <div class="btn btn-link close_input_popup" style="position: absolute;top: 5px;right: 5px">x</div>
                <div class="form-inline vcenter">
                    <input type="text" class="input_new_diachi" required />
                    <button type="button" class="btn btn-info add_new_diachi_icon">Tạo</button>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">Điện thoại</div>
        <div class="panel-body">
            <input type="hidden" class="hidden_phone" name="phone" value=""/>
            <div class="wrap_new_phone"></div>
            <div class="btn btn-success call_input_popup_group field_phone">+</div>
            <div class="wrap_input_popup input_popup_phone">
                <div class="btn btn-link close_input_popup" style="position: absolute;top: 5px;right: 5px">x</div>
                <div class="form-inline vcenter">
                    <input type="text" class="input_new_phone" required />
                    <button type="button" class="btn btn-info add_new_phone_icon">Tạo</button>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">Ghi chú</div>
        <div class="panel-body">
            <input type="hidden" class="hidden_note" name="note" value=""/>
            <div class="wrap_new_note"></div>
            <div class="btn btn-success call_input_popup_group field_note">+</div>
            <div class="wrap_input_popup input_popup_note">
                <div class="btn btn-link close_input_popup" style="position: absolute;top: 5px;right: 5px">x</div>
                <div class="form-inline vcenter">
                    <input type="text" class="input_new_note" required />
                    <button type="button" class="btn btn-info add_new_note_icon">Tạo</button>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">Ảnh</div>
        <div class="panel-body">
            <div class="form-inline">
                <label class="btn btn-primary btn-file">
                    Chọn ảnh<input type="file" name="image[]" required style="display: none;" />
                </label>

            </div>
        </div>
    </div>
    <div class="text-center">
        <button type="button" class="btn btn-primary btn-large submit_khach">Tạo khách</button>
    </div>
</form>
<?php
if (isset($notif_message)) {
    ?>
    <div id="notif_message">
        <div id="notif_type"><?php echo($notif_type); ?></div>
        <div id="notif_content"><?php echo($notif_message); ?></div>
    </div>
    <?php
}
?>

