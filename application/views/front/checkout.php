<?php $this->load->view('front/includes/header'); ?>
<?php
    $username   = "";
    $surname    = "";
    $email      = "";
    $phone      = "";
    $address1   = "";
    $address2   = "";
    $langlat    = "";
    $address    = "";
    $zip        = "";
if($this->session->userdata('user_login')== "yes"){
    $user       = $this->session->userdata('user_id'); 
    $user_data  = $this->db->get_where('user',array('user_id'=>$user))->row(); 
    $username   = $user_data->username;
    $surname    = $user_data->surname;  
    $email      = $user_data->email; 
    $phone      = $user_data->phone; 
    $address1   = $user_data->address1; 
    $address2   = $user_data->address2; 
    $langlat    = $user_data->langlat; 
    $address    = $address1.$address2;
    $zip        = $user_data->zip; 
    $address_data = $this->db->get_where('address', array('user_id' => $this->session->userdata('user_id')))->result_array();

  } 
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
                <li class="breadcrumb-item active" aria-current="page">Checkout</li>
            </ol>
        </nav>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1 class="wow fadeInLeft" data-wow-duration="1.5s">Checkout</h1>
                <div class="row wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.5s">
                    <div class="col-lg-4 col-md-4 col-sm-12 checkout-leftcol">
						<h2>Delivery Address</h2>
						<div class="address-contents">
							<ul class="unstyled store-list">
                                                            <?php 
                                       $address_data = $this->db->get_where('address', array('user_id' => $this->session->userdata('user_id')))->result_array();
                                       foreach($address_data as $row){
                                       ?>
									<li>
										<div class="store-radio">
											<input class="styled-checkbox" id="address<?php echo $row['id'];?>" name="address" type="radio" value="">
											<label for="address<?php echo $row['id'];?>"><span>Select</span></label>
										</div>	
										<h3><?php echo $row['address_type'];?></h3>
										<p>Bldg. 116, Block 2, Salem Al Mubarak St., 5th Floor, Opp.  Olympia Towers, Salmiya, Kuwait.</p>
										<div class="checkout-address">
											<div class="myprofile-main">
												<div class="profiledata add-new-adddress">
													<div class="change-div"><a href="javascript:void(0);" class="button change-btn">Edit Address</a></div>
												</div>
												<div class="profileform">
													<div class="form-group">
														<ul class="unstyled">
															<li><input type="radio" class="styled-checkbox" checked id="apartment" name="residence" value="">
																<label for="apartment">
																	Apartment
																</label>
															</li>
															<li><input type="radio" class="styled-checkbox" id="home" name="residence" value="">
																<label for="home">
																	Home
																</label>
															</li>
														</ul>
													</div>
													<div class="form-group">
														<div class="double"><input type="text" value="" placeholder="Title" class="form-control"></div>
														<div class="double"><input type="text" value="" placeholder="Governorate" class="form-control"></div>
													</div>
													<div class="form-group">
														<div class="double"><input type="text" value="" placeholder="Area" class="form-control"></div>
														<div class="double"><input type="text" value="" placeholder="Block" class="form-control"></div>
													</div>
													<div class="form-group"><input type="text" value="" placeholder="Street" class="form-control"></div>
													<div class="form-group">
														<div class="double"><input type="text" value="" placeholder="Building No" class="form-control"></div>
														<div class="double"><input type="text" value="" placeholder="Floor No" class="form-control"></div>
													</div>
													<div class="form-group"><input type="text" value="" placeholder="Flat No" class="form-control"></div>
													<div class="change-div"><button class="button" type="submit">Add Address</button> <a href="javascript:void(0);" class="button closebutton">Close</a></div>
												</div>
											</div>
										</div>
									</li>
                                       <?php } ?>
									
								</ul>
						</div>
					</div>
                    <div class="col-lg-8 col-md-8 col-sm-12 checkout-rightcol">
                        <h2>Cart Summary</h2>
                        <div class="summary-right">
                            <div class="shopping-summary">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12">
                                        <div class="shopping-box">
                                            <?php foreach ($carted as $items) { ?>      
                                                <div class="cart-row" data-rowid="<?php echo $items['rowid']; ?>">
                                                    <div class="product-thumb">
                                                        <div class="product-holder">
                                                            <div class="product-img"><img src="<?php echo $items['image']; ?>" alt="product"/></div>
                                                            <a href="javascript:void(0);" class="quick-link-btn" data-src="<?php echo $items['image']; ?>" data-fancybox="product1"><span class="quick-img"><img src="<?= base_url() ?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></span></a>
                                                        </div>
                                                    </div>
                                                    <div class="cart-dtl">
                                                        <div class="product-dtl">
                                                            <h2><?php echo $items['name']; ?></h2>
                                                            <ul>
                                                                <li><label>Price</label><div class="pric"><?php echo currency($items['price']); ?></div></li>
                                                                <li><label>Quantity</label><div><?php echo $items['qty']; ?></div></li>
                                                                <li><label>Sub Total</label><div><strong class="sub_total"><?php echo currency($items['subtotal']); ?></strong></div></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12">
                                        <div class="my-cart-items-sub">
                                            <ul class="summary-detail">
                                                <li>
                                                    <label>Subtotal</label>
                                                    <div class="summary-dtl" id="total">37.500 KWD</div>
                                                </li>
                                                <li>

                                                    <?php if ($this->cart->total_discount() <= 0 && $this->session->userdata('couponer') !== 'done' && $this->cart->get_coupon() == 0) { ?>

                                                        <div class="discount-row">
                                                            <div class="discount-lbl"><img src="<?= base_url() ?>template/front/images/percentage.svg" alt="product"/> Coupon Code</div>
                                                            <div class="discount-input">
                                                                <input type="text" id="" name="" placeholder="Coupon Code" class="form-control coupon_code">
                                                                <button class="button coupon_btn">Apply</button>
                                                            </div>
                                                        </div>

                                                    <?php } else { ?>
                                                        <p>
                                                            <?php echo translate('coupon_already_activated'); ?>
                                                        </p>
                                                    <?php } ?>

                                                </li>
                                                <li>
                                                    <label>Taxes</label>
                                                    <div class="summary-dtl" id="tax">1.000 KWD</div>
                                                </li>
                                                <li>
                                                    <label>Delivery Chanrges</label>
                                                    <div class="summary-dtl" id="shipping">5.000 KWD</div>
                                                </li>
                                                <li>
                                                    <label><strong>Total</strong></label>
                                                    <div class="summary-dtl" id="grand"><strong>43.500 KWD</strong></div>
                                                </li>
                                                <li class="coupon_disp" <?php if ($this->cart->total_discount() <= 0) { ?>style="display:none;" <?php } ?>>
                                                    <p><?php echo translate('coupon_discount'); ?></p>
                                                    <p id="disco">
                                                        <?php echo currency($this->cart->total_discount()); ?>
                                                    </p>
                                                </li>
                                                <p id="coupon_report"></p>
                                            </ul>
                                        </div>
                                        <?php
                                        echo form_open('', array(
                                            'method' =>
                                            'post', 'id' => 'coupon_set'));
                                        ?> 
                                        <input type="hidden" id="coup_frm" name="code">
                                        </form>
                                        <?php
echo form_open(base_url() . 'Product/cart_finish/go', array(
            'method' => 'post', 
            'enctype' => 'multipart/form-data', 
            'id' => 'cart_form' 
        )
    );
?>
                                        <div class="payment-method">
                                            <div class="payment-lbl">Payment Method</div>
                                            <div class="payment-detail">
                                                <ul class="unstyled">
                                                    <li><input type="radio" class="styled-checkbox" id="knet" name="payment_type" value="k_net"><label for="knet" title="K-Net"><img src="<?= base_url() ?>template/front/images/k-net.png" alt="k net"></label><div>k net</div></li>
                                                    <li><input type="radio" class="styled-checkbox" id="visa" name="payment_type" value="cash_on_delivery"><label for="visa" title="Credit Card"><img src="<?= base_url() ?>template/front/images/cash.jpg" alt="Credit Card"></label><div>Cash On Delivery</div></li>
                                                    <!--<li><input type="radio" class="styled-checkbox" id="visa" name="payment_type" value="cash_on_delivery"><label for="visa" title="Credit Card" onclick="radio_check('cod')"><img src="<?= base_url() ?>template/front/images/cash.jpg" alt="Credit Card"></label><div>Credit Card</div></li>-->
                                                </ul> 
                                                
                                            </div>
                                        </div>
                                   
                                        <div class="row cspo-btn">
                                            <div class="col-12">
                                                <input type="submit" class="button fullwidth disabled" value="Pay Now"/>
                                                <!--<a href="javascript:void(0);" class="button fullwidth disabled" id="order_place_btn" onclick="cart_submission(this);">Pay Now</a>-->
                                            </div>
                                        </div>
                                         </form>
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
<?php
$this->load->view('front/includes/footer');
?>