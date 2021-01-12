<?php $this->load->view('front/includes/header');?>
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
				<li class="breadcrumb-item active" aria-current="page">Change Password</li>
			</ol>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1 class="wow fadeInLeft" data-wow-duration="1.5s">Change Password</h1>
				<div class="row listing-item wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.5s">
					<div class="col-lg-8 col-md-8 col-sm-12">
                                            <?php
                                        echo form_open(base_url() . 'home/registration/update_password/', array(
                                            'class' => 'form-delivery',
                                            'method' => 'post',
                                            'enctype' => 'multipart/form-data'
                                        ));
                                    ?> 
						<div class="password-change">
							<div class="form-group">
                                                            <div class="inputbox"><input type="password" id="" name="password" placeholder="Old Password" class="form-control"  value=""/></div>
							</div>
							<div class="form-group">
								<div class="inputbox"><input type="password" id="" name="password1" placeholder="New Password" class="form-control" /></div>
							</div>
							<div class="form-group">
								<div class="inputbox"><input type="password" id="" name="password2" placeholder="Confirm Password" class="form-control" /></div>
							</div>									
							<div class="change-div"><button class="button" type="submit">Change Password</button></div>
						</div>	
                                        </form>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-12 dashboard-main"><a href="javascript:void(0);" charset="dashboard-link"><span></span></a>
						<div id="sidebar">
							<h3>My Account</h3>
							<div class="shopping-summary">
								<div class="my-cart-items-sub">
									<ul class="profile-links">
										<li><a href="<?=base_url().'home/profile/info'?>">My Profile</a></li>
										<li><a href="my-order.php">My Order</a></li>
										<li><a href="my-favourite.php">My Favourite</a></li>
										<li><a href="address.php">My Address</a></li>
										<li><a href="<?=base_url().'home/profile/update_profile'?>" class="active">Change Password</a></li>
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
<?php $this->load->view('front/includes/footer');
?>
