<?php
$set_lang = $this->session->userdata('language');
//print_r($_SESSION);
$categories = $this->db->get('category')->result_array();

$this->db->order_by("slides_id", "desc");
$this->db->where("uploaded_by", "admin");
$this->db->where("status", "ok");
$slides = $this->db->get('slides')->result_array();
//                                        print_r($slides);exit;
$i = 1;
?>
<div class="main">
    <div class="banner-main parallaxcont wow fadeInUp">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="carousel-main">
                        <div class="slideshow-container swiper-container">
                            <div class="swiper-wrapper">
                                <?php foreach ($slides as $row) { ?>
                                    <div class="swiper-slide">
                                        <div class="slideshow-img"><img src="<?php echo $this->crud_model->file_view('slides', $row['slides_id'], '100', '', 'no', 'src', '', '', '.jpg') ?>" alt="slide"/></div>
                                        <div class="slideshow-contents">
                                            <div class="banner-logo"><img src="<?= base_url() ?>template/front/images/banner-SNAFCO.jpg" alt="SNAFCO"></div>
                                            <div class="discount"><?php echo ($set_lang == "english") ? $row['text1'] : $row['text1_ar']; ?></div>
                                            <h1><span><?php echo ($set_lang == "english") ? $row['text2'] : $row['text2_ar']; ?></span><div><?php echo ($set_lang == "english") ? $row['text3'] : $row['text3_ar']; ?></div></h1>
                                            <a href="<?php echo $row['button_link']; ?>" class="button"><?php echo translate('shop_now'); ?></a>

                                        </div>
                                    </div>



                                <?php } ?>




                            </div>
                            <div class="swiper-pagination slideshow-pagination"></div>
                        </div>
                        <div class="swiper-button-prev slideshow-button-prev"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
                                                                                                                                                                                                        l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
                        <div class="swiper-button-next slideshow-button-next"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
                                                                                                                                                                                                        l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
                    </div>
                    <div class="payment-method">
                        <ul class="payment-method-sub">
                            <li><?php echo translate('we_accept'); ?></li>
                            <li><img src="<?= base_url() ?>template/front/images/k-net.png" alt="k-net"></li>
                            <li><img src="<?= base_url() ?>template/front/images/visa.png" alt="visa card"></li>
                            <li><img src="<?= base_url() ?>template/front/images/master-card.png" alt="master card"></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="section category-main">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1 class="wow fadeInLeft"><?php echo translate('categories'); ?></h1>
                    <div class="carousel-main">
                        <div class="categories-container swiper-container">
                            <div class="swiper-wrapper">
                                <?php foreach ($categories as $row) { ?>
                                    <div class="swiper-slide">
                                        <div class="category-holder wow fadeInUp" data-wow-delay="0.2s" onClick="location.href = '<?php echo base_url(); ?>home/category/<?php echo $row['category_id']; ?>">
                                            <div class="category-img"><img src="<?php echo base_url(); ?>uploads/category_image/<?php echo $row['banner']; ?>" alt="Indoor Plants"/></div>
                                            <a href="<?php echo base_url(); ?>product/category/<?php echo $row['category_id']; ?>"><h2><?php echo ($set_lang == "english") ? $row['category_name'] : $row['category_name_ar']; ?></h2></a>
                                        </div>
                                    </div>
                                <?php }
                                ?>



                            </div>
                        </div>
                        <div class="swiper-pagination categories-pagination"></div>
                        <div class="swiper-button-prev categories-button-prev"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
                                                                                                                                                                                                        l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
                        <div class="swiper-button-next categories-button-next"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
                                                                                                                                                                                                        l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
                    </div>
                </div>
            </div>	
        </div>	
    </section>

    <section class="section new-arriaval-main">
        <div class="object texture-1 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="2s"><img src="<?= base_url() ?>template/front/images/texture1.png" alt="texture"></div>
        <div class="object texture-7 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="2s"><img src="<?= base_url() ?>template/front/images/texture7.png" alt="texture"></div>
        <div class="container">
            <?php
            $latest = $this->crud_model->product_list_set('latest', 10);

//                    echo $this->db->last_query();
            ?>

            <div class="row">
                <div class="col-12">
                    <h1 class="wow fadeInLeft" data-wow-duration="1.5s"><?php echo translate('new_arrivals'); ?> <a href="<?php echo base_url() . 'home/new_arrivals' ?>" class="button pos-right"><?php echo translate('view_all'); ?></a></h1>

                    <div class="carousel-main">
                        <div class="arriaval-container swiper-container">
                            <div class="swiper-wrapper">
                                <?php foreach ($latest as $row) { ?>
                                    <div class="swiper-slide">
                                        <div class="product-thumb">
                                            <div class="product-holder">
                                                <?php
                                                $images = $this->crud_model->file_view('product', $row['product_id'], '', '', 'thumb', 'src', 'multi', 'all');
                                                ?>
                                                <div class="product-img"><img src="<?= $images[0] ?>" alt="product"/></div>
                                                <a href="javascript:void(0);" class="quick-link-btn" data-src="<?= $images[0] ?>" data-fancybox="product<?= $row['product_id'] ?>"><span class="quick-img"><img src="<?= base_url() ?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></a>

                                                <a href="javascript:void(0);" class="none" data-src="<?php echo $row1; ?>" data-fancybox="product<?= $row['product_id'] ?>"></a>

                                                <div class="favourite-addtocart">
                                                    <a href="javascript:void(0);" class="favourite-anchor" data-pid="<?= $row['product_id'] ?>"><img src="<?= base_url() ?>template/front/images/faviourite.svg" alt="faviourite"></a>
                                                    <a href="javascript:void(0);" class="addtocart-anchor" data-pid="<?= $row['product_id'] ?>"><img src="<?= base_url() ?>template/front/images/cart.svg" alt="cart"></a>
                                                </div>
                                            </div>
                                            <div class="product-dtl">
                                                <h2><a href="<?php echo $this->crud_model->product_link($row['product_id']); ?>"> <?php echo ($set_lang == "english") ? $row['title'] : $row['title_ar']; ?></a></h2>
                                                <?php if ($row['size'] == '') { ?>

                                                    <div class="pot-size" style="display: none;">Size : <?php echo $row['size']; ?></div>
                                                <?php } else { ?>
                                                    <div class="pot-size">Size : <?php echo $row['size']; ?></div>
                                                <?php } ?>
                                                <?php if ($row['category'] == '') { ?>
                                                    <div class="made-by" style="display: none;">Type : <?php echo $row['category']; ?></div>
                                                <?php } else { ?>
                                                    <div class="made-by">Type : <?php echo $row['category']; ?></div>    
                                                <?php } ?>

                                                <p><?php echo currency($this->crud_model->get_product_price($row['product_id'])); ?></p>
                                            </div>
                                        </div>
                                    </div>

                                <?php }
                                ?>



                            </div>
                        </div>
                        <div class="swiper-button-prev arriaval-button-prev"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
                                                                                                                                                                                                        l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
                        <div class="swiper-button-next arriaval-button-next"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
                                                                                                                                                                                                        l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
                    </div>
                </div>
            </div>	
        </div>	
    </section>
    <section class="section topsellers-main">
        <div class="object texture-2 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="2s"><img src="<?= base_url() ?>template/front/images/texture2.png" alt="texture"></div>
        <div class="object texture-8 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="2s"><img src="<?= base_url() ?>template/front/images/texture8.png" alt="texture"></div>
        <div class="object texture-3 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="2s"><img src="<?= base_url() ?>template/front/images/texture3.png" alt="texture"></div>
        <div class="object texture-4 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="2s"><img src="<?= base_url() ?>template/front/images/texture4.png" alt="texture"></div>
        <div class="object texture-9 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="2s"><img src="<?= base_url() ?>template/front/images/texture9.png" alt="texture"></div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1 class="wow fadeInLeft" data-wow-duration="1.5s"><?php echo translate('top_sellers'); ?> <a href="<?php echo base_url() . 'home/top_sellers' ?>" class="button pos-right"><?php echo translate('view_all'); ?></a></h1>
                    <div class="carousel-main">
                        <div class="topsellers-container swiper-container">
                            <div class="swiper-wrapper">
                                <?php
                                $most_orderd = $this->crud_model->product_list_set('number_of_order', 10);
                                foreach ($most_orderd as $row) {
                                    ?>
                                    <div class="swiper-slide">
                                        <div class="product-thumb">
                                            <div class="product-holder">
                                                <div class="product-img"><img src="<?php echo $this->crud_model->file_view('product', $row['product_id'], '100', '', 'thumb', 'src', 'multi', 'one'); ?>" alt="product"/></div>
                                                <a href="javascript:void(0);" class="quick-link-btn" data-src="<?= base_url() ?>template/front/products/indoor-plants/10155.jpg" data-fancybox="product8"><span class="quick-img"><img src="<?= base_url() ?>template/front/images/view.svg" alt="Quick View"></span><span class="quick-text">View large</span></a>
                                                <a href="javascript:void(0);" class="none" data-src="<?= base_url() ?>template/front/products/indoor-plants/10155-2.jpg" data-fancybox="product8"></a>
                                                <div class="favourite-addtocart">
                                                    <a href="javascript:void(0);" class="favourite-anchor"><img src="<?= base_url() ?>template/front/images/faviourite.svg" alt="faviourite"></a>
                                                    <a href="javascript:void(0);" class="addtocart-anchor"><img src="<?= base_url() ?>template/front/images/cart.svg" alt="cart"></a>
                                                </div>
                                            </div>
                                            <div class="product-dtl">
                                                <h2><a href="<?php echo $this->crud_model->product_link($row['product_id']); ?>"> <?php echo ($set_lang == "english") ? $row['title'] : $row['title_ar']; ?></a></h2>
                                                <?php if ($row['size'] == '') { ?>

                                                    <div class="pot-size" style="display: none;">Size : <?php echo $row['size']; ?></div>
                                                <?php } else { ?>
                                                    <div class="pot-size">Size : <?php echo $row['size']; ?></div>
                                                <?php } ?>
                                                <?php if ($row['category'] == '') { ?>
                                                    <div class="made-by" style="display: none"><?php echo translate('type'); ?> : <?php echo $row['category']; ?></div>    
                                                <?php } else { ?>

                                                    <div class="made-by"><?php echo translate('type'); ?> : <?php echo $row['category']; ?></div>    
                                                <?php } ?>
                                                <p><?php echo currency($row['sale_price']); ?></p>
                                            </div>
                                        </div>
                                    </div>
                                <?php }
                                ?>



                            </div>
                        </div>
                        <div class="swiper-button-prev topsellers-button-prev"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
                                                                                                                                                                                                        l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
                        <div class="swiper-button-next topsellers-button-next"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
                                                                                                                                                                                                        l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
                    </div>
                </div>
            </div>	
        </div>	
    </section>

    <section class="section promotions-main">
        <div class="object texture-5 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="2s"><img src="<?= base_url() ?>template/front/images/texture5.png" alt="texture"></div>
        <div class="object texture-6 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="2s"><img src="<?= base_url() ?>template/front/images/texture6.png" alt="texture"></div>
        <div class="object texture-10 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="2s"><img src="<?= base_url() ?>template/front/images/texture10.png" alt="texture"></div>
        <?php
        $promotion_banner_one = $this->db->get_where('ui_settings', array('type' => 'promotion_banner_one'))->row()->value;
        $promotion_banner_two = $this->db->get_where('ui_settings', array('type' => 'promotion_banner_two'))->row()->value;
        $promotion_banner_three = $this->db->get_where('ui_settings', array('type' => 'promotion_banner_three'))->row()->value;
        ?>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1 class="wow fadeInLeft" data-wow-duration="1.5s"><?php echo translate('promotions'); ?></h1>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <a href="javascript:void(0);" class="offer-link wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.5s"><img src="<?php echo base_url(); ?>uploads/logo_image/logo_<?php echo $promotion_banner_one; ?>.png" alt="offer"></a>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 promotions-div">
                            <div class="row">
                                <div class="col-12">
                                    <a href="javascript:void(0);" class="offer-link wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.5s"><img src="<?php echo base_url(); ?>uploads/logo_image/logo_<?php echo $promotion_banner_two; ?>.png" alt="offer"></a>
                                </div>
                                <div class="col-12">
                                    <a href="javascript:void(0);" class="offer-link wow fadeInUp" data-wow-delay="0.3s" data-wow-duration="1.5s"><img src="<?php echo base_url(); ?>uploads/logo_image/logo_<?php echo $promotion_banner_three; ?>.png" alt="offer"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>	
        </div>	
    </section>

