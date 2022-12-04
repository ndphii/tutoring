 <style type="text/css">
   span{
    font-size: 15px !important;
   }
   .nav-item .nav-link  i{
    font-size: 1.3em !important;
    color: #fff !important;
    margin-left: 5px !important;
    padding-right: 10px;
   }
   .bg-gradient-primary {
  background-color: #4e40bf;
  background-image: linear-gradient(180deg, #4e40bf 10%, #4e40bf 100%);
  background-size: cover;
}
</style>
<script>
  function title_menu(name) {
    document.getElementById("title-menu").innerHTML = name;
  }
</script>
 <!-- Sidebar -->
 <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar" >

<!-- Sidebar - Brand -->
<a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
  <div class="sidebar-brand-icon rotate-n-15">
    <i class="fas fa-graduation-cap"></i>
  </div>
  <div class="sidebar-brand-text mx-3">KIDS<sup>TUTO</sup></div>
</a>

<!-- Divider -->
<hr class="sidebar-divider my-0">

<!-- Divider -->
<hr class="sidebar-divider">

<!-- Heading -->
<div class="sidebar-heading">
</div>

<!-- Nav Item - Pages Collapse Menu -->
<?php if (isset($_SESSION['isLogin_Admin']) && $_SESSION['isLogin_Admin'] == true) { ?>
<li class="nav-item">
  <a class="nav-link" href="index.php" onclick='title_menu("Thống Kê")'>
     <i class='bx bx-grid-alt' ></i>
    <span>Trang chủ</span></a>
</li>
<?php } ?>
<!-- Nav Item - Charts -->
<?php if (isset($_SESSION['isLogin_Admin']) && $_SESSION['isLogin_Admin'] == true) { ?>
<li class="nav-item">
  <a class="nav-link" href="?mod=nguoidung" onclick='title_menu("Tài Khoản")'>
    <i class='bx bx-user' ></i>
    <span> Tài khoản</span></a>
</li>
<?php } ?>
<!-- Nav Item - Tables -->
<li class="nav-item">
  <a class="nav-link" href="?mod=sanpham" onclick='title_menu("Khóa Học")'>
     <i class='bx bx-box' ></i>
    <span>Khóa Học</span></a>
</li>

<li class="nav-item">
  <a class="nav-link" href="?mod=loaisanpham" onclick='title_menu("Loại Khóa Học")'>
    <i class='bx bx-coin-stack' ></i>
    <span>Loại Khóa Học</span></a>
</li>

<li class="nav-item">
  <a class="nav-link" href="?mod=hoadon" onclick='title_menu("Hóa Đơn")'>
     <i class='bx bx-list-ul' ></i>
    <span>Xét duyệt hóa đơn</span></a>
</li>

<li class="nav-item">
  <a class="nav-link" href="?mod=danhmuc" onclick='title_menu("Danh Mục Khóa Học")'>
    <i class='bx bx-book-alt' ></i>
    <span>Danh Mục Khóa Học</span></a>
</li>
<?php if (isset($_SESSION['isLogin_Admin']) && $_SESSION['isLogin_Admin'] == true) { ?>
<li class="nav-item">
  <a class="nav-link" href="?mod=banner" onclick='title_menu("Banner Trang Chủ")'>
     <i class='bx bx-cog' ></i>
    <span> Banner</span></a>
</li>
<?php }?>


<li class="nav-item">
  <a class="nav-link" href="?mod=khuyenmai" onclick='title_menu("Khuyến Mãi")'>
    <i class="fas fa-fw fa-table"></i>
    <span>Khóa Học Khuyến Mãi</span></a>
</li>
<!-- Sidebar Toggler (Sidebar) -->
<div class="text-center d-none d-md-inline">
  <button class="rounded-circle border-0" id="sidebarToggle"></button>
</div>

</ul>
<!-- End of Sidebar -->