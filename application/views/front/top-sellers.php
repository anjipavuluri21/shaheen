<?php 

$this->load->view('front/includes/header');
	$most_viewed=$this->crud_model->product_list_set('most_viewed',4);
//        print_r($most_viewed);exit;

?>
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
				<li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Top Sellers</li>
			</ol>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1 class="wow fadeInLeft" data-wow-duration="1.5s">Top Sellers</h1>
				<div class="row listing-item wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.5s">
					
                                            <?php 
                                            foreach($most_viewed as $row){?>
                                    <div class="col-lg-3 col-md-3 col-sm-6 loadmore-th">
                                                <div class="product-thumb">
							<div class="product-holder">
								<div class="product-img"><img src="<?php echo $this->crud_model->file_view('product',$row['product_id'],'100','','thumb','src','multi','one');?>" alt="product"/></div>
								<a href="javascript:void(0);" class="quick-link-btn" data-src="products/indoor-plants/10151-1.jpg" data-fancybox="product6"><span class="quick-img"><img src="<?=base_url()?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></a>
								<a href="javascript:void(0);" class="none" data-src="products/indoor-plants/10151-2.jpg" data-fancybox="product6"></a>
								<div class="favourite-addtocart">
									<a href="javascript:void(0);" class="favourite-anchor" data-pid="<?=$row['product_id']?>"><img src="<?=base_url()?>template/front/images/faviourite.svg" alt="faviourite"></a>
									<a href="javascript:void(0);" class="addtocart-anchor" data-pid="<?=$row['product_id']?>"><img src="<?=base_url()?>template/front/images/cart.svg" alt="cart"></a>
								</div>
							</div>
							<div class="product-dtl">
								<h2><?php echo $row['title']; ?></h2>
								<div class="made-by">Size : <?php echo $row['size']; ?></div>
								<p><?php echo currency($row['sale_price']); ?></p>
							</div>
						</div>
                                        </div>
                                            <?php }
                                            
                                            ?>
						
					
					
				
				</div>
			</div>
		</div>	
	</div>	
</section>
<?php 
$this->load->view('front/includes/footer');
?>