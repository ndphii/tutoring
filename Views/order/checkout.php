<!-- pages-title-start -->
<div class="pages-title section-padding" style="background: rgba(0, 0, 0, 0) url(public/img/page-title.png) repeat scroll 0 0 !important;">
	<div class="container">
		<style type="text/css">
			.text-left li a,span,p{
				color: white;
				font-size: 20px;
			}
			.text-left li a:hover{
				color: #fe5858;
			}
			 .pages-title ul span,h2 {
                white-space: nowrap !important;
            }

		</style>
		<div class="row">
			<div class="col-xs-12">
				<div class="pages-title-text text-center">
					<h2 style="color:white">Thanh Toán</h2>
					<ul class="text-left">
						<li><a href="index.php?act=home">Trang chủ</a></li>
						<li style="color:white;"><span> // Thanh Toán</span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
	<div class="col-12" style="padding:0;background-color:#F5F5F5">
      <img src="public/img/wavetim.png" width="100%" height="100%px" style="margin-top: -16px; ">
    </div>
<!-- pages-title-end -->
<!-- Checkout content section start -->
<section class="pages checkout section-padding">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">
				<div class="main-input single-cart-form padding60">
					<div class="log-title">
						<h3><strong>Chi tiết hóa đơn</strong></h3>
					</div>
					<div class="custom-input">
						<form action="?act=checkout&xuli=order_complete" method="post">
							<input type="text" name="NguoiNhan" placeholder="Người nhận" required value="<?php echo $_SESSION['login']['Ho']." ".$_SESSION['login']['Ten']  ?>"/>
							<input type="email" name="Email" placeholder="Địa chỉ Email.." required  value="<?=$_SESSION['login']['Email']?>"/>
							<input type="text" name="SDT" placeholder="Số điện thoại.." required pattern="[0-9]+" minlength="10"  value="<?=$_SESSION['login']['SDT']?>"/>
							<input type="text" name="DiaChi" placeholder="Đại chỉ giao hàng" required  value="<?=$_SESSION['login']['DiaChi']?>"/>
							</br>
							<div class="submit-text">
								<button type="submit">Xác Nhận Thông Tin </a></button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-6">
				<div class="padding60">
					<div class="log-title">
						<h3><strong>Hóa đơn</strong></h3>
					</div>
					<div class="cart-form-text pay-details table-responsive">
						
						<table>
							<thead>
								<tr>
									<th>Các Khóa Học</th>
									<td>Thành Tiền</td>
								</tr>
							</thead>
							<tbody>
								<?php if (isset($_SESSION['sanpham'])) {
									foreach ($_SESSION['sanpham'] as $value) { ?>
								<tr>
									<th><?=$value['TenSP']?></th>
									<td><?=number_format($value['ThanhTien'])?> VNĐ</td>
								</tr>
						<?php }
								} ?>
						<tr>
							<th>Giảm Giá</th>
							<td>0%</td>
						</tr>
						<tr>
							<th>Phí Đăng Kí</th>
							<td>3,000 VNĐ</td>
						</tr>
						<tr>
							<th>Vat</th>
							<td>0</td>
						</tr>
							</tbody>
							<tfoot>
								<tr>
									<th>Tổng</th>
									<td><?= number_format($count + 3000) ?> VNĐ</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Checkout content section end -->