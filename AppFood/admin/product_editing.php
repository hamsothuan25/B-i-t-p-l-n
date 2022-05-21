<?php
include 'header.php';
if (!empty($_SESSION['current_user'])) {
    ?>
    <div class="main-content">
       
    <h1><?= !empty($_GET['id']) ? ((!empty($_GET['task']) )? : "Sửa sản phẩm") : "Thêm sản phẩm" ?></h1>
        <div id="content-box">
            <?php
            if (isset($_GET['action']) && ($_GET['action'] == 'add' || $_GET['action'] == 'edit')) {
                if (isset($_POST['tenmon']) && !empty($_POST['tenmon']) && isset($_POST['gia']) && !empty($_POST['gia'])) {
                    if (empty($_POST['tenmon'])) {
                        $error = "Bạn phải nhập tên sản phẩm";
                    } elseif (empty($_POST['gia'])) {
                        $error = "Bạn phải nhập giá sản phẩm";
                    } elseif (!empty($_POST['gia']) && is_numeric(str_replace('.', '', $_POST['gia'])) == false) {
                        $error = "Giá nhập không hợp lệ";
                    }
                    if (isset($_POST['hinhmon']) && !empty($_POST['hinhmon']['tenmon'][0])) {
                        //$uploadedFiles = $_FILES['hinhmon'];
                        // $result = uploadFiles($uploadedFiles);
                        if (!empty($result['errors'])) {
                            $error = $result['errors'];
                        } else {
                            $image = $result['path'];
                        }
                    }
                    if (!isset($image) && !empty($_POST['hinhmon'])) {
                        $image = $_POST['hinhmon'];
                    }
                    if (!isset($error)) {
                        if ($_GET['action'] == 'edit' && !empty($_GET['id'])) { //Cập nhật lại sản phẩm
                            $result = mysqli_query($con, "UPDATE `mon` SET `madanhmuc` = '" .$_POST['madanhmuc']. "',`tenmon` =  '" . $_POST['tenmon'] . "',  `hinhmon` =  '" . $_POST['hinhmon'] . "', `gia` ='". $_POST['gia'] ."' WHERE `id` = '". $_GET['id'] ."'             " );
                        } else { //Thêm sản phẩm
                            $result = mysqli_query($con, "INSERT INTO `mon`( `madanhmuc`, `tenmon`, `hinhmon`, `gia`, `mota`) VALUES ('" . $_POST['madanhmuc'] . "','" . $_POST['tenmon'] . "','". $_POST['hinhmon']."','". $_POST['gia']."','".$_POST['mota']."')");
                        }
                        if (!$result) { //Nếu có lỗi xảy ra
                            $error = "Có lỗi xảy ra trong quá trình thực hiện.";
                        } 
                    }
                } else {
                    $error = "Bạn chưa nhập thông tin sản phẩm.";
                }
                ?>
                <div class = "container">
                    <div class = "error"><?= isset($error) ? $error : "Cập nhật thành công" ?></div>
                    <a href = "product_listing.php">Quay lại danh sách sản phẩm</a>
                </div>
                <?php
            } else {
                if (!empty($_GET['id'])) {
                    $result = mysqli_query($con, "SELECT * FROM `mon` WHERE `id` = " . $_GET['id']);
                    $product = $result->fetch_assoc();
                    
                }
                ?>
                <form id="product-form" method="POST" action="<?= (!empty($product) && !isset($_GET['task'])) ? "?action=edit&id=" . $_GET['id'] : "?action=add" ?>"  enctype="multipart/form-data">
                    <input type="submit" title="Lưu sản phẩm" value="" />
                    <div class="clear-both"></div>
                    <div class="wrap-field">
                        <label>Mã danh mục: </label>
                        <input type="text" name="madanhmuc" value="<?= (!empty($product) ? $product['madanhmuc'] : "") ?>" />
                        <div class="clear-both"></div>
                    </div>
                    <div class="wrap-field">
                        <label>Tên sản phẩm: </label>
                        <input type="text" name="tenmon" value="<?= (!empty($product) ? $product['tenmon'] : "") ?>" />
                        <div class="clear-both"></div>
                    </div>
                    <div class="wrap-field">
                        <label>Giá sản phẩm: </label>
                        <input type="text" name="gia" value="<?= (!empty($product) ? number_format($product['gia'], 0, ",", ".") : "") ?>" />
                        <div class="clear-both"></div>
                    </div>
                    <div class="wrap-field">
                        <label>Link ảnh đại diện: </label>
                        <div class="right-wrap-field">
                        <input type="text" name="hinhmon" value="<?= (!empty($product) ? $product['hinhmon'] : "") ?>" />
       
                        </div>
                        <div class="clear-both"></div>
                        <div class="wrap-field">
                        <label>Mô tả: </label>
                        <div class="clear-both"></div>
                        <textarea name="mota" id="product-content"><?= (!empty($product) ? $product['mota'] : "") ?></textarea>
                        <div class="clear-both"></div>
                    </div>
                    </div>
                    <div class="wrap-field">
                        
        <?php } ?>
                            
                        </div>
                        <div class="clear-both"></div>
                    </div>
                    
                </form>
                <div class="clear-both"></div>
                <script>
                    // Replace the <textarea id="editor1"> with a CKEditor
                    // instance, using default configuration.
                    CKEDITOR.replace('product-content');
                </script>
        <?php } ?>
        </div>
    </div>

    <?php


?>