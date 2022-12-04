<!-- pages-title-start -->
<div class="pages-title section-padding"style="background: rgba(0, 0, 0, 0) url(public/img/page-title.png) repeat scroll 0 0 !important;">
	<div class="container">
		<style type="text/css">
			.text-left li a,span,p{
				color: white;
				font-size: 20px;
			}
			.text-left li a:hover{
				color: #fe5858;
			}
		</style>
		<div class="row">
			<div class="col-xs-12">
				<div class="pages-title-text text-center">
					<h2 style="color:white">Đăng nhập</h2>
					<ul class="text-left">
						<li><a href="?act=home">Trang chủ</a></li>
						<li style="color:white"><span> // Đăng nhập </span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="col-12" style="padding:0;background-color:#F5F5F5">
    <img src="public/img/wavetim.png" width="100%" height="100%px" style="margin-top: -2px; ">
</div>
<!-- pages-title-end -->
<!-- login content section start -->
<section class="pages login-page section-padding">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">
				<div class="main-input padding60" id="dangnhap">
					<div class="log-title">
						<h3><strong>Khách hàng đã đăng ký</strong></h3>
					</div>
					<div class="login-text">
						<div class="custom-input">
							<p>Nếu bạn đã có tài khoản, vui lòng đăng nhập!</p>
							<?php if (isset($_COOKIE['msg1'])) { ?>
								<div class="alert alert-success">
									<strong>Thông báo</strong> <?= $_COOKIE['msg1'] ?>
								</div>
							<?php } ?>
							<form action="?act=taikhoan&xuli=dangnhap" method="post" id="form1">
								<input type="text" name="taikhoan" placeholder="Tài khoản" />
								<input type="password" name="matkhau" placeholder="Mật khẩu" />
								<a class="forget" href="#">Quên mật khẩu?</a>
								<div class="submit-text">
									<button name="submit" type="submit" form="form1">Đăng nhập</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="main-input padding60 new-customer" id="dangky">
					<div class="log-title">
						<h3><strong>Khách hàng mới</strong></h3>
					</div>
					<?php if (isset($_COOKIE['msg'])) { ?>
						<div class="alert alert-success">
							<strong>Thông báo</strong> <?= $_COOKIE['msg'] ?>
						</div>
					<?php } ?>
					<div class="custom-input">
						
						<form action="?act=taikhoan&xuli=dangky" method="POST" id="form2">
							<input type="text" name="Ho" placeholder="Họ.." required />
							<input type="text" name="Ten" placeholder="Tên.." required />
							<input type="text" name="TaiKhoan" placeholder="Tên tài khoản đăng nhập.." required  minlength="6"/>
							<input type="email" name="Email" placeholder="Địa chỉ Email.." required />
							<input type="text" name="SĐT" placeholder="Số điện thoại.." required pattern="[0-9]+" minlength="10" />
							<input type="password" name="MatKhau" placeholder="Mật khẩu" minlength="6" required />
							<input type="password" name="check_password" placeholder="Xác nhận mật khẩu" minlength="6" required />
							<div class="submit-text coupon">
								<button type="submit" name="form_click"form="form2">Đăng ký</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- login content section end -->