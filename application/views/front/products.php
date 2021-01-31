<?php $this->load->view('front/includes/header');

	foreach($category_data as $cat)
	{
   

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
                            <li class="breadcrumb-item"><a href="<?php echo base_url();?>"><?php echo translate('home');?></a></li>
				<li class="breadcrumb-item"><a href="javascript:void(0);"><?php echo translate('categories');?></a></li>
				<li class="breadcrumb-item active" aria-current="page"><?=$cat['category_name']?></li>
			</ol>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12 product-section">
				<h1><div class="wow fadeInLeft" data-wow-duration="1.5s"><?=$cat['category_name']?></div>
					<ul class="filter wow fadeInRight" data-wow-duration="1.5s">
						<li>
							<select class="form-control"><option>-- Sort By --</option><option>New in</option><option>Price Low to High</option><option>Price High to Low</option><option>Popular</option><option>A to Z</option><option>Z to A</option></select>
						</li>
					</ul>
				</h1>
				<div class="row listing-item">
					
                                        <?php foreach($all_products as $row){ 
                                            ?> 
					
					<div class="col-lg-3 col-md-3 col-sm-6">
						<div class="product-thumb product-hover">
							<div class="product-holder">
                                                                                <?php 
                                        $images = $this->crud_model->file_view('product',$row['product_id'],'','','thumb','src','multi','all');
                                       ?>
                                                            <div class="product-img"><img src="<?=$images[0]?>" alt="product"/></div>
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
									<a href="javascript:void(0);" class="favourite-anchor" data-pid="<?=$row['product_id']?>"><img src="<?=base_url()?>template/front/images/faviourite.svg" alt="faviourite"></a>
									<a href="javascript:void(0);" class="addtocart-anchor" data-pid="<?=$row['product_id']?>"><img src="<?=base_url()?>template/front/images/cart.svg" alt="cart"></a>
								</div>
							</div>
							<div class="product-dtl">
                                                            <h2><a href="<?php echo $this->crud_model->product_link($row['product_id']); ?>"> <?php echo ($set_lang=="english")?$row['title']:$row['title_ar'];?></a></h2>
								<div class="pot-size"><?php echo translate('size');?> : <?php echo $row['size'];?> </div>
								<div class="made-by"><?php echo translate('type');?> : <?php echo $row['tag'];?></div>
								<p><?php echo currency($this->crud_model->get_product_price($row['product_id']));?></p>
							</div>	
						</div>
					</div>
					
					<?php }?>	
					 
					 
				</div>
			</div>
		</div>	
	</div>	
</section>
        <?php } $this->load->view('front/includes/footer');?>
