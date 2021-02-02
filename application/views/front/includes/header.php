
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Al Shaheen Nurseries Agriculture & Food Co.</title>
        <meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=1.0" />
        <link rel="apple-touch-icon" sizes="57x57" href="<?=base_url()?>template/front/favicon/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="<?=base_url()?>template/front/favicon/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="<?=base_url()?>template/front/favicon/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="<?=base_url()?>template/front/favicon/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="<?=base_url()?>template/front/favicon/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="<?=base_url()?>template/front/favicon/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="<?=base_url()?>template/front/favicon/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="<?=base_url()?>template/front/favicon/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="<?=base_url()?>template/front/favicon/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192" href="<?=base_url()?>template/front/favicon/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="<?=base_url()?>template/front/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="<?=base_url()?>template/front/favicon/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="<?=base_url()?>template/front/favicon/favicon-16x16.png">
        <link rel="manifest" href="<?=base_url()?>template/front/favicon/manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="<?=base_url()?>template/front/favicon/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&family=Yeseva+One&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="<?=base_url()?>template/front/scrollbar/jquery.mCustomScrollbar.min.css" />	
        <link href="<?=base_url()?>template/front/css/jpreloader.css" rel="stylesheet" type="text/css" media="all" />
        <link href="<?=base_url()?>template/front/css/activeit.css" rel="stylesheet" type="text/css" media="screen"/>	
        <link href="<?=base_url()?>template/front/css/activeit.min.css" rel="stylesheet" type="text/css" media="screen"/>	
        <link href="<?=base_url()?>template/front/css/animate.css" rel="stylesheet" type="text/css" media="screen"/>	
        <link href="<?=base_url()?>template/front/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" type="text/css" href="<?=base_url()?>template/front/fancybox-master/jquery.fancybox.min.css" />	
        <link rel="stylesheet" href="<?=base_url()?>template/front/swiper/swiper.min.css" type="text/css" media="all"/>
        <link href="<?=base_url()?>template/front/css/webslidemenu.css" rel="stylesheet" type="text/css" media="all" />	
        <link href="<?=base_url()?>template/front/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="<?=base_url()?>template/front/css/responsive.css" rel="stylesheet" type="text/css" media="all" />	
        <?php 
         if($this->session->userdata('language')!=""){
             $set_lang=$this->session->userdata('language');
         } else {
                                $set_lang = $this->db->get_where('general_settings',array('type'=>'language'))->row()->value;
                            }
         if($this->session->userdata('language') == 'arabic'){
        ?>
        <link href="<?=base_url()?>template/front/css/style-ar.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?=base_url()?>template/front/css/responsive-ar.css" rel="stylesheet" type="text/css" media="all" />	
         <?php } ?>
    </head>

    <body>

<?php 
 $home_top_logo = $this->db->get_where('ui_settings', array('type' => 'home_top_logo'))->row()->value;
?>
        <header id="header">
            <div class="menu-link-div"><a href="javascript:void(0);" class="menu-link wow fadeInLeft"><span></span></a></div>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <a href="<?php echo base_url();?>" class="SNAFCO wow fadeInLeft"><img src="<?php echo base_url(); ?>uploads/logo_image/logo_<?php echo $home_top_logo; ?>.png" alt="SNAFCO"></a>
                        
                        <div class="language-search">
                            <div class="search-area wow fadeInRight">
                                <div class="search-imain">
                                    <a href="javascript:void(0);" class="search-link"><span></span></a>
                                    <div class="search-div"><div class="search-input"><input class="form-control" name="" id="" placeholder="<?php echo translate('search');?>" value=""></div><button class="search-btn"><?php echo translate('go');?></button></div>
                                </div>
                                <?php
//                           
                            $lid = $this->db->get_where('language_list',array('db_field'=>$set_lang))->row()->language_list_id;
                            $lnm = $this->db->get_where('language_list',array('db_field'=>$set_lang))->row()->name;
                        ?>
                               <?php
                                $langs = $this->db->get_where('language_list',array('status'=>'ok'))->result_array();
                                foreach ($langs as $row)
                                {
                            ?>
                      
                                <a class="language-link"  <?php if($set_lang == $row['db_field']){ ?> style="display:none;" <?php } ?> href="<?php echo base_url(); ?>home/set_language/<?php echo $row['db_field']; ?>">
                                        <?php echo $row['name']; ?>
                                        
                                    </a>
                           
                            <?php
                                }
                            ?>
                                <!--<a href="index-ar.html" class="language-link"> العربية</a>-->
                                
                                <p><?php // echo $this->session->userdata('user_login');?></p>
                            </div>
                            <div class="login-cart wow fadeInRight" data-wow-delay="0.2s">
                                <?php if ($this->session->userdata('user_login') == "yes") { ?>
                                
        
                                <div class="account-navi">
							<span class="welcome"><?php echo translate('welcome');?> :</span>
							<div class="account-main">
								<a href="javascript:void(0);" class="account-link"><?=$this->session->userdata('user_name')?></a>
								<div class="account-div">
									<ul class="account-ul">
										<li><a href="<?=base_url().'home/profile/info'?>"><?php echo translate('my_profile');?></a></li>
										<li><a href="<?=base_url().'home/order_listed'?>"><?php echo translate('my_order');?></a></li>
										<li><a href="my-favourite.html"><?php echo translate('my_favourite');?></a></li>
										<li><a href="<?=base_url().'home/profile/update_info'?>"><?php echo translate('my_order');?></a></li>
										<li><a href="<?=base_url().'home/profile/update_profile'?>"><?php echo translate('change_password');?></a></li>
										<li><a href="<?=base_url().'home/logout'?>"><?php echo translate('logout');?></a></li>
									</ul>
								</div>
							</div>
						</div>
                                <div class="faviourite-div"><a href="<?php echo base_url().'home/wish_listed/'?>" class="faviourite-link docmenu-link" title="Faviourite"><span class="cart-img"><img src="<?=base_url()?>template/front/images/faviourite-white.svg" alt="faviourite"></span>( <span class="cart-text wish_num"></span> )</a>
                                    <div class="cart-main">
                                       
                                    </div>
                                </div>
                                <?php } else { ?>
                                <div class="log-reg">
                                    <a href="javascript:void(0);" data-src="#loginModel" data-fancybox class="login-link"><?php echo translate('login');?></a>
                                    <a href="javascript:void(0);" data-src="#registerModel" data-fancybox class="register-link"><?php echo translate('register');?></a>
                                </div>
                                <?php } ?>
                                
                                <div class="cart-div">
                                    <a href="javascript:void(0);" class="cart-link docmenu-link"><span class="cart-img"><img src="<?=base_url()?>template/front/images/cart-white.svg" alt="cart"></span><?php echo translate('cart');?> ( <span class="cart-text cart_num"></span> )</a>
                                    <div class="cart-main">
                                        <div class="shopping-main">
                                            <h3>Shopping Cart</h3>
                                            <div class="cart-main-sub scrollbar">
                                                <div class="row top_carted_list">
                                                    
                                                    	
                                                </div>
                                            </div>
                                            <div class="cart-checkout">
                                                
                                            </div>

                                        </div>	
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="index.php" class="responsive-SNAFCO wow fadeInLeft"><img src="<?=base_url()?>template/front/images/SNAFCO.png" alt="SNAFCO"></a>
                    </div>
                </div>
            </div>
            <div class="menu-main">
                <div class="menu-main-sub">
                    <div class="navigation">
                        <div class="wsmenucontainer clearfix">
                            <div class="overlapblackbg"></div>
                            <div class="wsmobileheader clearfix">
                                <a id="wsnavtoggle" class="animated-arrow"><span></span></a>
                            </div>
                            <div class="wsmain">
                                <nav class="wsmenu clearfix">								
                                    <ul class="mobile-sub wsmenu-list" id="menu">
                                        <li class="main-link"><a href="<?php echo base_url(); ?>" class="nav-active"><?php echo translate('home');?></a></li>
                                        <li class="main-link"><a href="<?php echo base_url().'home/about_us'?>"><?php echo translate('about_us');?></a></li>
                                        <?php 
                                        $categories=$this->db->get('category')->result_array();
                                        ?>
                                        <li class="main-link"><a href="javascript:void(0);"><?php echo translate('categories');?> </a>
                                            <ul class="wsmenu-submenu">
                                                <?php 
                                                    foreach ($categories as $row){ ?>
                                                        <li><a href="<?php echo base_url(); ?>product/category/<?php echo $row['category_id']; ?>"><?php echo ($set_lang=="english")?$row['category_name']:$row['category_name_ar'];?></a></li>
                                                   <?php  }
                                                ?>
                                                
                                                
                                            </ul>
                                        </li>
                                        <li class="main-link"><a href="<?php echo base_url().'home/new_arrivals'?>"><?php echo translate('new_arrivals');?></a></li>
                                        <li class="main-link"><a href="<?php echo base_url().'home/top_sellers'?>"><?php echo translate('top_sellers');?></a></li>
                                        <li class="main-link"><a href="<?php echo base_url().'home/promotions'?>"><?php echo translate('promotions');?></a></li>
                                        <li class="main-link"><a href="<?php echo base_url().'home/contact'?>"><?php echo translate('contact_us');?></a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>

                    </div>
                </div>
                <!--<div class="close-menu"></div>-->
            </div>
        </header>
