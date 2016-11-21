<?php if(isset($_SESSION["logged"]) && $_SESSION["logged"]){?>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><div class="eye_wrap"><img src="../assets/images/eye-of-horus.png" /></div></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><?php echo anchor('app/nap_tien', 'Nạp tiền', 'class="btn btn-link"'); ?></li>
                <li><?php echo anchor('app/add_khach', 'Tạo khách', 'class="btn btn-link"'); ?></li>
                <li><?php echo anchor('app/view_khach', 'Khách của tôi', 'class="btn btn-link"'); ?></li>
                <li><?php echo anchor('app/weekly', 'Khách mới', 'class="btn btn-link"'); ?></li>
                <li><?php echo anchor('app/search_khach', 'Tìm', 'class="btn btn-link"'); ?></li>
                <li><?php echo anchor('app/logout', 'Thoát', 'class="btn btn-link"'); ?></li>
                <li><?php
                    if(isset($_SESSION["logged"]) && $_SESSION["role"] == 1){
                        echo anchor('app/redeem_code?tenchu=&trangthai=', 'Duyệt mã', 'class="btn btn-link"');
                    }
                    ?>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
<!--                <li>--><?php // echo " Ngày hết hạn: ".$_SESSION["expired"]; ?><!--</li>-->
            </ul>
        </div>
    </div>
</nav>
<?php } ?>