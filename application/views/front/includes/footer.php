<?php
$footer_text = $this->db->get_where('general_settings', array('type' => 'footer_text'))->row()->value;
?>
<footer class="parallaxcont">
		<div class="container">
	<footer class="parallaxcont">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 foot-left">
					<div class="row">
						<div class="col-lg-5 col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.5s">
							<div class="banner-logo"><a href="index.html"><img src="images/banner-SNAFCO.jpg" alt="SNAFCO"></a></div>
							<h3>Socialize with us</h3>
							<ul class="social-media">
								<li><a href="javascript:void(0);"><img src="images/twitter.svg" alt="twitter"></a></li>
								<li><a href="javascript:void(0);"><img src="images/linkedin.svg" alt="linkedin"></a></li>
								<li><a href="javascript:void(0);"><img src="images/instagram.svg" alt="instagram"></a></li>
								<li><a href="javascript:void(0);"><img src="images/youtube.svg" alt="youtube"></a></li>
							</ul>
						</div>
						<div class="col-lg-7 col-md-6 col-sm-6 foot-address wow fadeInUp" data-wow-delay="0.3s" data-wow-duration="1.5s">
							<h4>Address</h4>
							<h5>Alshaheen nurseries agriculture and food co.</h5>
							<p>P O Box : 22138 Safat<br>Kuwait Code : 13082</p>
							<p>Tel : +965 24740140 <br>Fax : +965 24713823</p>
							<h4>Projects Division</h4>
							<p>Tel. : +965 99448022</p>
							<h4>Wholesale Division</h4>
							<p>Tel. : +965 99448122<br>Email : <a href="mailto:info@alshaheen.com.kw">info@alshaheen.com.kw</a></p>
						</div>	
					</div>
				</div>
				<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 foot-right wow fadeInUp" data-wow-delay="0.6s" data-wow-duration="1.5s">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3478.863829695439!2d47.95000581550534!3d29.315669759583358!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3fcf9ae5774903c7%3A0x7c3399ed44ad6c86!2sAl%20Shaheen%20Nurseries%20Agriculture%20%26%20Food%20Co.!5e0!3m2!1sen!2sin!4v1602572751767!5m2!1sen!2sin" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
				</div>
				<div class="col-12 rights-design-by">
					<div class="rights">
						<p>All Rights Reserved Al-Shaheen</p>
					</div>
					<div class="design-by">
						<p><a href="https://design-master.com/" target="_blank">Design by : Design Master</a></p>
					</div>
				</div>
			</div>	
		</div>				
	</footer>
    </div>	
    <div id="loginModel" class="popup-hidden animated-modal width315px modelbox">
<?php
echo form_open(base_url() . 'home/login/do_login/', array(
    'class' => 'form-login',
    'method' => 'post',
    'id' => ''
));
?>
        <h2 class="anim1">Sign In</h2>
        <div class="odd-even">
            <div class="form-group leftanim animstep1"><input type="text" class="form-control" placeholder="Mobile / Email" value="" name="email"/></div>
            <div class="form-group rightanim animstep1"><input type="password" class="form-control" placeholder="Password" value="" name="password"/></div>
        </div>	
        <div class="form-group text-center anim2"><button  type="submit" class="reverse-button" id="login_btn">Sign In</button></div>
        </form>
        <div class="forgot-main">
            <div class="forgot-link-main anim3"><a href="javascript:void(0);" class="forgot-link">Forgot Password</a></div>
            <div class="forgot-main-sub">
                <div class="forgot-div"><input type="text" class="form-control" placeholder="Enter mobile or email" value=""/><button type="submit" class="dark-button">Reset Password</button></div>
            </div>
        </div>	
        <p class="forgot-reg anim5">Don't have an Account ? <a href="javascript:void(0);" onclick="$.fancybox.close();" data-fancybox data-src="#registerModel" data-animation-duration="700">REGISTER</a></p>
    </div>
  
    <div id="registerModel" class="popup-hidden animated-modal width315px modelbox">
<?php
echo form_open(base_url() . 'home/registration/add_info/', array(
    'class' => 'form-signup',
    'method' => 'post',
    'id' => 'signup_form'
));
?>
        <h2 class="anim1">Sign Up</h2>

        <div class="form-group anim2"><input type="text" class="form-control" placeholder="Full Name" value="" name="username"/></div>
        <div class="odd-even">
            <div class="form-group leftanim animstep3"><input type="text" class="form-control" placeholder="Mobile Number" value="" name="phone"/></div>
            <div class="form-group rightanim animstep3"><input type="email" class="form-control" placeholder="Email Address" value="" name="email"/></div>
        </div>
        <div class="odd-even">
            <div class="form-group leftanim animstep4"><input type="Password" class="form-control" placeholder="Password" value="" name="password1"/></div>
            <div class="form-group rightanim animstep4"><input type="password" class="form-control" placeholder="Confirm Password" value="" name="password2"/></div>
        </div>
        <div class="form-group text-center anim5"><button type="submit" class="reverse-button">Register</button></div>
        <p class="login-link-div anim6">Already an Account ? <a href="javascript:void(0);" onclick="$.fancybox.close();" data-fancybox data-src="#loginModel" data-animation-duration="700">LOGIN</a></p>
        </form>
    </div>
    <!--<div id="verifyModel" class="popup-hidden animated-modal width315px modelbox text-center">
            <h2 class="anim1">Enter OTP</h2>
            <div class="form-group anim2"><p>Please enter OTP code which you have received on your Mobile/Email.</p></div>
            <div class="form-group anim3"><input type="text" class="form-control text-center" placeholder="Enter otp" value="" name="g-recaptcha-response"/></div>
            <div class="text-center anim4"><button type="submit" class="reverse-button" onClick="location.href='my-profile.php'">Verify</button> <a href="javascript:void(0);" class="resend-otp">Resend OTP</a></div>
    </div>-->
  
  	
    <script type="text/javascript" src="<?= base_url() ?>template/front/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="<?= base_url() ?>template/front/js/jpreloader.js"></script>
    <script type="text/javascript" src="<?= base_url() ?>template/front/js/loader.js"></script>
    <script type="text/javascript" src="<?= base_url() ?>template/front/js/wow.min.js"></script>
    <script type="text/javascript" src="<?= base_url() ?>template/front/js/webslidemenu.js"></script>
    <script type="text/javascript" src="<?= base_url() ?>template/front/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="<?= base_url() ?>template/front/fancybox-master/jquery.fancybox.min.js"></script>
    <script type="text/javascript" src="<?= base_url() ?>template/front/fancybox-master/fancybox.js"></script>
    <!--start swiper-->
    <script type="text/javascript" src="<?= base_url() ?>template/front/swiper/swiper.min.js"></script>
    <script type="text/javascript" src="<?= base_url() ?>template/front/swiper/swiper.functions.js"></script>
    <!--end swiper-->
    <script type="text/javascript" src="<?= base_url() ?>template/front/js/parallaxscroll.js"></script>	
    <script type="text/javascript" src="<?= base_url() ?>template/front/js/custom.js"></script>
    <script>
            $(document).ready(function () {
                reload_header_cart();
                update_calc_cart();
                $('body').on('click', '.remove_one', function () {
                    var here = $(this);
                    var rowid = here.data('pid');
                    $.ajax({
                        url: base_url + 'Product/cart/remove_one/' + rowid,

                        success: function (data) {
                            alert("Removed");
                            //sound('cart_product_removed');
                            reload_header_cart();


                        },
                        error: function (e) {
                            console.log(e)
                        }
                    });
                });
            });
            var base_url = "<?php echo base_url(); ?>";
            var product_added = "<?php echo translate('product_added_to_cart'); ?>";
            var added_to_cart = "<?php echo translate('added_to_cart'); ?>";
            var quantity_exceeds = "<?php echo translate('product_quantity_exceed_availability!'); ?>";
            var product_already = "<?php echo translate('product_already_added_to_cart!'); ?>";
            var wishlist_add = "<?php echo translate('product_added_to_wishlist'); ?>";
            var wishlist_add1 = "<?php echo translate('wished'); ?>";
            var wishlist_adding = "<?php echo translate('wishing..'); ?>";
            var wishlist_remove = "<?php echo translate('product_removed_from_wishlist'); ?>";
            var compare_add = "<?php echo translate('product_added_to_compared'); ?>";
            var compare_add1 = "<?php echo translate('compared'); ?>";
            var compare_adding = "<?php echo translate('working..'); ?>";
            var compare_remove = "<?php echo translate('product_removed_from_compare'); ?>";
            var compare_cat_full = "<?php echo translate('compare_category_full'); ?>";
            var compare_already = "<?php echo translate('product_already_added_to_compare'); ?>";
            var rated_success = "<?php echo translate('product_rated_successfully'); ?>";
            var rated_fail = "<?php echo translate('product_rating_failed'); ?>";
            var rated_already = "<?php echo translate('you_already_rated_this_product'); ?>";
            var working = "<?php echo translate('working..'); ?>";
            var subscribe_already = "<?php echo translate('you_already_subscribed'); ?>";
            var subscribe_success = "<?php echo translate('you_subscribed_successfully'); ?>";
            var subscribe_sess = "<?php echo translate('you_already_subscribed_thrice_from_this_browser'); ?>";
            var logging = "<?php echo translate('logging_in..'); ?>";
            var login_success = "<?php echo translate('you_logged_in_successfully'); ?>";
            var login_fail = "<?php echo translate('login_failed!_try_again!'); ?>";
            var logup_success = "<?php echo translate('you_have_registered_successfully'); ?>";
            var logup_fail = "<?php echo translate('registration_failed!_try_again!'); ?>";
            var logging = "<?php echo translate('logging_in..'); ?>";
            var submitting = "<?php echo translate('submitting..'); ?>";
            var email_sent = "<?php echo translate('email_sent_successfully'); ?>";
            var email_noex = "<?php echo translate('email_does_not_exist!'); ?>";
            var email_fail = "<?php echo translate('email_sending_failed!'); ?>";
            var logging = "<?php echo translate('logging_in'); ?>";
            var cart_adding = "<?php echo translate('adding_to_cart..'); ?>";
            var cart_product_removed = "<?php echo translate('product_removed_from_cart'); ?>";
            var required = "<?php echo translate('the_field_is_required'); ?>";
            var mbn = "<?php echo translate('must_be_a_number'); ?>";
            var mbe = "<?php echo translate('must_be_a_valid_email_address'); ?>";
            var valid_email = "<?php echo translate('enter_a_valid_email_address'); ?>";
            var applying = "<?php echo translate('applying..'); ?>";
            var coupon_not_valid = "<?php echo translate('coupon_not_valid'); ?>";
            var coupon_discount_successful = "<?php echo translate('coupon_discount_successful'); ?>";
            var currency = "<?php echo currency(); ?>";
            var exchange = Number(<?php echo exchange(); ?>);

            var $j = jQuery.noConflict();
            var $ = jQuery.noConflict();
            function reload_header_cart() {
                $.getJSON(base_url + "Product/cart/whole_list", function (result) {
                    var total = 0;
                    var whole_list = '';
                    var cart_checkout_section = "";
                    var count = Object.keys(result).length;
                    $.each(result, function (i, field) {
                        total += Number(field['subtotal']) * exchange;


                        whole_list += "<div class=\"col-12\"><div class=\"product-thumb\"><div class=\"product-holder\">"
                                + "<div class=\"product-img\"><img src=\"" + field['image'] + "\" alt=\"product\"/></div>"
                                + "<a href=\"javascript:void(0);\" class=\"quick-link-btn\" data-src=\"" + field['image'] + "\" data-fancybox=\"product" + field['id'] + "\"><span class=\"quick-img\">"
                                + "<img src=\"" + base_url + "template/front/images/view.svg\" alt=\"Quick View\"></span><span class=\"quick-text\">\View large\</span></a>"
                                + "<a href=\"javascript:void(0);\" class=\"none\" data-src=\"" + base_url + "template/front/products/seeds/image00015.jpg\" data-fancybox=\"product1\"></a>"
                                + "<div class=\"favourite-addtocart\">"
                                + "<a href=\"javascript:void(0);\" class=\"remove-anchor remove_one\" data-pid=" + field['rowid'] + " title=\"Remove Item\"><img src=\"" + base_url + "template/front/images/close.svg\" alt=\"Remove Item\"></a>"
                                + "</div>"
                                + "</div>"
                                + "<div class=\"product-dtl\">"
                                + "<h2>" + field['name'] + " X " + field['qty'] + "</h2>"
                                + "<p>" + currency + (Number(field['price']) * exchange * Number(field['qty'])).toFixed(2) + "</p>"
                                + "</div>"
                                + "</div>"
                                + "</div>";
                        


                    });
                    if (count > 0) {
                            cart_checkout_section += "<div class=\"total-amt\"><p>Total : <strong class=\"shopping-cart__total\">" + currency + total.toFixed(2) + "</strong></p></div>"
                                    + "<a href=\"shopping-cart.php\" class=\"button\">Show Cart</a>"
                                    + "<a href=\"" + base_url + "product/cart_checkout\" class=\"button\">Checkout</a>";

                        } else {
                            cart_checkout_section += "<h3>Cart is empty</h3>";
                        }
                    $('.cart_num').html(count);

                    $('.top_carted_list').html(whole_list);
                    $('.cart-checkout').html(cart_checkout_section);
                });
                $.getJSON(base_url + "Product/wishlist/num", function (result) {

                    //			var count = Object.keys(result);
                    $('.wish_num').html(result);

                });
            }

            $(".addtocart-anchor").click(function () {
                //  alert( "Handler for .click() called." );
                var product = $(this).data('pid');
                var qty = 1;
                $.ajax({
                    url: base_url + 'Product/cart/add/' + product + '/' + qty,
                    type: 'GET', // form submit method get/post
                    dataType: 'html', // request type html/json/xml
                    //				data 		: option, // serialize form data 
                    cache: false,
                    contentType: false,
                    processData: false,

                    success: function (data) {
                        alert(data);
                        reload_header_cart();
                        //                        location.reload();


                    },
                    error: function (e) {
                        console.log(e)
                    }
                });
            });
            $('.favourite-anchor').click(function (e) {
                e.preventDefault();
                //$j('#modalAddToWishlist').modal("toggle");		
                //$j('#modalAddToWishlist .loading').show();
                //$j('#modalAddToWishlist .success').hide();	
                var state = check_login_stat('state');
                var product = $(this).data('pid');
                var button = $(this);

                state.success(function (data) {
                    if (data == 'hypass') {
                        $.ajax({
                            url: base_url + 'Product/wishlist/add/' + product,
                            beforeSend: function () {
                            },
                            success: function (data) {
                                alert(data);
                                reload_header_cart();
                            },
                            error: function (e) {
                                console.log(e)
                            }
                        });
                    } else {
                        //                        alert();
                        $('.login-link').trigger('click');

                    }
                });

            });
            function check_login_stat(thing) {
                return $.ajax({
                    url: '<?php echo base_url(); ?>home/check_login/' + thing
                });
            }
            function update_calc_cart() {
                var url = base_url + 'Product/cart/calcs/full';
                var total = $('#total');
                var ship = $('#shipping');
                var tax = $('#tax');
                var grand = $('#grand');

                $.ajax({
                    url: url,
                    beforeSend: function () {
                        total.html('...');
                        ship.html('...');
                        tax.html('...');
                        grand.html('...');
                    },
                    success: function (data) {
                        var res = data.split('-');
                        total.html(res[0]).fadeIn();
                        ship.html(res[1]).fadeIn();
                        tax.html(res[2]).fadeIn();
                        grand.html(res[3]).fadeIn();
                        //other_action();
                    },
                    error: function (e) {
                        console.log(e)
                    }
                });
            }
            function update_prices(){

                        var url = base_url+'Product/cart/calcs/prices';
                        $.ajax({
                            url: url,
                            dataType: 'json', 
                            beforeSend: function() {

                            },
                            success: function(data) {
                                $.each(data, function(key, item) {
                                    var elem = $(".cart-row").find("[data-rowid='" + item.id + "']");
                                    elem.find('.sub_total').html(item.subtotal);
                                    elem.find('.pric').html(item.price);
                                });
                            },
                            error: function(e) {
                                console.log(e)
                            }
                        });
                    }
            $('body').on('click', '.coupon_btn', function () {
                var txt = $(this).html();
                var code = $('.coupon_code').val();
                $('#coup_frm').val(code);
                var form = $('#coupon_set');
                var formdata = false;
                if (window.FormData) {
                    formdata = new FormData(form[0]);
                }
                var datas = formdata ? formdata : form.serialize();
                $.ajax({
                    url: base_url + 'Product/coupon_check/',
                    type: 'POST', // form submit method get/post
                    dataType: 'html', // request type html/json/xml
                    data: datas, // serialize form data 
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function () {
                        $(this).html(applying);
                    },
                    success: function (result) {
                        if (result == 'nope') {
                            alert(coupon_not_valid);
                            update_calc_cart();
                            reload_header_cart();
                        } else {
                            update_calc_cart();
                            reload_header_cart();
                            update_prices();
                            var re = result.split(':-:-:');
                            var ty = re[0];
                            var ts = re[1];
                            $("#coupon_report").fadeOut();
                            alert(coupon_discount_successful);
                            if (ty == 'total') {
                                $(".coupon_disp").show();
                                $("#disco").html(re[2]);
                            }
                            $("#coupon_report").html('<h3>' + ts + '</h3>');
                            $("#coupon_report").fadeIn();
                        }
                    }
                });
            });
            function cart_submission(elem){

                        if(elem.hasAttribute("disabled") || elem.classList.contains("disabled")){
                            return;
                        }
alert();
                        //var payment_type = $('#ab').val();
                        var payment_type = '';
                        var state = check_login_stat('state');
                        state.success(function (data) {
                                 var form = $('#cart_form');
                                 form.submit();
                        });
                    }
                     function radio_check(id){
        $( "#knet" ).prop( "checked", false );
        $( "#cod" ).prop( "checked", false );
        $( "#"+id ).prop( "checked", true );
    }
    </script>

<?php
//include '../script_texts.php';
?>
</body>
</html>