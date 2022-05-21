<?php
include 'header.php';
if (!empty($_SESSION['current_user'])) {
    $item_per_page = (!empty($_GET['per_page'])) ? $_GET['per_page'] : 10;
    $current_page = (!empty($_GET['page'])) ? $_GET['page'] : 1;
    $offset = ($current_page - 1) * $item_per_page;
    $totalRecords = mysqli_query($con, "SELECT * FROM `donhang`");
    $totalRecords = $totalRecords->num_rows;
    $totalPages = ceil($totalRecords / $item_per_page);
    $products = mysqli_query($con, "SELECT * FROM `donhang` ORDER BY `id` DESC LIMIT " . $item_per_page . " OFFSET " . $offset);
    mysqli_close($con);
    ?>
    <div class="main-content">
        <h1>Danh sách đơn hàng</h1>
        <div class="product-items">

        <table>
            <tr>
                <td style="padding-right: 10px;">Tên khách hàng</td>
                <td style="padding-right: 10px;text-align:center;">email</td>
                <td style="padding-right: 10px;">Số điện thoại</td>
                <td style="padding-right: 10px;">Tổng tiền</td>
                <td style="padding-right: 10px;text-align:center;">Ghi chú</td>
                <td style="padding-right: 10px;">Trạng thái</td>
            </tr>
            <?php
                while ($row = mysqli_fetch_array($products)) { ?>

            <tr style="padding-top:20px ;">
                <td style="padding-right: 10px;padding-top:30px;text-align:center;padding-bottom:30px;"><?= $row['tenkhachhang'] ?></td>
                <td style="padding-right: 10px;padding-top:30px;text-align:center;padding-bottom:30px;"><?= $row['email'] ?></td>
                <td style="padding-right: 10px;padding-top:30px;text-align:center;padding-bottom:30px;"><?= $row['sodienthoai'] ?></td>
                <td style="padding-right: 10px;padding-top:30px;text-align:center;padding-bottom:30px;"><?= $row['tongtien'] ?></td>
                <td style="padding-right: 10px;padding-top:30px;text-align:center;padding-bottom:30px;"><?= $row['ghichu'] ?></td>
                <td style="padding-right: 10px;padding-top:30px;text-align:center;padding-bottom:30px;"><?= $row['Status'] ?></td>

            <?php } ?>
            </tr>
        </table>
            
            <?php
            include './pagination.php';
            ?>
            <div class="clear-both"></div>
        </div>
    </div>
    <?php
}

?>