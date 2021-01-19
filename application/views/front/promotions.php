<?php 
//echo "comming";exit;
    $this->load->view('front/includes/header');
                    
    $promotions=$this->db->query("SELECT * FROM `ui_settings` WHERE `type` LIKE '%promotion_banner%'")->result();
    
//                print_r($promotions);exit;   
                   
    
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
				<li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Promotions</li>
			</ol>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1 class="wow fadeInLeft" data-wow-duration="1.5s">Promotions</h1>
				<div class="row listing-item wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.5s">
                                    <?php 
                                    foreach ($promotions as $row){ ?>
                                    
                                    <div class="col-lg-3 col-md-3 col-sm-6">
						<div class="promotions-thumb wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.5s">
							<div class="product-holder">
								<div class="product-img"><img src="<?php echo base_url(); ?>uploads/logo_image/logo_<?php echo $row->value; ?>.png" alt="promotion"/></div>
								<a href="javascript:void(0);" class="quick-link-btn" data-src="#promotions_1"><span class="quick-img"><img src="<?=base_url()?>template/front/images/view.svg" alt="Read More"></span><span class="quick-text">Read More</span></a>
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