<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/21/2016
 * Time: 11:33 PM
 */ ?>
<form action="" method="post">
    <div class="panel panel-default">
        <div class="panel-heading">Nhập thông tin thẻ</div>
        <div class="panel-body">
            <div class="wrap_new_note"></div>
            <div class="form-inline">
                <div class="col-xs-12 col-sm-5 card_type_chooser"
                ><div data-toggle="">
                        <label class="card_type_item active">
                            <input type="radio" name="type" id="option1" value="Mobilephone" autocomplete="off" checked><img src="../assets/images/mobi.jpg" />
                        </label>
                        <label class="card_type_item">
                            <input type="radio" name="type" id="option1" value="Viettel" autocomplete="off"><img src="../assets/images/viettel.jpg" />
                        </label>
                        <label class="card_type_item">
                            <input type="radio" name="type" id="option2" value="Vinaphone" autocomplete="off"> <img src="../assets/images/vina.jpg" />
                        </label>
                        <label class="card_type_item">
                            <input type="radio" name="type" id="option3" value="Gate" autocomplete="off"> <img src="../assets/images/gate.jpg" />
                        </label>
                        <label class="card_type_item">
                            <input type="radio" name="type" id="option3" value="Bit" autocomplete="off"> <img src="../assets/images/bit.jpg" />
                        </label>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-7" style="padding-top: 20px;">
                    <div class="form-group col-xs-12">
                        <label for="usr">Mã thẻ:</label>
                        <input type="text" class="form-control" name="code" required />
                    </div>
                    <div class="form-group col-xs-12">
                        <label for="pwd">Serial:</label>
                        <input type="text" class="form-control" name="serial" required />
                    </div>
                </div>
                <div class="col-xs-12" style="text-align: center;"><button type="submit" name="submit" class="btn_green btn btn-default" value="1">Gửi</button></div>
            </div>
        </div>
    </div>
</form>

<div style="color: white;">
    <?php
    if (isset($success_code)) {
        echo "Gửi mã thẻ thành công vui lòng chờ duyệt";
    }
    ?>
</div>