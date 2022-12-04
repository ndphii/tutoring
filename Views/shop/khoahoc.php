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
		</style>
		<div class="row">
			<div class="col-xs-12">
				<div class="pages-title-text text-center">
					<h2 style="color:white">Khóa Học</h2>
					<ul class="text-left" >
						<li><a href="?act=home" >Trang chủ</a></li>
						<li style="color:white"><span> //  Khóa Học </span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="col-12" style="padding:0;background-color:#F5F5F5">
    <img src="public/img/wavetim.png" width="100%" height="100%px" style="margin-top: -15px; ">
</div>
<!-- pages-title-end -->
<!-- products-view content section start -->
<section class="pages products-page section-padding-bottom">
	<div class="container-fluid" style="padding-top:10px">
		<div class="row">
			<!-- Category-left -->
			<div class="col-xs-12 col-sm-4 col-md-3">
				<?php require_once("category.php") ?>
			</div>
			<div class="col-xs-12 col-sm-8 col-md-9">
				<div class="right-products">
					<div class="row">
						<div class="col-xs-12">
							<div class="section-title clearfix">
								<ul>
									<li class="sort-by floatright">
										Tổng các khóa học <?= $data_tong ?>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="row">
						<?php require_once("list-products.php") ?>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="pagnation-ul">
								<ul class="clearfix">
									<?php if ($data_tong > 9 and isset($test)) {
										for ($i = 1; $i <= $data_tong / 9; $i++) { ?>
											<li><a href="?act=shop&trang=<?= $i ?>"><?= $i ?></a></li>
									<?php }
									}
									?>

								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- products-view content section end -->
<!-- quick view start -->
<?php
include_once("Views/quickview.php");
?>
<!-- quick view end -->