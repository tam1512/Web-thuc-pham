<?php
include("../conection.php");
$sql_category_product = "SELECT * FROM sanpham where ID_DanhMuc='$_GET[id]' ORDER BY ID_SanPham DESC";
$query_category_product = mysqli_query($mysqli,$sql_category_product);
?>

<?php
$sql_getList = "SELECT * FROM danhmuc ORDER BY ID_DanhMuc DESC";
$query_getList= mysqli_query($mysqli, $sql_getList);
?>
<?php
session_start();
if (isset($_GET['id_cus'])) {
  $id_cus=$_GET['id_cus'];
}
?>


<!DOCTYPE html >
<html style="scroll-behavior: smooth">
<head>
  <meta charset=utf-8>
  <title>Sản phẩm</title>
  <link rel="stylesheet"  href="../bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet"  href="../bootstrap/css/bootstrap.css">
  <link rel="stylesheet"  href="../bootstrap/js/bootstrap.bundle.js">
  <link rel="stylesheet"  href="../bootstrap/js/bootstrap.bundle.min.js">
  <link rel="stylesheet"  href="../style.css">
  <link rel="stylesheet"  href="../themify-icons/themify-icons.css">
  <link rel="shortcut icon" href="https://img.icons8.com/cotton/2x/laptop--v3.png" type="image/png">

</head>
<body>
  <div class="sticky-top">
    <div class="menu sticky-top">
      <nav class="navbar navbar-expand-lg header-custom"  style="background-color: #248A32;">
        <div class="container-fluid font-header-custom">
          <a class="navbar-branch" href="../index.php">
            <img src="../image/logo/logochinh.png" height="80">
          </a>
          <button class="navbar-toggler"  type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active"  href="index.php" style="color:white;">TẤT CẢ SẢN PHẨM</a>
              </li>

              <!-- Search -->


              <li class="nav-item">
                <a class="nav-link" href="../cart" style="color:white;">GIỎ HÀNG</a>
              </li>
              <?php if(isset($_SESSION['TenDangNhap'])) { ?>
                <li class="nav-item">
                  <a class="nav-link" href="../contact.php?id=<?php echo $_SESSION['ID_ThanhVien']?>" style="color:white;">LIÊN HỆ</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../ThanhVien/logout.php" style="color:white;">ĐĂNG XUẤT</a>
                </li>
                <li class="nav-item">
                  <a type="button" class="btn btn-secondary" href="../ThanhVien/profile.php?id=<?php echo $_SESSION['ID_ThanhVien']?>" id="btn" style="color:white;"></span> <?php echo $_SESSION['HoVaTen']?></a>
                </li>
              <?php } else {?>
                <li><a type="button" class="btn btn-secondary" href="../ThanhVien/login.php">&nbsp;ĐĂNG NHẬP  </a></li>
              <?php }?>
            </ul>
            <?php
            if (isset($_SESSION['cart'])) {
              ?>
              <h5></h5>
              <?php
            }
            ?>
          </div>
        </div>
      </nav>
    </div>

    <div class="position-fixed" style="align-items:center;top:225px; left:15px;">
      <ul class="nav flex-column">
        <h4>Liệt kê theo</h4>
      </br>
      <?php
      while ($row_getList= mysqli_fetch_array($query_getList)) {
        ?>
        <a class="btn btn-primary" href="actionSanpham.php?danhmucsanpham&id=<?php echo $row_getList['ID_DanhMuc']?>"  style="background-color: #248A32;border-color:#248A32 ;"><?php echo $row_getList['TenDanhMuc']?></a>
      </br>
    </br>
    <?php
  }
  ?>
</ul>
</div>


<!-- <div class="position-fixed" style="align-items:center;top:225px; left:35px;">
      <a href="https://vzone.vn/wp-content/uploads/2020/10/Nen-mua-sua-vinamilk-khuyen-mai-hay-la-khong.jpg?v=1604044976">
      <img style="" src="../image/thanh3.jpg" width="120">
      </a>
    </div> -->
   <!-- <div class="position-fixed" style="align-items:center;top:225px; left:35px;">
      <a href="https://vzone.vn/wp-content/uploads/2020/10/Nen-mua-sua-vinamilk-khuyen-mai-hay-la-khong.jpg?v=1604044976">
      <img style="" src="../image/thanh3.jpg" width="120">
      </a>
    </div> -->

    <div class="container">
      <div class= "container-fluid">
        <div class= "row d-inline-flex">
        </br>
        <div id="allproduct">
          <div style="text-align: center;">
           <h1>Tất cả sản phẩm</h1>
         </div>
         <?php
         while($row_category_product = mysqli_fetch_array($query_category_product)){
          ?>

          <form class="card" style="width: 25%; float:left" action="../cart/add.php?id=<?php echo $row_category_product['TenSanPham'];?>" method="POST">
           <div class="d-flex flex-column text-center border">
             <img src="../image/product/<?php echo $row_category_product['Img'];?>" />
             <h2><?php echo $row_category_product['TenSanPham'];?></h2>
             <h6>Giá: <?php echo $row_category_product['GiaBan'];?> VND</h6>
             <input type="submit" class="btn btn-info" name='submit' value="Mua">
             <?php
             $id_cus=$_SESSION['ID_ThanhVien'];
             ?>

           </div>
         </form>
         <?php
       }
       ?>
     </div>
   </br>
 </br>
 
 
</div>
</div>
hr class="hr--large">
<div class = "space" style="text-align: center; background-color: #white ">
  <img style= "" src="../image/thanhspace.PNG">

  <ul style="list-style: none" class="no-bullets social-icons">
    <li style="text-align: center">
      <a class = "ti-facebook"style=" color: black" href="https://www.facebook.com/b1231121" title="Code from BiBao" >
        Facebook
      </a>
      <a class = "ti-pinterest"style=" color: black" href="https://www.pinterest.com" title="Pinterest">
        Pinterest
      </a>
      <a class = "ti-instagram"style=" color: black" href="https://www.instagram.com/bibaoo/" title="Instagram">
        Instagram
      </a>
    </li>
  </ul>
  <p class="site-footer__copyright-content">
    © 2021, 
    <a href="http://localhost/BanThucPham/index.php" \title=""style=" color: red" >Nhóm 10</a>

  </div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</html>