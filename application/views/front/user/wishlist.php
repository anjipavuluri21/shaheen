<div class="inner-banner-main parallaxcont wow fadeInUp">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="banner-img">
					<!--<nav aria-label="breadcrumb">
						<ol class="breadcrumb justify-content-center">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item"><a href="javascript:void(0);">Categories</a></li>
							<li class="breadcrumb-item active" aria-current="page">Indoor Plants</li>
						</ol>
					</nav>-->
				</div>
			</div>
	 	</div>
	</div>
</div>
<section class="section">
	<div class="breadcrumb-main wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.2s">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb justify-content-center">
				<li class="breadcrumb-item"><a href="index.php">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">My Favourite</li>
			</ol>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1 class="wow fadeInLeft" data-wow-duration="1.5s">My Favourite</h1>
				<div class="row listing-item wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.5s">
					<div class="col-lg-12 col-md-12 col-sm-12">
                                            <?php 
                    if(count($query) <= 0){
                        echo "No items in cart";
                    }else{
                    ?>
						<div class="row listing-item">
                                                    <?php 
    $i = 0;
    foreach ($query as $row1) {
        $i++;
?>
							<div class="col-lg-3 col-md-3 col-sm-6 loadmore-th">
								<div class="product-thumb">
									<div class="product-holder">
										<div class="product-img"><img src="<?php echo $this->crud_model->file_view('product',$row1['product_id'],'','','thumb','src','multi','one'); ?>" /></div>
										<a href="javascript:void(0);" class="quick-link-btn" data-src="<?php echo $this->crud_model->file_view('product',$row1['product_id'],'','','thumb','src','multi','one'); ?>" data-fancybox="favproduct62"><span class="quick-img"><img src="<?=base_url()?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></a>
										<a href="javascript:void(0);" class="none" data-src="<?php echo $this->crud_model->file_view('product',$row1['product_id'],'','','thumb','src','multi','one'); ?>" data-fancybox="favproduct62"></a>
										<div class="favourite-addtocart">
											<a href="javascript:void(0);" class="remove-anchor remove_from_wish" title="Remove Item" data-pid="<?php echo $row1['product_id'];?>"><img src="<?=base_url()?>template/front/images/close.svg" alt="Remove Item"></a>
											<a href="javascript:void(0);" class="addtocart-anchor" title="Add to Cart"data-pid="<?php echo $row1['product_id'];?>"><img src="<?=base_url()?>template/front/images/cart.svg" alt="cart"></a>
										</div>
									</div>
									<div class="product-dtl">
										<h2><?php echo $row1['title']; ?></h2>
										<div class="pot-size">Size : <?php echo $row1['size']; ?></div>
										<div class="made-by">Type : <?php echo $row1['tag']; ?></div>
										<p><?php echo currency($this->crud_model->get_product_price($row1['product_id'])); ?></p>
									</div>
								</div>
							</div>
    <?php } ?>
							
						</div>
                    <?php } ?>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</section>

