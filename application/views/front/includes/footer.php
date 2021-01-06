<footer class="parallaxcont">
		<div class="container">
<footer class="parallaxcont">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 foot-left">
					<div class="row">
						<div class="col-lg-5 col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.5s">
							<div class="banner-logo"><a href="index.php"><img src="<?=base_url()?>template/front/images/banner-SNAFCO.jpg" alt="SNAFCO"></a></div>
							<h3>Socialize with us</h3>
							<ul class="social-media">
								<li><a href="javascript:void(0);"><img src="<?=base_url()?>template/front/images/twitter.svg" alt="twitter"></a></li>
								<li><a href="javascript:void(0);"><img src="<?=base_url()?>template/front/images/linkedin.svg" alt="linkedin"></a></li>
								<li><a href="javascript:void(0);"><img src="<?=base_url()?>template/front/images/instagram.svg" alt="instagram"></a></li>
								<li><a href="javascript:void(0);"><img src="<?=base_url()?>template/front/images/youtube.svg" alt="youtube"></a></li>
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
   
<div id="detail_1" class="popup-hidden animated-modal modelbox detail-popup">
	<div class="quick-view-main">
		<div class="row product-detail">
			<div class="col-lg-6 col-md-6 col-sm-6">
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
			<div class="col-lg-6 col-md-6 col-sm-6">	
				<div class="product-dtl-text">
					<h1>Calathea Orbifolia</h1>
					<p>If you have space to spare, make an impressive display in your living room with a great eye-catcher Anthurium plant.</p>
					<p><strong>What makes it special:</strong></p>
					<ul class="listing">
						<li>One of the rarest indoor flowering plants.</li>
						<li>NASA recommended air purifier plant.</li>
						<li>Low maintenance plant.</li>
						<li>Anthurium symbolizes hospitality.</li>
					</ul>
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
					<div c class="btn-div"><a href="javascript:void(0);" class="reverse-button addtocart-popbtn">Add To Cart</a></div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="detail_2" class="popup-hidden animated-modal modelbox detail-popup">
	<div class="quick-view-main">
		<div class="row product-detail">
			<div class="col-lg-6 col-md-6 col-sm-6">
				<div class="productdetail-container swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><div class="quick-view-img" data-src="<?=base_url()?>template/front/images/product-2zoom.jpg" data-fancybox="gallery2"><img src="<?=base_url()?>template/front/images/product-2zoom.jpg" alt=""></div></div>
						<div class="swiper-slide"><div class="quick-view-img" data-src="<?=base_url()?>template/front/images/product-2zoom2.jpg" data-fancybox="gallery2"><img src="<?=base_url()?>template/front/images/product-2zoom2.jpg" alt=""></div></div>
						<div class="swiper-slide"><div class="quick-view-img" data-src="<?=base_url()?>template/front/images/product-2zoom3.jpg" data-fancybox="gallery2"><img src="<?=base_url()?>template/front/images/product-2zoom3.jpg" alt=""></div></div>
					</div>
					<div class="swiper-button-prev productdetail-button-prev"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
				l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
					<div class="swiper-button-next productdetail-button-next"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
				l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
				</div>
			</div>	
			<div class="col-lg-6 col-md-6 col-sm-6">	
				<div class="product-dtl-text">
					<h1>Brown Ceramic Planter with Ladybugs Artwork.</h1>
					<p>We work directly with factories, artists, and workshops, and we're happy to offer wide assortment of high quality goods, fast and free US shipping, and 30-Days return policy!</p>
					<p><strong>What makes it special:</strong></p>
					<ul class="listing">
						<li>Made of ceramic.</li>
						<li>Can be used indoors or outdoors.</li>
						<li>Material: ceramics</li>
						<li>Entirely handmade</li>
						<li>Wipe with a clean, dry cloth. If required, wash with water and dry immediately.</li>
					</ul>
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
					<div c class="btn-div"><a href="javascript:void(0);" class="reverse-button addtocart-popbtn">Add To Cart</a></div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="detail_3" class="popup-hidden animated-modal modelbox detail-popup">
	<div class="quick-view-main">
		<div class="row product-detail">
			<div class="col-lg-6 col-md-6 col-sm-6">
				<div class="productdetail-container swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><div class="quick-view-img" data-src="<?=base_url()?>template/front/images/product-3zoom.jpg" data-fancybox="gallery3"><img src="<?=base_url()?>template/front/images/product-3zoom.jpg" alt=""></div></div>
						<div class="swiper-slide"><div class="quick-view-img" data-src="<?=base_url()?>template/front/images/product-3zoom2.jpg" data-fancybox="gallery3"><img src="<?=base_url()?>template/front/images/product-3zoom2.jpg" alt=""></div></div>
						<div class="swiper-slide"><div class="quick-view-img" data-src="<?=base_url()?>template/front/images/product-3zoom3.jpg" data-fancybox="gallery3"><img src="<?=base_url()?>template/front/images/product-3zoom3.jpg" alt=""></div></div>
					</div>
					<div class="swiper-button-prev productdetail-button-prev"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
				l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
					<div class="swiper-button-next productdetail-button-next"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
				l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
				</div>
			</div>	
			<div class="col-lg-6 col-md-6 col-sm-6">	
				<div class="product-dtl-text">
					<h1>Brown Ceramic Planter with Ladybugs Artwork.</h1>
					<p>We work directly with factories, artists, and workshops, and we're happy to offer wide assortment of high quality goods, fast and free US shipping, and 30-Days return policy!</p>
					<p><strong>What makes it special:</strong></p>
					<ul class="listing">
						<li>Made of ceramic.</li>
						<li>Can be used indoors or outdoors.</li>
						<li>Material: ceramics</li>
						<li>Entirely handmade</li>
						<li>Wipe with a clean, dry cloth. If required, wash with water and dry immediately.</li>
					</ul>
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
					<div c class="btn-div"><a href="javascript:void(0);" class="reverse-button addtocart-popbtn">Add To Cart</a></div>
				</div>
			</div>
		</div>
	</div>
</div>	
<div id="detail_4" class="popup-hidden animated-modal modelbox detail-popup">
	<div class="quick-view-main">
		<div class="row product-detail">
			<div class="col-lg-6 col-md-6 col-sm-6">
				<div class="productdetail-container swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><div class="quick-view-img" data-src="<?=base_url()?>template/front/images/product-4zoom.jpg" data-fancybox="gallery3"><img src="<?=base_url()?>template/front/images/product-4zoom.jpg" alt=""></div></div>
						<div class="swiper-slide"><div class="quick-view-img" data-src="<?=base_url()?>template/front/images/product-4zoom2.jpg" data-fancybox="gallery3"><img src="<?=base_url()?>template/front/images/product-4zoom2.jpg" alt=""></div></div>
						<div class="swiper-slide"><div class="quick-view-img" data-src="<?=base_url()?>template/front/images/product-4zoom3.jpg" data-fancybox="gallery3"><img src="<?=base_url()?>template/front/images/product-4zoom3.jpg" alt=""></div></div>
					</div>
					<div class="swiper-button-prev productdetail-button-prev"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
				l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
					<div class="swiper-button-next productdetail-button-next"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
				l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
				</div>
			</div>	
			<div class="col-lg-6 col-md-6 col-sm-6">	
				<div class="product-dtl-text">
					<h1>Peace Lily</h1>
					<p>Peace Lily Plant is a very popular and very rare indoor flowering houseplant. It is also an excellent air purifier plant.</p>
					<p><strong>What makes it special:</strong></p>
					<ul class="listing">
						<li>One of the rarest indoor flowering plant.</li>
						<li>NASA recommended air purifier flowering plant.</li>
						<li>Easy to care and low maintenance plant.</li>
						<li>Best for office desk, bedroom.</li>
					</ul>
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
					<div c class="btn-div"><a href="javascript:void(0);" class="reverse-button addtocart-popbtn">Add To Cart</a></div>
				</div>
			</div>
		</div>
	</div>
</div>	
<script type="text/javascript" src="<?=base_url()?>template/front/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>template/front/js/jpreloader.js"></script>
<script type="text/javascript" src="<?=base_url()?>template/front/js/loader.js"></script>
<script type="text/javascript" src="<?=base_url()?>template/front/js/wow.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>template/front/js/webslidemenu.js"></script>
<script type="text/javascript" src="<?=base_url()?>template/front/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>template/front/fancybox-master/jquery.fancybox.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>template/front/fancybox-master/fancybox.js"></script>
<!--start swiper-->
<script type="text/javascript" src="<?=base_url()?>template/front/swiper/swiper.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>template/front/swiper/swiper.functions.js"></script>
<!--end swiper-->
<script type="text/javascript" src="<?=base_url()?>template/front/js/parallaxscroll.js"></script>	
<script type="text/javascript" src="<?=base_url()?>template/front/js/custom.js"></script>
<script>

</script>
</body>
</html>