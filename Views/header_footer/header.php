<style type="text/css">
    .mainmenu{
    }
    .mainmenu ul li {
            margin-left:15px ;
    white-space: nowrap;

}
 .mainmenu ul li a{
    font-size: 16px !important;
        font-family: "Roboto", sans-serif;
        text-transform: uppercase;
        text-shadow: 2px 2px 2px #d6eff3;
        font-weight: bold;
 }
  .mainmenu ul  li a:hover{
        color: #4e40bf !important;
    }
.header-top-two{
    background-color: #4e40bf;
    color: white;
}
#iconlhmautrang {
        margin-top:5px ;
    }
     #iconlhmautrang a i{
        font-size: 20px;
        color: white;
        margin: 10px 0px 0px 20px ;

    }
  .widthfull  .openBtn {
  border: none;
  padding: 10px 15px;
  font-size: 20px;
  cursor: pointer;
}

.widthfull .overlay {
  height: 100%;
  width: 100%;
  display: none;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.9);
}

.overlay-content {
  position: relative;
  top: 46%;
  width: 80%;
  text-align: center;
  margin-top: 30px;
  margin: auto;
}

.overlay .closebtn {
  position: absolute;
  top: 20px;
  right: 45px;
  font-size: 60px;
  cursor: pointer;
  color: white;
}

.overlay .closebtn:hover {
  color: #ccc;
}

.overlay input[type=text] {
  padding: 15px;
  font-size: 17px;
  border: none;
  float: left;
  width: 100%;
  background: white;
}

.overlay input[type=text]:hover {
  background: #f1f1f1;
  
}

.overlay button {
  float: left;
  width: 20%;
  padding: 15px;
  background-color: #4e40bf;
  font-size: 24px;
  border: none;
  cursor: pointer;
}

.overlay button:hover {
  background: #bbb;
}

</style>
</style>
<header class="header-one header-two  has-sticky sticky-jump">
    <div class="header-top-two">
        <div class="container text-center" >
            <div class="row">
                <div class="col-sm-12">
                    <div class="middel-top">
                        <div class="left floatleft">
                            <div id="iconlhmautrang">
                                <a href="#" title="Facebook">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a href="#" title="Twitter">
                                    <i class="fab fa-twitter"></i>
                                </a>
                                <a href="#" title="Instagram">
                                    <i class="fab fa-instagram"></i>
                                </a>
                                <a href="#" title="Phone">
                                    <i class="fas fa-phone"></i>
                                </a>
                                <a href="#" title="Pinterest">
                                    <i class="fab fa-pinterest"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="middel-top clearfix" >
                        <ul class="clearfix right floatright" style="padding:0 ! important;margin-top:5px;margin-right:13px" >
                            <li >
                                <a><i class="mdi mdi-account" style="color:white;font-size:30px;margin-top:5px";></i></a>
                                <ul>
                                    <?php  if(isset($_SESSION['login'])){ ?>
                                    <li><b style="color:#4e40bf;font-size:20px"><?=$_SESSION['login']['Ho']?> <?=$_SESSION['login']['Ten']?></b></li>
                                    <li><a href="?act=taikhoan&xuli=account">Tài khoản</a></li>
                                    <li><a href="?act=taikhoan&xuli=dangxuat">Đăng xuất</a></li>
                                    <?php
                                        if(isset($_SESSION['isLogin_Admin']) || isset($_SESSION['isLogin_Nhanvien'])){ ?>
                                        <li><a href="admin/?mod=login">Trang quản lý</a></li>
                                  <?php }}else{ ?>
                                    <li><b style="color:#4e40bf">Khách hàng mới</b></li>
                                    <li><a href="?act=taikhoan">Đăng Ký/Đăng Nhập</a></li>
                                    <?php } ?>
                                </ul>
                            </li>
                        </ul>
                        <div class="right floatright widthfull text-center" style="padding-top:0 ! important;margin-top:5px;margin-bottom:-15px">
                               <a class="navbar-toggler openBtn" onclick="openSearch()" style="color:#ff5722;padding-right:60px;"><i class="mdi mdi-magnify" style="color:white;font-size:30px;margin-top:0px"></i></a>
                               <div id="myOverlay" class="overlay" style="">
                                  <span class="closebtn" onclick="closeSearch()" title="Close Overlay" style="color:#4e40bf;">×</span>
                                  <div class="overlay-content">
                                    <form action="?act=shop" method="post">
                                      <input type="text" placeholder="Search . . ." name="keyword" class="clearfix" style="border-radius:40px 0px 0px 40px ;padding:15px;font-size: 24px;border: none;float: left;width: 80%;height: 51px;background: white; opacity: 0.5;">
                                      <button type="submit" style="border-radius:0px 40px 40px 0px;float: eft;width:20%;padding: 15px;background-color: #4e40bf;font-size:24px;border: none;cursor: pointer;">
                                        <i class="fa fa-search" style="color:#fff"></i></button>
                                    </form>
                                  </div>
                                </div>
                                <!--<input type="text" class="clearfix" style="border-radius: 50px 50px 50px 50px;margin-top:5px;" placeholder="Tìm kiếm..." name="keyword"/>-->
                                <script>
                                function openSearch() {
                                  document.getElementById("myOverlay").style.display = "block";
                                }

                                function closeSearch() {
                                  document.getElementById("myOverlay").style.display = "none";
                                }
                                </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid text-center ">
        <div class="row">
            <div class="col-sm-3 " >
                <div class="logo" >
                    <a href="?act=home"><img src="public/img/logokidstuto.png" alt="Sellshop" width="220" height="70" style="padding-top:0px;margin-left:auto" /></a>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="header-middel">
                    <div class="mainmenu">
                        <nav style="margin-right:-150px" >
                            <ul >
                                <li><a href="?act=home" title="Trang Chủ" style="color:#624dd6">Trang chủ</a></li>
                                <li><a href="?act=shop" title="Khóa Học" style="color:#dd4f75">Khóa Học</a>
                                    <ul class="magamenu">
                                        <li class="banner"></li>
                                        <?php    $i = 1; foreach ($data_chitietDM as $row) { ?>
                                            <li>
                                                <a href="?act=shop&sp=<?=$i?>"><h5><?= $data_danhmuc[$i-1]['TenDM'] ?></h5></a>
                                                <ul>
                                                    <?php foreach ($row as $value) { ?>
                                                    <li><a href="?act=shop&sp=<?=$value['MaDM']?>&loai=<?=$value['TenLSP']?>"><?=$value['TenLSP']?></a></li>
                                                    <?php }?>
                                                </ul>
                                            </li>
                                        <?php $i++; } ?>
                                        <li class="banner"></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="?act=checkout"style="color:#88d914">Thanh Toán</a>
                                </li>
                                <li><a href="?act=about" title="Giới Thiệu" style="color:#53e29b">Giới thiệu</a></li>
                                <li><a href="?act=contact" title="Liên Hệ" style="color:#ff5722">Liên hệ</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!-- mobile menu start -->
                    <div class="mobile-menu-area">
                        <div class="mobile-menu">
                            <nav id="dropdown">
                                <ul>
                                    <li><a href="?act=home">Trang chủ</a>
                                    </li>
                                    <li><a href="?act=shop">Khóa Học</a>
                                        <ul>
                                        <?php $i = 1; foreach ($data_chitietDM as $row) { ?>
                                            <li>
                                                <a href="?act=shop&sp=<?=$i?>"><h5><?= $data_danhmuc[$i-1]['TenDM'] ?></h5></a>
                                                <ul>
                                                    <?php foreach ($row as $value) { ?>
                                                    <li><a href="?act=shop&sp=<?=$value['MaDM']?>&loai=<?=$value['TenLSP']?>"><?=$value['TenLSP']?></a></li>
                                                    <?php }?>
                                                </ul>
                                            </li>
                                        <?php $i++; } ?>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="?act=checkout">Thanh Toán</a>
                                    </li>
                                    <li><a href="?act=about">Giới thiệu</a></li>
                                    <li><a href="?act=contac">Liên hệ</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3" >
                <div class="cart-itmes " >
                    <a class="cart-itme-a" style="color:#4e40bf;margin:0px 0 0 0;" href="?act=cart">
                        <?php 
                            $soluong = 0;
                            $thanhtien = 0;
                            if(isset($_SESSION['sanpham'])){
                            foreach ($_SESSION['sanpham'] as $value) {
                                $soluong +=1;
                                $thanhtien +=$value['ThanhTien'];
                            }}
                        ?>
                        <i class="mdi mdi-cart" style="background-color:#4e40bf;width:35px !important;height:35px !important "><p style="margin:-35px 0px 0px 36px;color:#4e40bf !important;font-size:20px;font-weight: bold;"><?=$soluong?></p></i>
                        <strong style="text-transform: uppercase;color:#4e40bf;font-weight: bold;margin:100px 0 0 0 !important;">TOTAL : <?=number_format($thanhtien)?> VNĐ</strong>
                    </a>
                    <div class="cartdrop">
                        <?php if(isset($_SESSION['sanpham'])){
                            foreach ($_SESSION['sanpham'] as $value) { ?>
                        <div class="sin-itme clearfix">
                        <a href="?act=cart&xuli=deleteall&id=<?= $value['MaSP'] ?>"><i class="mdi mdi-close" title="Remove this product"></i></a>
                            <a class="cart-img" href="?act=cart"><img src="public/<?=$value['HinhAnh1']?>" alt="" /></a>
                            <div class="menu-cart-text">
                                <a href="?act=detail&id=<?=$value['MaSP']?>">
                                    <h5><?=$value['TenSP']?></h5>
                                </a>
                                <b>Số lượng: <?=$value['SoLuong']?></b>
                                <strong><?=number_format($value['ThanhTien'])?> VNĐ</strong>
                            </div>
                        </div>
                            <?php }} ?>
                        <div class="total">
                            <span>Tổng <strong>= <?=number_format($thanhtien)?> VNĐ</strong></span>
                        </div>
                        <a class="goto" href="index.php?act=cart">Đến giỏ hàng</a>
                        <a class="out-menu" href="index.php?act=checkout">Thanh toán</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
