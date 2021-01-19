<?php 
    $categories=$this->db->get('category')->result_array();
   
                $this->db->order_by("slides_id", "desc");
                                        $this->db->where("uploaded_by", "admin");
                                        $this->db->where("status", "ok");
                                        $slides=$this->db->get('slides')->result_array();
//                                        print_r($slides);exit;
                                            $i=1;        
        
?>
<div class="main">
	<div class="banner-main parallaxcont wow fadeInUp">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="carousel-main">
						<div class="slideshow-container swiper-container">
							<div class="swiper-wrapper">
                                                            <?php 
                                                            
                                        foreach($slides as $row){ ?>
                                            <div class="swiper-slide">
									<div class="slideshow-img<?php echo $i; ?>"><img src="<?php echo $this->crud_model->file_view('slides',$row['slides_id'],'100','','no','src','','','.jpg') ?>" data-src="" alt="" /></div>
									<div class="slideshow-contents">
										<div class="banner-logo"><img src="<?=base_url()?>template/front/images/banner-SNAFCO.jpg" alt="SNAFCO"></div>
										<div class="discount"><?php echo $row['text1'];?></div>
                                                                                <h1><span><?php echo $row['text2'];?></span><div><?php echo $row['text3']; ?></div></h1>
										<a href="listing.php" class="button">Shop now</a>

									</div>
								</div>
                                                            
                                        <?php }
                                        
                                                            ?>
								
								
								
							</div>
							<div class="swiper-pagination slideshow-pagination"></div>
						</div>
						<div class="swiper-button-prev slideshow-button-prev"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
					l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
						<div class="swiper-button-next slideshow-button-next"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
					l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
					</div>
					<div class="payment-method">
						<ul class="payment-method-sub">
							<li>We Accept</li>
							<li><img src="<?=base_url()?>template/front/images/k-net.png" alt="k-net"></li>
							<li><img src="<?=base_url()?>template/front/images/visa.png" alt="visa card"></li>
							<li><img src="<?=base_url()?>template/front/images/master-card.png" alt="master card"></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<section class="section category-main">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1 class="wow fadeInLeft">Categories</h1>
					<div class="carousel-main">
						<div class="categories-container swiper-container">
							<div class="swiper-wrapper">
                                                            <?php 
                                                            foreach ($categories as $row){ ?>
                                                                <div class="swiper-slide">
									<div class="category-holder wow fadeInUp" data-wow-delay="0.2s" onClick="location.href='<?php echo base_url(); ?>home/category/<?php echo $row['category_id']; ?>">
										<div class="category-img"><img src="<?php echo base_url();?>uploads/category_image/<?php echo $row['banner']; ?>" alt="Indoor Plants"/></div>
                                                                                <a href="<?php echo base_url(); ?>product/category/<?php echo $row['category_id']; ?>"><h2><?php echo $row['category_name'];?></h2></a>
									</div>
								</div>
                                                            <?php }
                                                            ?>
								
								
								
							</div>
						</div>
						<div class="swiper-pagination categories-pagination"></div>
						<div class="swiper-button-prev categories-button-prev"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
					l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
						<div class="swiper-button-next categories-button-next"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
					l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
					</div>
				</div>
			</div>	
		</div>	
	</section>
    
	<section class="section new-arriaval-main">
		<div class="object texture-1 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="2s"><img src="<?=base_url()?>template/front/images/texture1.png" alt="texture"></div>
		<div class="object texture-7 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="2s"><img src="<?=base_url()?>template/front/images/texture7.png" alt="texture"></div>
		<div class="container">
                     <?php
					$latest = $this->crud_model->product_list_set('latest',5);

                    
                ?>
              
			<div class="row">
				<div class="col-12">
					<h1 class="wow fadeInLeft" data-wow-duration="1.5s">New Arrivals <a href="new-arrivals.php" class="button pos-right">View all</a></h1>
                                        
					<div class="carousel-main">
						<div class="arriaval-container swiper-container">
							<div class="swiper-wrapper">
                                                            <?php 
                                                            foreach($latest as $row){ ?>
                                                            <div class="swiper-slide">
									<div class="product-thumb">
										<div class="product-holder">
                                                                                    <?php 
                                        $images = $this->crud_model->file_view('product',$row['product_id'],'','','thumb','src','multi','all');
                                       ?>
											<div class="product-img"><img src="<?=$images[0]?>" alt="product"/></div>
											<a href="javascript:void(0);" class="quick-link-btn" data-src="<?=$images[0]?>" data-fancybox="product<?=$row['product_id']?>"><span class="quick-img"><img src="<?=base_url()?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></a>
											
								<a href="javascript:void(0);" class="none" data-src="<?php echo $row1; ?>" data-fancybox="product<?=$row['product_id']?>"></a>
                                                               
                                                    					<div class="favourite-addtocart">
												<a href="javascript:void(0);" class="favourite-anchor" data-pid="<?=$row['product_id']?>"><img src="<?=base_url()?>template/front/images/faviourite.svg" alt="faviourite"></a>
												<a href="javascript:void(0);" class="addtocart-anchor" data-pid="<?=$row['product_id']?>"><img src="<?=base_url()?>template/front/images/cart.svg" alt="cart"></a>
											</div>
										</div>
										<div class="product-dtl">
											<h2><?php echo $row['title'];?></h2>
											<div class="pot-size">Size : <?php echo $row['size'];?></div>
											<div class="made-by">Type : <?php echo $row['category'];?></div>
											<p><?php echo currency($this->crud_model->get_product_price($row['product_id']));?></p>
										</div>
									</div>
								</div>
                                                            
					 <?php }
                                                            ?>
								
							

							</div>
						</div>
						<div class="swiper-button-prev arriaval-button-prev"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
					l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
						<div class="swiper-button-next arriaval-button-next"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
					l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
					</div>
				</div>
			</div>	
		</div>	
	</section>
	<section class="section topsellers-main">
		<div class="object texture-2 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="2s"><img src="<?=base_url()?>template/front/images/texture2.png" alt="texture"></div>
		<div class="object texture-8 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="2s"><img src="<?=base_url()?>template/front/images/texture8.png" alt="texture"></div>
		<div class="object texture-3 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="2s"><img src="<?=base_url()?>template/front/images/texture3.png" alt="texture"></div>
		<div class="object texture-4 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="2s"><img src="<?=base_url()?>template/front/images/texture4.png" alt="texture"></div>
		<div class="object texture-9 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="2s"><img src="<?=base_url()?>template/front/images/texture9.png" alt="texture"></div>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1 class="wow fadeInLeft" data-wow-duration="1.5s">Top Sellers <a href="top-sellers.php" class="button pos-right">View all</a></h1>
					<div class="carousel-main">
						<div class="topsellers-container swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<div class="product-thumb">
										<div class="product-holder">
											<div class="product-img"><img src="<?=base_url()?>template/front/products/indoor-plants/th/10155.jpg" alt="product"/></div>
											<a href="javascript:void(0);" class="quick-link-btn" data-src="<?=base_url()?>template/front/products/indoor-plants/10155.jpg" data-fancybox="product8"><span class="quick-img"><img src="<?=base_url()?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></a>
											<a href="javascript:void(0);" class="none" data-src="<?=base_url()?>template/front/products/indoor-plants/10155-2.jpg" data-fancybox="product8"></a>
											<div class="favourite-addtocart">
												<a href="javascript:void(0);" class="favourite-anchor"><img src="<?=base_url()?>template/front/images/faviourite.svg" alt="faviourite"></a>
												<a href="javascript:void(0);" class="addtocart-anchor"><img src="<?=base_url()?>template/front/images/cart.svg" alt="cart"></a>
											</div>
										</div>
										<div class="product-dtl">
											<h2>Cordyline Mixed</h2>
											<div class="pot-size">Size : Pot-12cm, H-40cm</div>
											<div class="made-by">Type : Indoor Plants</div>
											<p>3.000 KD</p>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="product-thumb wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.5s">
										<div class="product-holder">
											<div class="product-img"><img src="<?=base_url()?>template/front/products/seeds/th/image00019.jpg" alt="product"/></div>
											<a href="javascript:void(0);" class="quick-link-btn" data-src="<?=base_url()?>template/front/products/seeds/image00019.jpg" data-fancybox="product5"><span class="quick-img"><img src="<?=base_url()?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></a>
											<a href="javascript:void(0);" class="none" data-src="<?=base_url()?>template/front/products/seeds/image00020.jpg" data-fancybox="product5"></a>
											<div class="favourite-addtocart">
												<a href="javascript:void(0);" class="favourite-anchor"><img src="<?=base_url()?>template/front/images/faviourite.svg" alt="faviourite"></a>
												<a href="javascript:void(0);" class="addtocart-anchor"><img src="<?=base_url()?>template/front/images/cart.svg" alt="cart"></a>
											</div>
										</div>
										<div class="product-dtl">
											<h2>BIO ROCALBA Rondo Pea</h2>
											<p>1.5 KD</p>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="product-thumb wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1.5s">
										<div class="product-holder">
											<div class="product-img"><img src="<?=base_url()?>template/front/products/fertilizers/th/image00008.jpg" alt="product"/></div>
											<a href="javascript:void(0);" class="quick-link-btn" data-src="<?=base_url()?>template/front/products/fertilizers/image00008.jpg" data-fancybox="product4"><span class="quick-img"><img src="<?=base_url()?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></a>
											<a href="javascript:void(0);" class="none" data-src="<?=base_url()?>template/front/products/fertilizers/image00009.jpg" data-fancybox="product4"></a>
											<div class="favourite-addtocart">
												<a href="javascript:void(0);" class="favourite-anchor"><img src="<?=base_url()?>template/front/images/faviourite.svg" alt="faviourite"></a>
												<a href="javascript:void(0);" class="addtocart-anchor"><img src="<?=base_url()?>template/front/images/cart.svg" alt="cart"></a>
											</div>
										</div>
										<div class="product-dtl">
											<h2>Tomato & Vegetable Plant food (Old truck) - 5-3-3- 1Kg/USA</h2>
											<p>6.000 KD</p>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="product-thumb wow fadeInUp" data-wow-delay="0.3s" data-wow-duration="1.5s">
										<div class="product-holder">
											<div class="product-img"><img src="<?=base_url()?>template/front/products/pots/th/12339.jpg" alt="product"/></div>
											<a href="javascript:void(0);" class="quick-link-btn" data-src="<?=base_url()?>template/front/products/pots/12339.jpg" data-fancybox="product85"><span class="quick-img"><img src="<?=base_url()?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></a>
											<a href="javascript:void(0);" class="none" data-src="<?=base_url()?>template/front/products/pots/12339(1).jpg" data-fancybox="product85"></a>
											<div class="favourite-addtocart">
												<a href="javascript:void(0);" class="favourite-anchor"><img src="<?=base_url()?>template/front/images/faviourite.svg" alt="faviourite"></a>
												<a href="javascript:void(0);" class="addtocart-anchor"><img src="<?=base_url()?>template/front/images/cart.svg" alt="cart"></a>
											</div>
										</div>
										<div class="product-dtl">
											<h2>Flower pot woode - 393x370mm</h2>
											<p>2.500 KD</p>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="product-thumb wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="1.5s">
										<div class="product-holder">
											<div class="product-img"><img src="<?=base_url()?>template/front/products/tools/th/10755.jpg" alt="product"/></div>
											<a href="javascript:void(0);" class="quick-link-btn" data-src="<?=base_url()?>template/front/products/tools/10755.jpg" data-fancybox="product20"><span class="quick-img"><img src="<?=base_url()?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></a>
											<!--<a href="javascript:void(0);" class="none" data-src="<?=base_url()?>template/front/products/tools/no-image.jpg" data-fancybox="product"></a>-->
											<div class="favourite-addtocart">
												<a href="javascript:void(0);" class="favourite-anchor"><img src="<?=base_url()?>template/front/images/faviourite.svg" alt="faviourite"></a>
												<a href="javascript:void(0);" class="addtocart-anchor"><img src="<?=base_url()?>template/front/images/cart.svg" alt="cart"></a>
											</div>
										</div>
										<div class="product-dtl">
											<h2>KS Drop Forged Hedge Shear - 9-Dia-0.6cm</h2>
											<p>15.500 KD</p>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="product-thumb">
										<div class="product-holder">
											<div class="product-img"><img src="<?=base_url()?>template/front/products/seeds/th/BIO-ROCALBA-Cauliflower-Napoletano.jpg" alt="product"/></div>
											<a href="javascript:void(0);" class="quick-link-btn" data-src="<?=base_url()?>template/front/products/seeds/BIO-ROCALBA-Cauliflower-Napoletano.jpg" data-fancybox="product6"><span class="quick-img"><img src="<?=base_url()?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></a>
											<a href="javascript:void(0);" class="none" data-src="<?=base_url()?>template/front/products/seeds/BIO-ROCALBA-Cauliflower-Napoletano-2.jpg" data-fancybox="product6"></a>
											<div class="favourite-addtocart">
												<a href="javascript:void(0);" class="favourite-anchor"><img src="<?=base_url()?>template/front/images/faviourite.svg" alt="faviourite"></a>
												<a href="javascript:void(0);" class="addtocart-anchor"><img src="<?=base_url()?>template/front/images/cart.svg" alt="cart"></a>
											</div>
										</div>
										<div class="product-dtl">
											<h2>BIO ROCALBA Cauliflower Napoletano</h2>
											<p>1.5 KD</p>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="product-thumb">
										<div class="product-holder">
											<div class="product-img"><img src="<?=base_url()?>template/front/products/pots/th/no-image.jpg" alt="product"/></div>
											<a href="javascript:void(0);" class="quick-link-btn" data-src="<?=base_url()?>template/front/products/pots/no-image.jpg" data-fancybox="product3"><span class="quick-img"><img src="<?=base_url()?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></a>
											<!--<a href="javascript:void(0);" class="none" data-src="<?=base_url()?>template/front/products/pots/no-image.jpg" data-fancybox="product3"></a>-->
											<div class="favourite-addtocart">
												<a href="javascript:void(0);" class="favourite-anchor"><img src="<?=base_url()?>template/front/images/faviourite.svg" alt="faviourite"></a>
												<a href="javascript:void(0);" class="addtocart-anchor"><img src="<?=base_url()?>template/front/images/cart.svg" alt="cart"></a>
											</div>
										</div>
										<div class="product-dtl">
											<h2>Nergiz Wall Pot - 275x140x150mm</h2>
											<p>1.000 KD</p>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="product-thumb">
										<div class="product-holder">
											<div class="product-img"><img src="<?=base_url()?>template/front/products/seeds/th/BIO-ROCALBA-Radish-SAXA-2.jpg" alt="product"/></div>
											<a href="javascript:void(0);" class="quick-link-btn" data-src="<?=base_url()?>template/front/products/seeds/BIO-ROCALBA-Radish-SAXA-2.jpg" data-fancybox="product7"><span class="quick-img"><img src="<?=base_url()?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></a>
											<a href="javascript:void(0);" class="none" data-src="<?=base_url()?>template/front/products/seeds/BIO-ROCALBA-Radish-SAXA-2-2.jpg" data-fancybox="product7"></a>
											<div class="favourite-addtocart">
												<a href="javascript:void(0);" class="favourite-anchor"><img src="<?=base_url()?>template/front/images/faviourite.svg" alt="faviourite"></a>
												<a href="javascript:void(0);" class="addtocart-anchor"><img src="<?=base_url()?>template/front/images/cart.svg" alt="cart"></a>
											</div>
										</div>
										<div class="product-dtl">
											<h2>BIO ROCALBA Radish SAXA 2</h2>
											<p>1.5 KD</p>
										</div>
									</div>
								</div>
								

							</div>
						</div>
						<div class="swiper-button-prev topsellers-button-prev"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
					l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
						<div class="swiper-button-next topsellers-button-next"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
					l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
					</div>
				</div>
			</div>	
		</div>	
	</section>
    
	<section class="section promotions-main">
		<div class="object texture-5 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="2s"><img src="<?=base_url()?>template/front/images/texture5.png" alt="texture"></div>
		<div class="object texture-6 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="2s"><img src="<?=base_url()?>template/front/images/texture6.png" alt="texture"></div>
		<div class="object texture-10 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="2s"><img src="<?=base_url()?>template/front/images/texture10.png" alt="texture"></div>
		<?php 
                
                $promotion_banner_one   = $this->db->get_where('ui_settings', array('type' => 'promotion_banner_one'))->row()->value;
                $promotion_banner_two   = $this->db->get_where('ui_settings', array('type' => 'promotion_banner_two'))->row()->value;
                $promotion_banner_three = $this->db->get_where('ui_settings', array('type' => 'promotion_banner_three'))->row()->value;
              ?>
                <div class="container">
			<div class="row">
				<div class="col-12">
					<h1 class="wow fadeInLeft" data-wow-duration="1.5s">Promotions</h1>
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<a href="javascript:void(0);" class="offer-link wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.5s"><img src="<?php echo base_url(); ?>uploads/logo_image/logo_<?php echo $promotion_banner_one; ?>.png" alt="offer"></a>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 promotions-div">
							<div class="row">
								<div class="col-12">
									<a href="javascript:void(0);" class="offer-link wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.5s"><img src="<?php echo base_url(); ?>uploads/logo_image/logo_<?php echo $promotion_banner_two; ?>.png" alt="offer"></a>
								</div>
								<div class="col-12">
									<a href="javascript:void(0);" class="offer-link wow fadeInUp" data-wow-delay="0.3s" data-wow-duration="1.5s"><img src="<?php echo base_url(); ?>uploads/logo_image/logo_<?php echo $promotion_banner_three; ?>.png" alt="offer"></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>	
		</div>	
	</section>
    
