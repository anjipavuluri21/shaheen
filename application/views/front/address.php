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
				<li class="breadcrumb-item active" aria-current="page">My Address</li>
			</ol>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1 class="wow fadeInLeft" data-wow-duration="1.5s">My Address</h1>
				<div class="row listing-item wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.5s">
					<div class="col-lg-8 col-md-8 col-sm-12">
						<div class="shopping-box ord-hstr-div">
							 <div class="checkout-sub address-sub-div">
                                                             <?php 
                                       $address_data = $this->db->get_where('address', array('user_id' => $this->session->userdata('user_id')))->result_array();
                                       
                                       ?>
								<h3>Shipping Address</h3>
                                                                
								<div class="myprofile-main">
                                                                    <?php 
                                                                    foreach($address_data as $row){ ?>
									<div class="profiledata">
									<div class="form-group">
											<label>Name </label><p><?php echo $row['first_name'];?> </p>
										</div>
                                                                            <div class="form-group">
											<label>Mobile</label><p><?php echo $row['mobile'];?> </p>
										</div>
                                                                            <div class="form-group">
											<label>Area </label><p><?php echo $row['area'];?> </p>
										</div>
										<div class="form-group">
											<label>Street </label><p><?php echo $row['street'];?></p>
										</div>
										<div class="form-group">
											<label>Building No</label><p><?php echo $row['building_no'];?></p>
										</div>
										<div class="form-group">
											<label>Apartment No</label><p><?php echo $row['apartment_no'];?></p>
										</div>
										<div class="form-group">
											<label>Block</label><p><?php echo $row['block'];?></p>
										</div>
										<div class="form-group">
											<label>Floor No</label><p><?php echo $row['floor_no'];?></p>
										</div>						
										<div class="change-div"><a href="javascript:void(0);" class="button change-btn">Change</a></div>
									</div>	
                                                                    <div class="profileform">
                                                                            <?php
                                        echo form_open(base_url() . 'home/registration/update_info/', array(
                                            'class' => 'form-login',
                                            'method' => 'post',
                                            'enctype' => 'multipart/form-data'
                                        ));
                                    ?>
										
                                                                        <div class="form-group">
                                                                                    <div class="inputbox"><input type="text" name="first_name" value="<?php echo $row['first_name'];?>" placeholder="name" class="form-control"></div>
										</div>
                                                                        <div class="form-group">
                                                                                    <div class="inputbox"><input type="text" name="mobile" value="<?php echo $row['mobile'];?>" placeholder="mobile" class="form-control"></div>
										</div>
                                                                        <div class="form-group">
                                                                                    <div class="inputbox"><input type="text" name="area" value="<?php echo $row['area'];?>" placeholder="Area" class="form-control"></div>
										</div>
                                                                        
										
										<div class="form-group">
                                                                                    <div class="inputbox"><input type="text" name="street" value="<?php echo $row['street'];?>" placeholder="Street" class="form-control"></div>
										</div>
										<div class="form-group">
                                                                                    <div class="inputbox"><input type="text" name="building_no" value="<?php echo $row['building_no'];?>" placeholder="Building No" class="form-control"></div>
										</div>
										<div class="form-group">
                                                                                    <div class="inputbox"><input type="text" name="apartment_no" value="<?php echo $row['apartment_no'];?>" placeholder="Apartment No" class="form-control"></div>
										</div>
										<div class="form-group">
                                                                                    <div class="inputbox"><input type="text" name="block" value="<?php echo $row['block'];?>" placeholder="Block" class="form-control"></div>
										</div>
										<div class="form-group">
                                                                                    <div class="inputbox"><input type="text" name="avenue" value="<?php echo $row['avenue'];?>" placeholder="Avenue / Judda" class="form-control"></div>
										</div>
										<div class="form-group">
                                                                                    <div class="inputbox"><input type="text" name="floor_no" value="<?php echo $row['floor_no'];?>" placeholder="Floor No" class="form-control"></div>
										</div>
                                                                        <div class="col-12">
			<div class="form-group">
				<ul class="unstyled">
					<li class="black">
						<input class="styled-checkbox" id="a_aparment" name="address_type" type="radio" value="Aparment">
						<label for="a_aparment"><span>Aparment</span></label>
					</li>
					<li class="white">
						<input class="styled-checkbox" id="a_house" name="address_type" type="radio" value="House">
						<label for="a_house"><span>House</span></label>
					</li>
				</ul>
			</div>
		</div>
										<div class="change-div"><button class="button" type="submit">UPDATE</button> <a href="javascript:void(0);" class="button closebutton">CLOSE</a></div>
                                                                        </form>
                                                                        </div>
                                                                    <?php } ?>
                                                                    
									
								</div>
							</div>
<!--							<div class="checkout-sub address-sub-div">
								<h3>Billing Address</h3>
								<div class="myprofile-main">
									<div class="profiledata">
										<div class="form-group">
											<label>Area </label><p>Salmiya </p>
										</div>
										<div class="form-group">
											<label>Street </label><p>Salem Al Mubarak Street</p>
										</div>
										<div class="form-group">
											<label>Building No</label><p>5</p>
										</div>
										<div class="form-group">
											<label>Apartment No</label><p>2</p>
										</div>
										<div class="form-group">
											<label>Block</label><p>116</p>
										</div>
										<div class="form-group">
											<label>Floor No</label><p>5</p>
										</div>						
										<div class="change-div"><a href="javascript:void(0);" class="button change-btn">Change</a></div>
									</div>					
									<div class="profileform">
										<div class="form-group">
											<div class="inputbox"><input type="text" value="" placeholder="Area" class="form-control"></div>
										</div>
										<div class="form-group">
											<div class="inputbox"><input type="text" value="" placeholder="Street" class="form-control"></div>
										</div>
										<div class="form-group">
											<div class="inputbox"><input type="text" value="" placeholder="Building No" class="form-control"></div>
										</div>
										<div class="form-group">
											<div class="inputbox"><input type="text" value="" placeholder="Apartment No" class="form-control"></div>
										</div>
										<div class="form-group">
											<div class="inputbox"><input type="text" value="" placeholder="Block" class="form-control"></div>
										</div>
										<div class="form-group">
											<div class="inputbox"><input type="text" value="" placeholder="Avenue / Judda" class="form-control"></div>
										</div>
										<div class="form-group">
											<div class="inputbox"><input type="text" value="" placeholder="Floor No" class="form-control"></div>
										</div>
										<div class="change-div"><button class="button" type="submit">UPDATE</button> <a href="javascript:void(0);" class="button closebutton">CLOSE</a></div>
									</div>
								</div>					
							</div>-->
							<div class="checkout-sub address-sub-div">
								<div class="myprofile-main"><a href="#newAddressModel" data-fancybox class="button add-newadddress">Add New Address</a></div>					
							</div>
							 
						</div>	
					</div>
                                    <div id="newAddressModel" class="popup-hidden new-address-model modelbox animated-modal">
                                        <?php
                    echo form_open(base_url() . 'home/registration/add__new_address/', array(
                        'class' => 'form-signup',
                        'method' => 'post',
                        'id' => 'signup_form'
                    ));
                   
                ?>
	<h2 class="anim1">Add New Address</h2>
	<p class="anim2"><strong>PESORNAL DETAIL</strong></p>
        
	<div class="row anim3">
		<div class="col-lg-6 col-md-6 col-sm-6">
			<div class="form-group">
                            <div class="inputbox"><input type="text" value="" name="first_name" placeholder="First Name" class="form-control"></div>
			</div>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6">
			<div class="form-group">
                            <div class="inputbox"><input type="text" value="" name="last_name" placeholder="Last Name" class="form-control"></div>
			</div>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6">
		<div class="form-group">
                    <div class="inputbox"><input type="text" value="" name="email" placeholder="Email" class="form-control"></div>
		</div>
		</div>	
		<div class="col-lg-6 col-md-6 col-sm-6">	
		<div class="form-group">
                    <div class="inputbox"><input type="text" value="" name="mobile" placeholder="Mobile" class="form-control"></div>
		</div>
		</div>
	</div>
	<p class="anim4"><strong>ADDRESS</strong></p>
	<div class="row anim4">
		<div class="col-12">
			<div class="form-group">
				<ul class="unstyled">
					<li class="black">
						<input class="styled-checkbox" id="a_aparment" name="address_type" type="radio" value="Aparment">
						<label for="a_aparment"><span>Aparment</span></label>
					</li>
					<li class="white">
						<input class="styled-checkbox" id="a_house" name="address_type" type="radio" value="House">
						<label for="a_house"><span>House</span></label>
					</li>
				</ul>
			</div>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6">
			<div class="form-group">
                            <div class="inputbox"><input type="text" value="" name="area" placeholder="Area" class="form-control"></div>
			</div>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6">
			<div class="form-group">
                            <div class="inputbox"><input type="text" value="" name="street" placeholder="Street" class="form-control"></div>
			</div>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6">
		<div class="form-group">
                    <div class="inputbox"><input type="text" value="" name="building_no" placeholder="Building No" class="form-control"></div>
		</div>
		<div class="form-group">
                    <div class="inputbox"><input type="text" value="" name="apartment_no" placeholder="Apartment No" class="form-control"></div>
		</div>
		</div>	
		<div class="col-lg-6 col-md-6 col-sm-6">	
		<div class="form-group">
                    <div class="inputbox"><input type="text" value="" name="block" placeholder="Block" class="form-control"></div>
		</div>
		<div class="form-group">
                    <div class="inputbox"><input type="text" value="" name="avenue" placeholder="Avenue / Judda" class="form-control"></div>
		</div>
		</div>	
		<div class="col-lg-6 col-md-6 col-sm-6">	
			<div class="form-group">
                            <div class="inputbox"><input type="text" value="" name="floor_no" placeholder="Floor No" class="form-control"></div>
			</div>
		</div>	
		<div class="col-12 change-div"><button class="reverse-button" type="submit">Submit</button></div>
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
										<li><a href="<?=base_url().'home/profile/update_info'?>" class="active">My Address</a></li>
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
<?php $this->load->view('front/includes/footer');?>