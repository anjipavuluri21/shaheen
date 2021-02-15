<?php 

$this->load->view('front/includes/header');
$set_lang=$this->session->userdata('language');
$latest = $this->crud_model->product_list_set('latest',10);

//print_r($latest);exit;
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
				<li class="breadcrumb-item"><a href="<?php echo base_url() ?>"><?php echo translate('home');?></a></li>
				<li class="breadcrumb-item active" aria-current="page"><?php echo translate('new_arrivals');?></li>
			</ol>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1 class="wow fadeInLeft" data-wow-duration="1.5s"><?php echo translate('new_arrivals');?></h1>
				<div class="row listing-item wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.5s">
                                    
                                    <?php 
                                    foreach ($latest as $row){ ?>
                                    <div class="col-lg-3 col-md-3 col-sm-6 loadmore-th">
						<div class="product-thumb">
							<div class="product-holder">
                                                            <?php 
                                        $images = $this->crud_model->file_view('product',$row['product_id'],'','','thumb','src','multi','all');
                                       ?>
								<div class="product-img"><img src="<?=$images[0]?>" data-src="" alt="product"/></div>
								<a href="javascript:void(0);" class="quick-link-btn" data-src="<?=$images[0]?>" data-fancybox="product<?=$row['product_id']?>"><span class="quick-img"><img src="<?=base_url()?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></a>
                                                                <?php		
                                        
                                        if($images){
                                            foreach ($images as $row1){
                                              
                                    ?>
								<a href="javascript:void(0);" class="none" data-src="<?php echo $row1; ?>" data-fancybox="product<?=$row['product_id']?>"></a>
                                                               
                                                    <?php 
                                            }
                                        } 
                                    ?>
                                                                <div class="favourite-addtocart">
									<a href="javascript:void(0);" class="remove-anchor" title="Remove Item"><img src="<?=base_url()?>template/front/images/close.svg" alt="Remove Item"></a>
									<a href="javascript:void(0);" class="addtocart-anchor" title="Add to Cart"><img src="<?=base_url()?>template/front/images/cart.svg" alt="cart"></a>
								</div>
							</div>
							<div class="product-dtl">
								<h2><?php echo $row['title'];?></h2>
								<div class="made-by">Size : <?php echo $row['size'];?></div>
								<p><?php echo currency($this->crud_model->get_product_price($row['product_id']));?></p>
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
