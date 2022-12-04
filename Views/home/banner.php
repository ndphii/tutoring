<div class="main-slider-one main-slider-two slider-area">
    <div id="wrapper">
        <div class="slider-wrapper">
            <div id="mainSlider" class="nivoSlider">
                <?php $i=2; foreach ($data_banner as  $value) {  ?>
                <img src="public/<?=$value['HinhAnh']?>" alt="main slider" title="#htmlcaption"/>
                <?php } ?>
            </div>
            <div id="htmlcaption" class="nivo-html-caption slider-caption">
                <div class="container">
                    <div class="slider-right slider-left">
                        <div class="slide-text animated zoomInUp">
                            <h3>TẬN TÂM - UY TÍN - CHẤT LƯỢNG</h3>
                            <hr>
                            <h1 >GIA SƯ TÀI NĂNG</h1>
                        </div>
                        <div class="animated slider-btn fadeInUpBig" >
                            <a class="shop-btn" style="background-color:#4e40bf !important" href="index.php?act=shop" >Đăng Ký</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>							
    </div>
</div>
