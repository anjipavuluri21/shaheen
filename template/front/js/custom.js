wow = new WOW(
  {
	animateClass: 'animated',
	offset:       100,
	callback:     function(box) {
	  console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
	}
  }
);
var evetlink,fav_img_ht,imgtodragCart,this_img,top_position_cart,cart_div,myVar,myVar2,no_of_bottle,parseInt,quick_link_btn;
$(document).ready(function(){
	"use strict";
	$('.account-link').click(function(){
		if($(this).hasClass('active')){
			$('.account-ul').removeClass('showul');
			setTimeout(function(){
				$('.account-div').removeClass('opened');
			},100);
			$(this).removeClass('active')
		}
		else{
			$('.account-div').addClass('opened');
			setTimeout(function(){
				$('.account-ul').addClass('showul');
			},100);
			$(this).addClass('active')
		}
	});
	$('.search-link').click(function(){
		if($(this).hasClass('active')){
			$(this).removeClass('active')
			$(this).next('.search-div').slideUp(); 
		}
		else{
			$(this).addClass('active')
			$(this).next('.search-div').slideDown();
			//$(this).parents('search-imain').addClass()
		}
	});
	
	
	
	$('.order-tab').click(function(){		
		if($(this).hasClass('active')){
			$(this).removeClass('active');
			$(this).next('.order-histotry-sub').slideUp();
		}
		else{
			$('.order-tab').removeClass('active');
			$('.ord-hstr-div').find('.order-histotry-sub').slideUp();
			$(this).addClass('active');
			$(this).next('.order-histotry-sub').slideDown();
		}
	});
	/*shopping_box_ht=$('.shopping-box').innerHeight();
	shopping_summary_ht=$('#sidebar').innerHeight()/2.2;*/
	$('.menu-link').click(function(){		
		if($(this).hasClass('active')){		   
			$('.navigation').removeClass('showmenu');
			$('.menu-main-sub').removeClass('showbg');
			$('.menu-link').removeClass('crossed');
			setTimeout(function(){
				$('.menu-main').removeClass('openedmenu');
				$('.menu-link').removeClass('active');
			},500);
			//$('.main').removeClass('shrink');
		}
		else{			
			$('.menu-main').addClass('openedmenu');
			$('.menu-main-sub').addClass('showbg');

			$(this).addClass('active');
			setTimeout(function(){
				$('.navigation').addClass('showmenu');
				$('.menu-link').addClass('crossed');
			},300);
			//$('.main').addClass('shrink');
		}
	});
	var $this;
	$('.docmenu-link').click(function(){
		$this=$(this);
		if($(this).hasClass('active')){			
			$this.next('.cart-main').find('.shopping-main').removeClass('showCartSub');
			setTimeout(function(){
				$this.next('.cart-main').removeClass('openedCart');
				$this.removeClass('active');
			},500);
		}
		else{
			$this.addClass('active');
			$this.next('.cart-main').addClass('openedCart');
			setTimeout(function(){
				$this.next('.cart-main').find('.shopping-main').addClass('showCartSub');
			},200);
		}
	});
	
	
	$('.main-link .link,.close-menu').click(function(){		
		$('.navigation').removeClass('showmenu');			
		$('.menu-link').removeClass('crossed');
		setTimeout(function(){
			$('.menu-main-sub').removeClass('showbg');
		},200);
		setTimeout(function(){
			$('.menu-main').removeClass('openedmenu');
			$('.menu-link').removeClass('active');
		},800);
		//$('.main').removeClass('shrink');
	});
	$('.forgot-link').click(function(){		
		$('.forgot-main').toggleClass('opened-forgot');
		$('.forgot-main-sub').slideToggle('opened-forgot');
	});
	/*$(".quick-link-btn").on('click', function() {
		quick_link_btn=$(this);
	  $.fancybox.open({
		src  : $(this).attr('data-src'),  
		type : 'inline',
		opts : {
		  beforeLoad : function() {
			$('head').append('<script type="text/javascript" src="js/pro.dtl.slider.js"></script>');
		  }
		}
	  });
	});*/
	$('.addtocart-anchor,.favourite-anchor,.addtocart-popbtn,.addtocart-detailbtn,.save-to-fav-link').on('click', function(){
		if($(this).hasClass('addtocart-anchor') || $(this).hasClass('favourite-anchor')){
			this_img = $(this).parents('.product-holder').find('.product-img');
			fav_img_ht = $(this).parents('.product-holder').find('.product-img').width();
			imgtodragCart = $(this).parents('.product-holder').find('.product-img img').eq(0);
			if($(this).hasClass('addtocart-anchor')){
				if($('.cart-link').hasClass('active')){
				}
				else{
					//cart_open_fun();
					$('.cart-link').trigger('click');
					cart_div=$('.cart-div').find('.cart-main');
					clearTimeout(myVar);
					myVar = setTimeout(function(){
						//$('.cart-link').trigger('click');
						cart_close_fun();
					},1500);
				}
			}
			else if($(this).hasClass('favourite-anchor')){
				if($('.faviourite-link').hasClass('active')){
					
				}
				else{
					$('.faviourite-link').trigger('click');
					//faviourite_open_fun();
					cart_div=$('.faviourite-div .cart-main');
					clearTimeout(myVar2);
					myVar2 = setTimeout(function(){
						//$('.faviourite-link').trigger('click');
						faviourite_close_fun();
					},1500);
				}
			}
			else{}
		}
		else if($(this).hasClass('addtocart-popbtn')){
			$.fancybox.close();
			this_img = quick_link_btn.parents('.product-holder').find('.product-img');
			fav_img_ht = quick_link_btn.parents('.product-holder').find('.product-img').width();
			imgtodragCart = quick_link_btn.parents('.product-holder').find('.product-img img').eq(0);
			
			$('.cart-link').trigger('click');
			cart_div=$('.cart-div').find('.cart-main');
			clearTimeout(myVar);
			myVar = setTimeout(function(){
				//$('.cart-link').trigger('click');
				cart_close_fun();
			},1500);
			setTimeout(function(){
				$.fancybox.close();
			},500);	
		}
		else if($(this).hasClass('addtocart-detailbtn')){
				this_img = $('.productdetail-container').find('.swiper-slide-active .quick-view-img');
				fav_img_ht = $('.productdetail-container').find('.swiper-slide-active .quick-view-img').width();
				imgtodragCart = $('.productdetail-container').find('.swiper-slide-active .quick-view-img img').eq(0);
			
				if($('.cart-link').hasClass('active')){
				}
				else{
					//cart_open_fun();
					$('.cart-link').trigger('click');
					cart_div=$('.cart-div').find('.cart-main');
					clearTimeout(myVar);
					myVar = setTimeout(function(){
						//$('.cart-link').trigger('click');
						cart_close_fun();
					},1500);
				}
			}
		else if($(this).hasClass('save-to-fav-link')){
				this_img = $('.productdetail-container').find('.swiper-slide-active .quick-view-img');
				fav_img_ht = $('.productdetail-container').find('.swiper-slide-active .quick-view-img').width();
				imgtodragCart = $('.productdetail-container').find('.swiper-slide-active .quick-view-img img').eq(0);
			
				if($('.faviourite-link').hasClass('active')){
					
				}
				else{
					$('.faviourite-link').trigger('click');
					//faviourite_open_fun();
					cart_div=$('.faviourite-div .cart-main');
					clearTimeout(myVar2);
					myVar2 = setTimeout(function(){
						//$('.faviourite-link').trigger('click');
						faviourite_close_fun();
					},1500);
				}
			}
		else{
			
		}		
		top_position_cart=cart_div.height()/2;		
        if (imgtodragCart){
            var imgclone=imgtodragCart.clone()
                .offset({
                top:this_img.offset().top,
                left:this_img.offset().left
            }).css({
                'opacity':'0',
                'position':'absolute',
                'width':fav_img_ht+'px',
                'z-index':'9999'
            }).animate({
				'opacity':'1',
            },300).appendTo($('body')).animate({
				'width':cart_div.width(),
                top: cart_div.offset().top+50,
                'left':cart_div.offset().left,
            },1000);
            imgclone.animate({
                'opacity':0
            }, function () {
                $(this).detach();
            });
        }
		//closeCart();
    });
	
	$('.minusBtn').click(function(){
		no_of_bottle = parseInt($(this).parent('.plus-minus').find('.noValue').val());		
		if(no_of_bottle > 1){
			no_of_bottle = no_of_bottle - 1;
			$(this).parent('.plus-minus').find('.noValue').val(no_of_bottle);
		}
	});
	$('.plusBtn').click(function(){
		no_of_bottle =  parseInt($(this).parent('.plus-minus').find('.noValue').val());
		no_of_bottle = no_of_bottle + 1;
		$(this).parent('.plus-minus').find('.noValue').val(no_of_bottle);
	});
	$(".noValue").on("keypress keyup blur",function (event) {
		"use strict";
	   $(this).val($(this).val().replace(/[^\d].+/, ""));
		if ((event.which < 48 || event.which > 57)) {
			event.preventDefault();
		}
	});
	$('.change-btn').click(function () {
        $(this).parents('.myprofile-main').find('.profiledata').slideUp();
        $(this).parents('.myprofile-main').find('.profileform').slideDown();
    });
    $('.closebutton').click(function () {
        $(this).parents('.myprofile-main').find('.profiledata').slideDown();
        $(this).parents('.myprofile-main').find('.profileform').slideUp();
    });
	$("#ele2").find('.print-link').on('click', function() {
		//Print ele2 with default options
		$.print("#ele2");
	});
	/*$('.lavaLampNoImage li a').hover(function(){
		if($(this).parent('li').hasClass('current')){
			$(this).parents('ul').find('li a').removeAttr('style');
		}
		else{			
			$(this).parents('ul').find('li a').css({'color':'#fff'})
			$(this).parents('ul').find('li.current a').css({'color':'#304e70'})
		}
	},function(){
		$(this).parents('ul').find('li a').removeAttr('style');
	})
	$('.lavaLampNoImage li').click(function(){
		$(this).parents('ul').find('li').removeClass('current');
		$(this).addClass('current');
	});*/
	
	//$(".menu-main,.scrollbar").mCustomScrollbar();
	$(".scrollbar").mCustomScrollbar();
	addRemoveStyle();
});
$(function () {
    $(".loadmore-th").slice(0, 16).show();
    $("#loadMore").on('click', function (e) {
        e.preventDefault();
        $(".loadmore-th:hidden").slice(0, 8).slideDown();
        if ($(".loadmore-th:hidden").length == 0) {
            $("#load").fadeOut('slow');
        }
        $('html,body').animate({
            scrollTop: $(this).offset().top - 100
        }, 1500);
    });
});
/*function cart_open_fun(){
	$('.cart-div').find('.cart-main').addClass('openedCart');
	setTimeout(function(){
		$('.cart-div .shopping-main').addClass('showCartSub');		
		$('.cart-div .docmenu-link').addClass('active');
		console.log('cart_open_fun');
	},500);
}*/
function cart_close_fun(){
	$('.cart-div').find('.shopping-main').removeClass('showCartSub');
	setTimeout(function(){
		$('.cart-div .cart-main').removeClass('openedCart');
		$('.cart-div .docmenu-link').removeClass('active');
		$.fancybox.open({
			src  : 'products/cartModel.php',  
			type : 'ajax',
			opts : {
			  beforeLoad : function() {		  
				  //$('#register_popup').find('h2').text(league_popup);        	
			  }
			}
		  });
	},500);
	
}
function faviourite_close_fun(){
	$('.faviourite-div .shopping-main').removeClass('showCartSub');
	setTimeout(function(){
		$('.faviourite-div .cart-main').removeClass('openedCart');
		$('.faviourite-div .docmenu-link').removeClass('active');
	},500);
}
/*function faviourite_open_fun(){
	$('.faviourite-div .cart-main').addClass('openedCart');
	setTimeout(function(){
		$('.faviourite-div .shopping-main').addClass('showCartSub');		
		$('.faviourite-div .docmenu-link').addClass('active');
		console.log('faviourite_open_fun');
	},500);
}*/
/*function closeCart(){
	clearTimeout(myVar);
	myVar = setTimeout(function(){ 
		$('.cart-link').trigger('click');
	},1700);
}*/
/*function closemenu(){
	$('.navigation').removeClass('showmenu');			
	$('.menu-link').removeClass('crossed');
	setTimeout(function(){
		$('.menu-main-sub').removeClass('showbg');
	},200);
	setTimeout(function(){
		$('.menu-main').removeClass('openedmenu');
		$('.menu-link').removeClass('active');
	},800);
}*/
$(window).scroll(function(){
	if($(this).scrollTop() > 50){
		$('header').addClass('small-header');
	}else{		   
		$('header').removeClass('small-header');
	}
});
/*start lava menu*/
/*$(function() {
	$(".lavaLampNoImage").lavaLamp({
		fx: "backout",
		speed: 700,
		click: function(event, menuItem) {
			return false;
		}
	});
});*/
/*end lava menu*/
var win_width,win_height,recruitment,menu_main_ht,footer_ht,contentarea_ht;
function addRemoveStyle(){
	"use strict";
	win_width = $(window).width();
	win_height = $(window).height();
	
	if(win_width < 781){
		$('.wsmain,.overlapblackbg').css({'height':win_height});
		$('.overlapblackbg').css({'width':win_width});
	}
	else{
		$('.wsmain,.overlapblackbg').removeAttr('style');
	}
	/*if(win_width > 780){
		$('.banner-main').css({'min-height':win_height});
	}
	else{
		$('.banner-main').removeAttr('style');
	}*/
	
	/*recruitment=$('.recruitment').innerHeight();
	menu_main_ht=win_height - recruitment;
	$('.menu-main').css({'height':menu_main_ht});
	footer_ht=$('footer').innerHeight();
	contentarea_ht=win_height-footer_ht;
	$('.contentarea-sub').css({'min-height':contentarea_ht});*/
}
$(document).mouseup(function(e)
{
	"use strict";
	var forgot1 = $('.forgot-main');
	var forgot2 = $('.forgot-link');
	if (!forgot1.is(e.target) && forgot1.has(e.target).length === 0) 
	{
		if (!forgot2.is(e.target) && forgot2.has(e.target).length === 0) 
		{
			$('.forgot-main').removeClass('opened-forgot');
			$('.forgot-main-sub').slideUp();
		}
	}
	var fav1 = $('.faviourite-div .cart-main');
	var fav2 = $('.faviourite-div .docmenu-link');
	var fav3 = $('.favourite-anchor');
	var fav4 = $('.save-to-fav-link');
	if (!fav1.is(e.target) && fav1.has(e.target).length === 0) 
	{
		if (!fav2.is(e.target) && fav2.has(e.target).length === 0) 
		{
			if (!fav3.is(e.target) && fav3.has(e.target).length === 0) 
			{
				if (!fav4.is(e.target) && fav4.has(e.target).length === 0)
				{
					$('.faviourite-div .shopping-main').removeClass('showCartSub');
					setTimeout(function(){
						$('.faviourite-div .cart-main').removeClass('openedCart');
						$('.faviourite-div .docmenu-link').removeClass('active');
					},500);
				}
			}
		}
	}
	var cart1 = $('.cart-div .cart-main');
	var cart2 = $('.cart-div .docmenu-link');
	var cart3 = $('.addtocart-anchor');
	var cart4 = $('.addtocart-popbtn');
	var cart5 = $('.addtocart-detailbtn');
	if (!cart1.is(e.target) && cart1.has(e.target).length === 0) 
	{
		if (!cart2.is(e.target) && cart2.has(e.target).length === 0) 
		{	
			if (!cart3.is(e.target) && cart3.has(e.target).length === 0) 
			{
				if (!cart4.is(e.target) && cart4.has(e.target).length === 0) 
				{
					if (!cart5.is(e.target) && cart5.has(e.target).length === 0) 
					{
						$('.cart-div .shopping-main').removeClass('showCartSub');
						setTimeout(function(){
							$('.cart-div .cart-main').removeClass('openedCart');
							$('.cart-div .docmenu-link').removeClass('active');
						},500);
					}
				}
			}
		}
	}
	var account1 = $('.account-div');
	var account2 = $('.account-link');
	if (!account1.is(e.target) && account1.has(e.target).length === 0) 
	{
		if (!account2.is(e.target) && account2.has(e.target).length === 0) 
		{
			$('.account-ul').removeClass('showul');
			setTimeout(function(){
				$('.account-div').removeClass('opened');
			},100);
			$('.account-link').removeClass('active')
		}
	}
	if(win_width < 781){
		var search1 = $('.search-div');
		var search2 = $('.search-link');
		if (!search1.is(e.target) && search1.has(e.target).length === 0) 
		{
			if (!search2.is(e.target) && search2.has(e.target).length === 0) 
			{
				$('.search-link').removeClass('active')
				$('.search-div').slideUp(); 
			}
		}
	}
	/*var menu1 = $('.menu-main');
	var menu2 = $('.menu-link');
	if (!menu1.is(e.target) && menu1.has(e.target).length === 0) 
	{
		if (!menu2.is(e.target) && menu2.has(e.target).length === 0) 
		{
			closemenu();
			
		}
	}*/
});
$(window).load(function() {
	"use strict";	
	addRemoveStyle();
});
$(window).resize(function() {
	"use strict";	
	addRemoveStyle();
});