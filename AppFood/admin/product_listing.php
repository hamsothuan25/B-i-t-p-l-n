<?php
include 'header.php';
if (!empty($_SESSION['current_user'])) {
    $item_per_page = (!empty($_GET['per_page'])) ? $_GET['per_page'] : 10;
    $current_page = (!empty($_GET['page'])) ? $_GET['page'] : 1;
    $offset = ($current_page - 1) * $item_per_page;
    $totalRecords = mysqli_query($con, "SELECT * FROM `mon`");
    $totalRecords = $totalRecords->num_rows;
    $totalPages = ceil($totalRecords / $item_per_page);
    $products = mysqli_query($con, "SELECT * FROM `mon` ORDER BY `id` DESC LIMIT " . $item_per_page . " OFFSET " . $offset);
    mysqli_close($con);
?>
    <div class="main-content">
        <h1>Danh sách sản phẩm</h1>
        <div class="product-items">
            <div class="buttons">
                <a href="./product_editing.php">Thêm sản phẩm</a>
            </div>
            <table border="1px" style="width: 100%; text-align: center;">
                <tr>
                    <td style="padding-right: 10px;">Tên sản phẩm</td>
                    <td style="padding-right: 10px;text-align:center;">Link ảnh</td>
                    <td>
                        <div class="product-prop product-button">
                            Sửa
                        </div>
                    </td>
                    <td>
                        <div class="product-prop product-button">
                            Xóa
                        </div>
                    </td>
                </tr>
                <?php
                while ($row = mysqli_fetch_array($products)) {
                ?>

                    <tr style="padding-top:20px ;">
                        <td style="padding-top:30px;text-align:center;padding-bottom:30px;"><?= $row['tenmon'] ?></td>
                        <td style="padding-top:30px;text-align:center;padding-bottom:30px;"><?= $row['hinhmon'] ?></td>
                        <td style="padding-top:30px;text-align:center;padding-bottom:30px;">
                            <div class="product-prop product-button">
                                <a href="./product_editing.php?id=<?= $row['id'] ?>">Sửa</a>
                            </div>
                        </td>
                        <td style="padding-top:30px;text-align:center;padding-bottom:30px;">
                            <div class="product-prop product-button">
                                <a href="./product_delete.php?id=<?= $row['id'] ?>">Xóa</a>
                            </div>
                        </td>

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