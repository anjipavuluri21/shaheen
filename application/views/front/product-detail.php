<?php 
        $page_data['product_details'] = $this->db->get_where('product', array('product_id' => $para1, 'status' => 'ok'))->result_array();
//        print_r($page_data['product_details']);exit;
?>


<div class="inner-banner-main parallaxcont wow fadeInUp">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="banner-img">
					
				</div>
			</div>
	 	</div>
	</div>
</div>
<section class="section parallaxcont detail-page">
	<div class="breadcrumb-main wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.2s">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Home</a></li>
				<li class="breadcrumb-item"><a href="javascript:void(0);">Categories</a></li>
				<li class="breadcrumb-item"><a href="listing.html">Indoor Plants</a></li>
				<li class="breadcrumb-item active" aria-current="page">Calathea Orbifolia</li>
			</ol>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-5 col-sm-6 wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.2s">
				<div class="productdetail-container swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><div class="quick-view-img" data-src="<?=base_url()?>template/front/images/product-1zoom.jpg" data-fancybox="gallery"><img src="<?=base_url()?>template/front/images/product-1zoom.jpg" alt=""></div></div>
						<div class="swiper-slide"><div class="quick-view-img" data-src="<?=base_url()?>template/front/images/product-1zoom2.jpg" data-fancybox="gallery"><img src="<?=base_url()?>template/front/images/product-1zoom2.jpg" alt=""></div></div>
						<div class="swiper-slide"><div class="quick-view-img" data-src="<?=base_url()?>template/front/images/product-1zoom3.jpg" data-fancybox="gallery"><img src="<?=base_url()?>template/front/images/product-1zoom3.jpg" alt=""></div></div>
					</div>
					<div class="swiper-button-prev productdetail-button-prev"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
				l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
					<div class="swiper-button-next productdetail-button-next"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
				l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
				</div>
			</div>	
			<div class="col-lg-8 col-md-7 col-sm-6 wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.4s">
				<div class="product-detail-sub">
					<div class="product-dtl-text">
						<h1>Calathea Orbifolia</h1>
						<p>If you have space to spare, make an impressive display in your living room with a great eye-catcher Anthurium plant.</p>
						<p><strong>What makes it special:</strong></p>
						<div class="listing">
							<ul>
								<li>One of the rarest indoor flowering plants.</li>
								<li>NASA recommended air purifier plant.</li>
								<li>Low maintenance plant.</li>
								<li>Anthurium symbolizes hospitality.</li>
							</ul>
						</div>	
						<div class="quantity-div">
							<div class="quantity-sub">
								<label>Quantity :</label>
								<div class="quantity-control-div plus-minus">
									<a href="javascript:void(0);" class="minus-btn minusBtn">-</a>
									<div class="quantity-control"><input type="text" class="form-control noValue" value="1"></div>
									<a href="javascript:void(0);" class="plus-btn plusBtn">+</a>
								</div>
							</div>	
						</div>
						<div class="pq-detail"><strong class="price-amount">2.500 KD</strong></div>	
						<div class="save-to-fav"><a href="javascript:void(0);" class="save-to-fav-link"><img src="<?=base_url()?>template/front/images/faviourite-flat.svg" alt="faviourite"> Add to Favourite</a></div>
					<div c class="btn-div"><a href="javascript:void(0);" class="button addtocart-detailbtn">Add To Cart</a></div>
					</div>
				</div>	
			</div>
		</div>	
	</div>	
</section>
