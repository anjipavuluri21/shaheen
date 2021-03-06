<?php 
    $this->load->view('front/includes/header');
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
				<li class="breadcrumb-item active" aria-current="page"><?php echo translate('my_profile');?></li>
			</ol>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1 class="wow fadeInLeft" data-wow-duration="1.5s"><?php echo translate('my_profile');?></h1>
                                <?php
	foreach($user_info as $row)
	{
    ?>
				<div class="row listing-item wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.5s">
					<div class="col-lg-8 col-md-8 col-sm-12">
						<div class="shopping-box">
                         				 <div class="myprofile-main">
								<div class="profiledata">
									<div class="form-group">
										<label><?php echo translate('first_name');?> </label><p><?php echo $row['username'];?></p>
									</div>
									<div class="form-group">
										<label><?php echo translate('last_name');?> </label><p><?php echo $row['surname'];?></p>
									</div>
									<div class="form-group">
										<label><?php echo translate('email_address');?></label><p><?php echo $row['email'];?></p>
									</div>
									<div class="form-group">
										<label><?php echo translate('mobile');?></label><p><?php echo $row['mobile'];?></p>
									</div>
									<div class="change-div"><a href="javascript:void(0);" class="button change-btn"><?php echo translate('change');?></a></div>
								</div>					
								<div class="profileform">
									<div class="form-group">
										<div class="inputbox"><input type="text" id="" name="" placeholder="First Name" class="form-control" value="<?php echo $row['username'];?>"/></div>
									</div>
									<div class="form-group">
										<div class="inputbox"><input type="text" id="" name="" placeholder="Last Name" class="form-control" value="<?php echo $row['surname'];?>"/></div>
									</div>
									<div class="form-group">
										<div class="inputbox"><input type="text" id="" name="" placeholder="Email Address" class="form-control" value="<?php echo $row['email'];?>"/></div>
									</div>
									<div class="form-group">
										<div class="inputbox"><input type="text" id="" name="" placeholder="Mobile" class="form-control" value="<?php echo $row['phone'];?>"/></div>
									</div>
									<div class="change-div"><button class="button" type="submit">UPDATE</button> <a href="javascript:void(0);" class="button closebutton">CLOSE</a></div>
								</div>
							</div>
							 
						</div>	
					</div>
					<div class="col-lg-4 col-md-4 col-sm-12 dashboard-main"><a href="javascript:void(0);" charset="dashboard-link"><span></span></a>
						<div id="sidebar">
							<h3>My Account</h3>
							<div class="shopping-summary">
								<div class="my-cart-items-sub">
									<ul class="profile-links">
										<li><a href="<?=base_url().'home/profile/info'?>" class="active"><?php echo translate('my_profile');?></a></li>
										<li><a href="my-order.php"><?php echo translate('my_order');?></a></li>
										<li><a href="my-favourite.php"><?php echo translate('my_favourite');?></a></li>
										<li><a href="<?=base_url().'home/profile/update_info'?>"><?php echo translate('my_address');?></a></li>
										<li><a href="<?=base_url().'home/profile/update_profile'?>"><?php echo translate('change_password');?></a></li>
										<li><a href="<?=base_url().'home/logout'?>">Logout</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
                                   <?php
	}
?> 
			</div>
		</div>
	</div>
</section>
<?php 
    $this->load->view('front/includes/footer');
    ?>