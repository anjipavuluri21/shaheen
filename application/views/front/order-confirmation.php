<?php 
$this->load->view('front/includes/header');
        $sale_details = $this->db->get_where('sale',array('sale_id'=>$sale_id))->result_array();
        foreach($sale_details as $row){
           $vat= $row['vat'];
           $shipping=$row['shipping'];
    
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
				<li class="breadcrumb-item"><a href="index.php">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Order Confirmation</li>
			</ol>
		</nav>
	</div>
	<div class="container" id="ele2">
		<div class="row">
			<div class="col-12">
				<h1 class="wow fadeInLeft" data-wow-duration="1.5s">Order Confirmation</h1>
				<div class="row listing-item wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.5s">
					<div class="col-lg-5 col-md-5 col-sm-12 checkout-leftcol">
						<h2>Order Summary</h2>
						<div class="credintial-contents">
							<p><strong>Your payment has been successful.</strong></p>
							<p>Please check your email for reciept. Thank you for shopping at the Al Shaheen Nurseries Agriculture & Food Co.</p>
							<p><strong>We have received your order and details are as follows.</strong></p>
                                                        <?php
                        $info = json_decode($row['shipping_address'],true);?>
                   
							<p><strong>Shipping Address</strong></p>
							<p>116, Salem Al Mubarak Street, 5th Floor, Opp Olympia Towers Salmiya, Kuwait. Phone: +(965) - 25753210 / 25753202 / 25753155.</p>
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
										<?php echo date('d M, Y | h:m:i',$row['sale_datetime'] );?>
									</div>
								</div>
								<div class="item-summery">
									<div class="item-title">Payment Method</div>
									<div class="item-detail">
										 <?php echo ucfirst(str_replace('_', ' ', $info['payment_type'])); ?>
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
										<strong><?php echo currency($row['grand_total']);?></strong>
									</div>
								</div>
							</div>
							<div class="no-print">
								<a href="javascript:void(0);" class="button print-link">Print</a>
								<a href="listing.html" class="button">Continue Shopping</a>
							</div>
						</div>
					</div>
					<div class="col-lg-7 col-md-7 col-sm-12 checkout-rightcol">
						<h2>Cart Summary</h2>
						<div class="summary-right">
							<div class="shopping-summary">
								<div class="row">
									<div class="col-lg-7 col-md-7 col-sm-12">	
										<div class="shopping-box">
                                                                                                                                  <?php
                        $product_details = json_decode($row['product_details'], true);
                        $i =0;
                        $total = 0;
                        foreach ($product_details as $row1) {
                            $i++;
                    ?>
								<div class="cart-row">
									<div class="product-thumb">
										<div class="product-holder">
											<div class="product-img"><img src="<?php echo $row1['image']; ?>" alt="product"/></div>
											</div>
									</div>
									<div class="cart-dtl">
										<div class="product-dtl">
											<h2><?php echo $row1['name']; ?></h2>
											<ul>
												<li><label>Price</label><div><?php echo currency($row1['price']); ?></div></li>
												<li><label>Quantity</label><div><?php echo $row1['qty']; ?></div></li>
												<li><label>Sub Total</label><div><strong><?php echo currency($row1['subtotal']); $total += $row1['subtotal']; ?></strong></div></li>
											</ul>
										</div>
									</div>
								</div>
                        <?php } ?>
                                                                                    
								</div>
									</div>
									<div class="col-lg-5 col-md-5 col-sm-12">
										<div class="my-cart-items-sub">
											<ul class="summary-detail">
												<li>
													<label>Subtotal</label>
													<div class="summary-dtl"><?php echo currency($total);?></div>
												</li>
												<li>
													<label>Discount</label>
													<div class="summary-dtl">0 KWD</div>
												</li>
												<li>
													<label>Taxes</label>
													<div class="summary-dtl"><?php echo currency($vat);?></div>
												</li>
												<li>
													<label>Delivery Chanrges</label>
													<div class="summary-dtl"><?php echo currency($shipping);?></div>
												</li>
												<li>
													<label><strong>Total</strong></label>
													<div class="summary-dtl"><strong><?php echo currency($row['grand_total']);?></strong></div>
												</li>
												<li>
													<label>Payment Method</label>
													<div class="summary-dtl"><?php echo ucfirst(str_replace('_', ' ', $info['payment_type'])); ?></div>
												</li>
											</ul>
										</div>
										<!--<div class="payment-method">
											<div class="payment-lbl">Payment Method</div>
											<div class="payment-detail">
												<ul class="unstyled">
													<li><input type="radio" class="styled-checkbox" id="knet" name="payment" value=""><label for="knet" title="K-Net"><img src="images/k-net.png" alt="k net"></label><div>k net</div></li>
													<li><input type="radio" class="styled-checkbox" id="visa" name="payment" value=""><label for="visa" title="Credit Card"><img src="images/creditcard.png" alt="Credit Card"></label><div>Credit Card</div></li>
													<li><input type="radio" class="styled-checkbox" id="master" name="payment" value=""><label for="master" title="Cash on Delivery"><img src="images/cash.png" alt="Cash on Delivery"></label><div>Cash On Delivery</div></li>
												</ul>
											</div>
										</div>-->
										<!--<div class="row cspo-btn">
											<div class="col-12">
												<a href="order-confirmation.html" class="button fullwidth">Pay Now</a>
											</div>
										</div>-->
									</div>
								</div>		
							</div>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
        <?php  }
$this->load->view('front/includes/footer');
    ?> 