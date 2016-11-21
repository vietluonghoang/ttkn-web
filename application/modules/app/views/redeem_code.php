<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/22/2016
 * Time: 12:00 AM
 */
?>
<div class="search_section">
    <form action="" method="get">
        <div class="form-inline col-xs-12">
            <label for="usr">Chủ:</label>
            <input type="text" class="form-control" name="tenchu" value="<?php echo($_GET['tenchu']);?>"/>
        </div>
        <div class="form-inline col-xs-12">
            <label for="usr">Trạng thái:</label>
            <select class="form-control" name="trangthai" >
                <option value="active" <?php if($_GET['trangthai']=='active') echo("selected");?>>Đã duyệt</option>
                <option value="pending" <?php if($_GET['trangthai']=='pending') echo("selected");?>>Chờ duyệt</option>
            </select>
        </div>
        <div class="form-inline col-xs-12">
            <button type="submit" class="btn btn-info add_new_giayto_icon">Áp dụng</button>
        </div>
    </form>
</div>

<table class="table table-responsive table-bordered" style="background: white;  ">
    <thead>
    <th>Loại</th>
    <th>Mã</th>
    <th>Serial</th>
    <th>Tên chủ</th>
    <th>Thời gian active</th>
    <th>Thao tác</th>
    </thead>
    <tbody>
    <?php
    if (is_array($code)) {
        foreach ($code as $key => $item) {
            ?>
            <tr>
                <td><?php echo $item->card_type; ?></td>
                <td><?php echo $item->code; ?></td>
                <td><?php echo $item->serial; ?></td>
                <td><?php echo $item->name; ?></td>
                <td><?php echo $item->created_on; ?></td>
                <td>
                    <?php
                    if ($item->status != "active") {
                        ?>
                        <a href="&code=<?php echo $item->id; ?>&redeem_type=1" class="btn btn-primary">30 ngày</a>
                        <a href="&code=<?php echo $item->id; ?>&redeem_type=2" class="btn btn-primary">60 ngày</a>
                        <a href="&code=<?php echo $item->id; ?>&redeem_type=3" class="btn btn-primary">90 ngày</a>
                        <?php
                    }
                    ?>
                </td>
            </tr>
            <?php
        }
    }
    ?>
    </tbody>
</table>
