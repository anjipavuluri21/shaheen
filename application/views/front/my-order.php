<?php 
$this->load->view('front/includes/header');
$set_lang=$this->session->userdata('language');
//$page_data['orders'] = $this->db->order_by("sale_id", "desc")->get('sale', $config['per_page'], $para2)->result_array();
//print_r($page_data['orders']);exit;
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
				<li class="breadcrumb-item active" aria-current="page"><?php echo translate('my_order');?></li>
			</ol>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1 class="wow fadeInLeft" data-wow-duration="1.5s"><?php echo translate('my_order');?></h1>
				<div class="row listing-item wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.5s">
					<div class="col-lg-8 col-md-8 col-sm-12">
						
                                       
                                            <div class="shopping-box ord-hstr-div">
                                                     <?php 
	$i = 0;
	foreach ($orders as $row) {
		$i++;
                $vat= $row['vat'];
           $shipping=$row['shipping'];
?>
                                           
                                                    
							 <div class="order-histotry">
                                                             
							<a href="javascript:void(0);" class="order-tab active"><span class="order-crumb"><?php echo $i; ?>. Order</span><span class="order-date"><?php echo date('d M Y',$row['sale_datetime']); ?></span></a>
							<div class="order-histotry-sub">
								<div class="product-my-cart">
                                                                    <?php
                        $product_details = json_decode($row['product_details'], true);
                  
                        $total = 0;
                        foreach ($product_details as $row1) {
                         
                    ?>
									<div class="cart-row">
										<div class="product-thumb">
											<div class="product-holder">
												<div class="product-img"><img src="<?php echo $row1['image']; ?>" alt="product"/></div>
												<div class="favourite-addtocart">
													<a href="javascript:void(0);" data-src="<?php echo $row1['image']; ?>" data-fancybox title="Large"><img src="<?=base_url()?>template/front/images/view.svg" alt="Large"></a>
												</div>										
											</div>								
										</div>
										<div class="cart-dtl">
											<div class="product-dtl">
												<h2><?php echo $row1['name']; ?></h2>
												<ul>
													<li><label><?php echo translate('price');?></label><div><?php echo currency($row1['price']); ?></div></li>
													<li><label><?php echo translate('quantity');?></label><div><?php echo $row1['qty']; ?></div></li>
													<li><label><?php echo translate('subtotal');?></label><div><strong><?php echo currency($row1['subtotal']); $total += $row1['subtotal']; ?></strong></div></li>
												</ul>
											</div>
										</div>
									</div>
                        <?php } ?>
									
								</div>
								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-6">
										<div class="my-cart-items-sub padding-less">
											<ul class="summary-detail">
												<li>
													<label><?php echo translate('subtotal');?></label>
													<div class="summary-dtl"><?php echo currency($total);?></div>
												</li>
<!--												<li>
													<label>Discount</label>
													<div class="summary-dtl">-2.000 KWD</div>
												</li>-->
												<li>
													<label><?php echo translate('taxes');?></label>
													<div class="summary-dtl"><?php echo currency($vat);?></div>
												</li>
												<li>
													<label><?php echo translate('delivery_charges');?></label>
													<div class="summary-dtl"><?php echo currency($shipping);?></div>
												</li>
												<li>
													<label><strong><?php echo translate('total');?></strong></label>
													<div class="summary-dtl"><strong><?php echo currency($row['grand_total']);?></strong></div>
												</li>
											</ul>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6">
										<div class="final-summery">
											<div class="item-summery">
												<div class="item-title">Order ID</div>
												<div class="item-detail">
													<?php echo $row['sale_code']; ?>
												</div>
											</div>							
											<div class="item-summery">
												<div class="item-title">Transaction ID</div>
												<div class="item-detail">
													SNAFCO62644545
												</div>
											</div>
											<div class="item-summery">
												<div class="item-title">Date &amp; Time</div>
												<div class="item-detail">
                                                                                                    <?php echo date('d M, Y | h:m',$row['sale_datetime'] );?>
												</div>
											</div>
											<div class="item-summery">
												<div class="item-title">Payment Method</div>
												<div class="item-detail">
													<?php echo ucfirst(str_replace('_', ' ', $row['payment_type'])); ?>
												</div>
											</div>
											<div class="item-summery discount-clr">
												<div class="item-title">Payment status</div>
												<div class="item-detail">
													<strong><?php echo translate($this->crud_model->sale_payment_status($row['sale_id'])); ?></strong>
												</div>
											</div>
											<div class="item-summery">
												<div class="item-title"><strong>Grand Amount</strong></div>
												<div class="item-detail">
													<strong><?php echo currency($row1['grand_total']); ?></strong>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						 <?php }
                                            ?>
							 
						</div>	
					</div>
					<div class="col-lg-4 col-md-4 col-sm-12 dashboard-main"><a href="javascript:void(0);" charset="dashboard-link"><span></span></a>
						<div id="sidebar">
							<h3>My Account</h3>
							<div class="shopping-summary">
								<div class="my-cart-items-sub">
									<ul class="profile-links">
										<li><a href="<?=base_url().'home/profile/info'?>"><?php echo translate('my_profile');?></a></li>
										<li><a href="<?=base_url().'home/profile/order_history'?>" class="active"><?php echo translate('my_order');?></a></li>
										<li><a href="<?=base_url().'home/wish_listed'?>"> <?php echo translate('my_favourite');?></a></li>
										<li><a href="<?=base_url().'home/profile/update_info'?>"><?php echo translate('my_address');?></a></li>
										<li><a href="<?=base_url().'home/profile/update_profile'?>"><?php echo translate('change_password');?></a></li>
										<li><a href="<?=base_url().'home/logout'?>"><?php echo translate('logout');?></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<?php 
$this->load->view('front/includes/footer');
?>