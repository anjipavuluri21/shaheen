<?php 
$this->load->view('front/includes/header');
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
				<li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">My Orders</li>
			</ol>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1 class="wow fadeInLeft" data-wow-duration="1.5s">My Orders</h1>
				<div class="row listing-item wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.5s">
					<div class="col-lg-8 col-md-8 col-sm-12">
						
                                       
                                            <div class="shopping-box ord-hstr-div">
                                                     <?php 
	$i = 0;
	foreach ($orders as $row1) {
		$i++;
?>
                                           
                                                    
							 <div class="order-histotry">
                                                             
							<a href="javascript:void(0);" class="order-tab active"><span class="order-crumb"><?php echo $i; ?>. Order</span><span class="order-date"><?php echo date('d M Y',$row1['sale_datetime']); ?></span></a>
							<div class="order-histotry-sub">
								<div class="product-my-cart">
									<div class="cart-row">
										<div class="product-thumb">
											<div class="product-holder">
												<div class="product-img"><img src="images/product-1.jpg" alt="product"/></div>
												<div class="favourite-addtocart">
													<a href="javascript:void(0);" data-src="images/product-1.jpg" data-fancybox title="Large"><img src="images/view.svg" alt="Large"></a>
												</div>										
											</div>								
										</div>
										<div class="cart-dtl">
											<div class="product-dtl">
												<h2>Calathea Orbifolia</h2>
												<ul>
													<li><label>Price</label><div>12.500 KWD</div></li>
													<li><label>Quantity</label><div>1</div></li>
													<li><label>Sub Total</label><div><strong>12.500 KWD</strong></div></li>
												</ul>
											</div>
										</div>
									</div>
									
								</div>
								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-6">
										<div class="my-cart-items-sub padding-less">
											<ul class="summary-detail">
												<li>
													<label>Subtotal</label>
													<div class="summary-dtl">37.500 KWD</div>
												</li>
												<li>
													<label>Discount</label>
													<div class="summary-dtl">-2.000 KWD</div>
												</li>
												<li>
													<label>Taxes</label>
													<div class="summary-dtl">1.000 KWD</div>
												</li>
												<li>
													<label>Delivery Chanrges</label>
													<div class="summary-dtl">5.000 KWD</div>
												</li>
												<li>
													<label><strong>Total</strong></label>
													<div class="summary-dtl"><strong>41.500 KWD</strong></div>
												</li>
											</ul>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6">
										<div class="final-summery">
											<div class="item-summery">
												<div class="item-title">Order ID</div>
												<div class="item-detail">
													SNAFCO448455
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
													15/10/2020 | Time: 10:45
												</div>
											</div>
											<div class="item-summery">
												<div class="item-title">Payment Method</div>
												<div class="item-detail">
													K-NET
												</div>
											</div>
											<div class="item-summery discount-clr">
												<div class="item-title">Payment status</div>
												<div class="item-detail">
													<strong><?php 
				$payment_status = json_decode($row1['payment_status'],true); 
				foreach ($payment_status as $dev) {
			?>

			<span class="label label-<?php if($dev['status'] == 'paid'){ ?>success<?php } else { ?>danger<?php } ?>" style="margin:2px;">
			<?php
					if(isset($dev['vendor'])){
						echo $this->crud_model->get_type_name_by_id('vendor', $dev['vendor'], 'display_name').' ('.translate('vendor').') : '.$dev['status'];
					} else if(isset($dev['admin'])) {
						echo translate('admin').' : '.$dev['status'];
					}
			?>
			</span>
			<br>
			<?php
				}
			?></strong>
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
										<li><a href="<?=base_url().'home/profile/info'?>">My Profile</a></li>
										<li><a href="<?=base_url().'home/profile/order_history'?>" class="active">My Order</a></li>
										<li><a href="my-favourite.php">My Favourite</a></li>
										<li><a href="<?=base_url().'home/profile/update_info'?>">My Address</a></li>
										<li><a href="<?=base_url().'home/profile/update_profile'?>">Change Password</a></li>
										<li><a href="<?=base_url().'home/logout'?>">Logout</a></li>
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