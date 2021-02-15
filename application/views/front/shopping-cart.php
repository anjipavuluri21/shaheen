<?php
$this->load->view('front/includes/header');
$carted = $this->cart->contents();
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
                <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>"><?php echo translate('home'); ?></a></li>
                <li class="breadcrumb-item active" aria-current="page">Shopping Cart</li>
            </ol>
        </nav>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1 class="wow fadeInLeft" data-wow-duration="1.5s">Shopping Cart</h1>
                <?php
                if (count($carted) <= 0) {
                    echo "No items in cart";
                } else {
                    ?>
                    <div class="row wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.5s">

                        <div class="col-lg-8 col-md-7 col-sm-12">
                            <div class="shopping-box">
                                <?php
                                foreach ($carted as $items) {
                                    $row = $this->db->get_where('product', array(
                                                'product_id' => $items['id']
                                            ))->row_array();
                                    ?> 
                                    <div class="cart-row" data-rowid="<?php echo $items['rowid']; ?>">
                                        <div class="product-thumb">
                                            <div class="product-holder">
                                                <div class="product-img"><img src="<?php echo $items['image']; ?>" alt="product"/></div>
                                                <a href="javascript:void(0);" class="quick-link-btn" data-src="<?php echo $items['image']; ?>" data-fancybox="product1"><span class="quick-img"><img src="<?= base_url() ?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></a>
                                                <div class="favourite-addtocart">
                                                    <a href="javascript:void(0);" class="favourite-anchor" data-pid="<?= $items['id'] ?>" title="Move to Faviourite"><img src="<?= base_url() ?>template/front/images/faviourite.svg" alt="faviourite"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cart-dtl">
                                            <div class="product-dtl">
                                                <h2><?php echo $items['name']; ?></h2>
                                                <p><?php echo currency($items['price']); ?></p>
                                            </div>
                                            <div class="quantity-div">
                                                <div class="quantity-sub">
                                                    <label>Quantity :</label>
                                                    <div class="quantity-control-div ">

                                                        <a href="javascript:void(0);" class="minus-btn minusBtn minus quantity-button" data-name='minus'>-</a>
                                                        <div class="quantity-control"><input type="text" class="form-control noValue quantity_field" data-rowid="<?php echo $items['rowid']; ?>" min="1" max="<?php echo $row['current_stock']; ?>" data-limit='no' name='qty' value="<?php if ($a = $this->crud_model->is_added_to_cart($row['product_id'], 'qty')) {
                                        echo $a;
                                    } else {
                                        echo '1';
                                    } ?>" id='qty' onblur="check_ok(this);"></div>
                                                        <a href="javascript:void(0);" class="plus-btn plusBtn plus quantity-button" data-name='plus'>+</a>
                                                    </div>
                                                </div>	
                                            </div>	
                                            <div class="pq-detail"><strong class="price-amount sub_total"><?php echo currency($items['subtotal']); ?></strong></div>
                                            <?php
                                            if ($row['current_stock'] > 0) {
                                                ?>
                                                <?php // echo $row['current_stock'].' '.$row['unit'].translate('_available');?>
                                                <?php
                                            } else {
                                                ?>
            <?php echo translate('out_of_stock'); ?>
            <?php
        }
        ?>
                                            <div class="remove-item"><a href="javascript:void(0);" class="remove-item-btn remove-anchor remove_one" data-pid="<?= $items['rowid'] ?>" data-page="main_cart">Remove Item</a></div>

                                        </div>
                                    </div>
    <?php } ?>
                            </div>	
                        </div>
                        <div class="col-lg-4 col-md-5 col-sm-12">
                            <div id="sidebar">
                                <div class="shopping-summary">
                                    <div class="my-cart-items-sub">
                                        <ul class="summary-detail">
                                            <li>
                                                <label>Subtotal</label>
                                                <div class="summary-dtl sub_total" id="total">37.500 KWD</div>
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
                                        </ul>
                                    </div>
                                </div>
                                <div class="row cspo-btn">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <a href="<?= base_url() ?>" class="button fullwidth">Continue Shopping</a>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <a href="#newAddressModel" data-fancybox class="button fullwidth">Checkout as Guest</a>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <a href="<?= base_url() ?>product/cart_checkout" class="button fullwidth">Place Order</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
<?php } ?>
            </div>
        </div>
    </div>
</section>
<div id="newAddressModel" class="popup-hidden new-address-model animated-modal checkout-addressModel">
	<h2 class="anim1">Add New Address</h2>
	<p class="anim2"><strong>PERSONAL DETAIL</strong></p>
	<div class="row anim3">
		<div class="col-lg-6 col-md-6 col-sm-6">
			<div class="form-group">
				<div class="inputbox"><input type="text" value="" placeholder="First Name" class="form-control"></div>
			</div>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6">
			<div class="form-group">
				<div class="inputbox"><input type="text" value="" placeholder="Last Name" class="form-control"></div>
			</div>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6">
		<div class="form-group">
			<div class="inputbox"><input type="text" value="" placeholder="Email" class="form-control"></div>
		</div>
		</div>	
		<div class="col-lg-6 col-md-6 col-sm-6">	
		<div class="form-group">
			<div class="inputbox"><input type="text" value="" placeholder="Mobile" class="form-control"></div>
		</div>
		</div>
	</div>
	<p class="anim4"><strong>ADDRESS</strong></p>
	<div class="row anim4">
		<div class="col-12">
			<div class="form-group">
				<ul class="unstyled">
					<li class="black">
						<input class="styled-checkbox" id="a_aparment" name="addresstype" type="radio" value="">
						<label for="a_aparment"><span>Apartment</span></label>
					</li>
					<li class="white">
						<input class="styled-checkbox" id="a_house" name="addresstype" type="radio" value="">
						<label for="a_house"><span>House</span></label>
					</li>
				</ul>
			</div>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6">
			<div class="form-group">
				<div class="inputbox"><input type="text" value="" placeholder="Area" class="form-control"></div>
			</div>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6">
			<div class="form-group">
				<div class="inputbox"><input type="text" value="" placeholder="Street" class="form-control"></div>
			</div>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6">
		<div class="form-group">
			<div class="inputbox"><input type="text" value="" placeholder="Building No" class="form-control"></div>
		</div>
		<div class="form-group">
			<div class="inputbox"><input type="text" value="" placeholder="Apartment No" class="form-control"></div>
		</div>
		</div>	
		<div class="col-lg-6 col-md-6 col-sm-6">	
		<div class="form-group">
			<div class="inputbox"><input type="text" value="" placeholder="Block" class="form-control"></div>
		</div>
		<div class="form-group">
			<div class="inputbox"><input type="text" value="" placeholder="Avenue / Judda" class="form-control"></div>
		</div>
		</div>	
		<div class="col-lg-6 col-md-6 col-sm-6">	
			<div class="form-group">
				<div class="inputbox"><input type="text" value="" placeholder="Floor No" class="form-control"></div>
			</div>
		</div>	
		<div class="col-12 change-div"><button class="button" type="submit">Submit</button></div>
	</div>
</div>	
<?php $this->load->view('front/includes/footer'); ?>
