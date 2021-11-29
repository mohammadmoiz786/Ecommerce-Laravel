$(function ($) {
  "use strict";

    // Lozad Section
    const observer = lozad(); // lazy loads elements with default selector as '.lozad'
    observer.observe();
    // Lozad Section Ends

  $(document).ready(function () {



      // Profile Dropdown
      $('.profilearea.my-dropdown').on('mouseover', function () {
          $('.profilearea.my-dropdown .my-dropdown-menu.profile-dropdown').stop().show(0);
      });

      $('.profilearea.my-dropdown').on('mouseout', function () {
          $('.profilearea.my-dropdown .my-dropdown-menu.profile-dropdown').stop().hide(0);
      });

      // MENU AREA STARTS

      // If the display desktop view
      var w = window.innerWidth;
      if (w > 991) {

          // IF it is home page

          if(mainurl+'/' === window.location.href){

            if(ps_category == 1){

              $(".categories_title").addClass('active');
              $('.categories_menu_inner').stop().slideDown('medium');
              //     /*------addClass/removeClass categories-------*/
              $(".categories_menu_inner > ul > li").on("mouseover", function () {
                  $(this).find('.link-area a').toggleClass('open').parent().parent().find('.categories_mega_menu, categorie_sub').addClass('open');
                  $(this).siblings().find('.categories_mega_menu, .categorie_sub').removeClass('open');
              });
              $(document).on('mouseover', function (e) {
                  var container = $(".categories_menu_inner, .categories_mega_menu, .categories_title");

                  // if the target of the click isn't the container nor a descendant of the container
                    if (!container.is(e.target) && container.has(e.target).length === 0) 
                    {
                      $('.categories_mega_menu, .categorie_sub').removeClass('open');
                      $(".categories_mega_menu").removeClass('open');
                      $(".categories_title").removeClass('active');
                    }

              });
            }else{
            /*categories slideToggle*/
            $(".categories_title").on("mouseover", function() {
              $(".categories_title").addClass('active');
              $('.categories_menu_inner').stop().slideDown('medium');
              });
  
              //     /*------addClass/removeClass categories-------*/
              $(".categories_menu_inner > ul > li").on("mouseover", function () {
                  $(this).find('.link-area a').toggleClass('open').parent().parent().find('.categories_mega_menu, categorie_sub').addClass('open');
                  $(this).siblings().find('.categories_mega_menu, .categorie_sub').removeClass('open');
              });
  
              $(document).on('mouseover', function (e) {
                  var container = $(".categories_menu_inner, .categories_mega_menu, .categories_title");
  
                  // if the target of the click isn't the container nor a descendant of the container
                    if (!container.is(e.target) && container.has(e.target).length === 0) 
                    {
                      $('.categories_menu_inner').stop().slideUp('medium');
                      $('.categories_mega_menu, .categorie_sub').removeClass('open');
                      $(".categories_mega_menu").removeClass('open');
                      $(".categories_title").removeClass('active');
                    }
  
              });
            }

          }

          else {
            /*categories slideToggle*/
            $(".categories_title").on("mouseover", function() {
            $(".categories_title").addClass('active');
            $('.categories_menu_inner').stop().slideDown('medium');
            });

            //     /*------addClass/removeClass categories-------*/
            $(".categories_menu_inner > ul > li").on("mouseover", function () {
                $(this).find('.link-area a').toggleClass('open').parent().parent().find('.categories_mega_menu, categorie_sub').addClass('open');
                $(this).siblings().find('.categories_mega_menu, .categorie_sub').removeClass('open');
            });

            $(document).on('mouseover', function (e) {
                var container = $(".categories_menu_inner, .categories_mega_menu, .categories_title");

                // if the target of the click isn't the container nor a descendant of the container
                  if (!container.is(e.target) && container.has(e.target).length === 0) 
                  {
                    $('.categories_menu_inner').stop().slideUp('medium');
                    $('.categories_mega_menu, .categorie_sub').removeClass('open');
                    $(".categories_mega_menu").removeClass('open');
                    $(".categories_title").removeClass('active');
                  }

            });
          }
      }
        // If the display mobile view
      else {
          $(".categories_title").on("click", function () {
              $(this).toggleClass('active');
              $('.categories_menu_inner').stop().slideToggle('medium');
          });
          /*------addClass/removeClass categories-------*/
          $(".categories_menu_inner > ul > li").on("click", function () {
              $(this).find('.link-area a').toggleClass('open').parent().parent().find('.categories_mega_menu, categorie_sub').toggleClass('open');
              $(this).siblings().find('.categories_mega_menu, .categorie_sub').removeClass('open');
          });


          $(document).on('click', function (e) {
              var container = $(".categories_menu_inner, .categories_mega_menu, .categories_title");
              // if the target of the click isn't the container nor a descendant of the container
              if (!container.is(e.target) && container.has(e.target).length === 0) {
                  $('.categories_menu_inner').stop().slideUp('medium');
                  $('.categories_mega_menu, .categorie_sub').removeClass('open');
                  $(".categories_mega_menu").removeClass('open');
                  $(".categories_title").removeClass('active');
              }
          });

          $(".categories_menu_inner > ul > li.dropdown_list .link-area > a").on('click', function () {
              $(this).find('i').toggleClass('fa-plus').toggleClass('fa-minus');
          });

          $(".categories_menu_inner > ul > li.dropdown_list .link-area > a").each(function () {
              $(this).html('<i class="fas fa-plus"></i>');
          });

      }

      // MENU AREA ENDS

// XZOOM JS STARTS 

if(w <= 991 )

{

$(document).on('mouseover', function(e) 
{
    var container = $(".xzoom-preview");

    // if the target of the click isn't the container nor a descendant of the container
    if (!container.is(e.target) && container.has(e.target).length === 0) 
    {
      $(".xzoom-preview").css('display','none');
    }
});

}


// XZOOM JS ENDS


      //   magnific popup activation
      $('.video-play-btn').magnificPopup({
          type: 'video'
      });
      
      $('.img-popup').magnificPopup({
          type: 'image'
      });

      // Off Canvas Menu js
      $('.off-canvas-menu-toggle, .off-canvas-menu-overlay, .remove-off-nav').click(function(){
          $('.off-canvas-menu-toggle').toggleClass('clicked');
          $('.off-canvas-menu-overlay').toggleClass('show');
          $('.off-canvas-menu').toggleClass('show');
          $('body').toggleClass('overflow');
      });

      if(w <= 991 ){
        $(document).on('mouseover', function(e) 
        {
            var container = $(".xzoom-preview");
            // if the target of the click isn't the container nor a descendant of the container
            if (!container.is(e.target) && container.has(e.target).length === 0) 
            {
              $(".xzoom-preview").css('display','none');
            }
        });
      }
      
      // Toltip 
      $('[data-toggle="tooltip"]').tooltip();

      // Hero Area Slider
      var $mainSlider = $('.intro-carousel');
      if($('.intro-content').length > 1)
      {
          $mainSlider.owlCarousel({
              lazyLoad: true,
              loop: true,
              nav: false,
              dots: true,
              autoplay: true,
              autoplayTimeout: 8000,
              animateOut: 'fadeOut',
              animateIn: 'fadeIn',
              smartSpeed: 1000,
              onInitialized: startProgressBar,
              onTranslate: resetProgressBar,
              onTranslated: startProgressBar,
              responsive: {
                  0: {
                      dots: false,
                      items: 1
                  },
                  768: {
                      items: 1
                  }
              },
  
          });
       }
      // Hero Area Animation

      if($('.intro-content').length > 1)
      {
      
      $mainSlider.on('changed.owl.carousel', function(event) {
          var $currentItem = $('.owl-item', $mainSlider).eq(event.item.index)
          
          var $class11 = $currentItem.find('.subtitle').attr('data-animation');
          $currentItem.find('.subtitle').addClass($class11);
          setTimeout(function(){
                  $currentItem.find('.subtitle').removeClass($class11);
          }, 900);
      
          var $class22 = $currentItem.find('.title').attr('data-animation');
          $currentItem.find('.title').addClass($class22);
          setTimeout(function(){
                  $currentItem.find('.title').removeClass($class22);
          }, 900);
          var $class33 = $currentItem.find('.text').attr('data-animation');
          $currentItem.find('.text').addClass($class33);
          setTimeout(function(){
                  $currentItem.find('.text').removeClass($class33);
          }, 900);
      
      
      });
      
      }

      function startProgressBar() {
          // apply keyframe animation
          $(".slide-progress").css({
              width: "100%",
              transition: "width 8000ms"
          });
      }
      function resetProgressBar() {
          $(".slide-progress").css({
              width: 0,
              transition: "width 0s"
          });
      }

      // flas-deal-slider
      var $flas_deal_slider = $('.flas-deal-slider');
      $flas_deal_slider.owlCarousel({
          lazyLoad: true,
          loop: true,
          dots: false,
          nav: true,
          navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
          margin: 30,
          autoplay: false,
          items: 2,
          autoplayTimeout: 6000,
          smartSpeed: 1000,
          responsive: {
              0: {
                  items: 1
              },
              992: {
                  items: 1
              },
              1650: {
                  items: 2
              }
          }
      });

      /** Product Details  carousel **/
      var $all_slider = $('.all-slider');
      $all_slider.owlCarousel({
          lazyLoad: true,
          loop: false,
          dots: false,
          nav: true,
          navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
          margin: 0,
          autoplay: false,
          items: 4,
          autoplayTimeout: 6000,
          smartSpeed: 1000,
          responsive: {
              0: {
                  items: 4
              },
              768: {
                  items: 4
              }
          }
      });

      // brand_slider
      var $brand_slider = $('.brand-slider');
      $brand_slider.owlCarousel({
          lazyLoad: true,
          loop: true,
          dots: false,
          nav: true,
          navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
          margin: 0,
          autoplay: false,
          items: 4,
          autoplayTimeout: 6000,
          smartSpeed: 1000,
          responsive: {
              0: {
                  items: 2
              },
              768: {
                  items: 3
              },
              768: {
                  items: 4
              },
              992: {
                  items: 4
              },
              1650: {
                  items: 5
              }
          }
      });

      // Product deal countdown
      $('[data-countdown]').each(function () {
          var $this = $(this),
              finalDate = $(this).data('countdown');
          $this.countdown(finalDate, function (event) {
              $this.html(event.strftime('<span><span>%D</span> <small>'+lang.days+'</small></span> <span><span>%H</span> <small>'+lang.hrs+'</small></span> <span><span>%M</span> <small>'+lang.min+'</small></span> <span><span>%S</span><small>'+lang.sec+'</small></span>'));
          });
      });


    // Tawk.to Section

    if(gs.is_talkto == 1)
    {
        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
        (function(){
        var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
        s1.async=true;
        s1.src='https://embed.tawk.to/'+ gs.talkto +'/default';
        s1.charset='UTF-8';
        s1.setAttribute('crossorigin','*');
        s0.parentNode.insertBefore(s1,s0);
        })();
    }

    // Tawk.to Section Ends


  });


  /*  back to top */
  $(document).on('click', '.bottomtotop', function () {
      $("html,body").animate({
          scrollTop: 0
      }, 2000);
  });

  //define variable for store last scrolltop
  var lastScrollTop = '';
  $(window).on('scroll', function () {
      var $window = $(window);
      if ($window.scrollTop( ) > 200 ) {
          $(".logo-header").addClass('nav-fixed');
      } else {
          $(".logo-header").removeClass('nav-fixed');
      }

      /*---------------------------
          back to top show / hide
      ---------------------------*/
      var st = $(this).scrollTop();
      var ScrollTop = $('.bottomtotop');
      if ($(window).scrollTop() > 1000) {
          ScrollTop.fadeIn(1000);
      } else {
          ScrollTop.fadeOut(1000);
      }
      lastScrollTop = st;

  });

  $(window).on('load', function () {
      var backtoTop = $('.bottomtotop')
      backtoTop.fadeOut(100);
  });

  // Coupon code toggle code
  $('#coupon-link').on('click', function () {
      $("#coupon-form,#check-coupon-form").toggle();
  })
  

//**************************** CONTACT FORM SUBMIT SECTION ****************************************

  $('.contactform').on('submit',function(e){
      var $this = $(this);
      e.preventDefault();
      $this.find('.gocover').show();
      $this.find('.input-field').prop('readonly',true);
      $this.find('button').prop('disabled',true);
          $.ajax({
           method:"POST",
           url:$(this).prop('action'),
           data:new FormData(this),
           contentType: false,
           cache: false,
           processData: false,
           success:function(data)
           {
              if ((data.errors)) {

                for(var error in data.errors) {
                  toastr.error(data.errors[error]);
                }
              }
              else {
                 toastr.success(data);
                 $this.find('.input-field').val('');
                 $('.off-canvas-menu').removeClass('show');
                 $('.off-canvas-menu-overlay').removeClass('show');
              }
              $this.find('.gocover').hide();
              $this.find('.input-field').prop('readonly',false);
              $this.find('button').prop('disabled',false);
              $this.find('.refresh_code').trigger('click');

           }

          });
    });

//**************************** CONTACT FORM SUBMIT SECTION ENDS ****************************************

//**************************** SUBSCRIBE FORM SUBMIT SECTION ****************************************

  $('.subscribeform').on('submit',function(e){
      var $this = $(this);
      e.preventDefault();
      $this.find('input').prop('readonly',true);
      $this.find('button').prop('disabled',true);
      $('#sub-btn').prop('disabled',true);
          $.ajax({
           method:"POST",
           url:$(this).prop('action'),
           data:new FormData(this),
           contentType: false,
           cache: false,
           processData: false,
           success:function(data)
           {
              if ((data.errors)) {
                for(var error in data.errors) {
                  toastr.error(data.errors[error]);
                }
              }
              else {
                 toastr.success(data);
                 $this.find('input[name=email]').val('');
              }
              $this.find('input').prop('readonly',false);
              $this.find('button').prop('disabled',false);
           }
          });
    });

//**************************** SUBSCRIBE FORM SUBMIT SECTION ENDS ****************************************

//**************************** EMAIL REPLY FORM SUBMIT SECTION ****************************************

$('.emailreply').on('submit',function(e){
var $this = $(this);
e.preventDefault();
$this.find('input,textarea').prop('readonly',true);
$this.find('.submit-btn').prop('disabled',true);
$('#sub-btn').prop('disabled',true);
    $.ajax({
     method:"POST",
     url:$(this).prop('action'),
     data:new FormData(this),
     contentType: false,
     cache: false,
     processData: false,
     success:function(data)
     {
        if ((data.errors)) {
          for(var error in data.errors) {
            toastr.error(data.errors[error]);
          }
        }
        else {
           toastr.success(data);
           $this.find('input,textarea').val('');
        }
        $this.find('input,textarea').prop('readonly',false);
        $this.find('.submit-btn').prop('disabled',false);
        $('.close').click();
     }
    });
});

//**************************** EMAIL REPLY FORM SUBMIT SECTION ENDS ****************************************

//**************************** WISHLIST SECTION ****************************************

$(document).on('click', '.add-to-wish', function(e){
  e.preventDefault()
  if($(this).data('href')) {
      $.get( $(this).data('href') , function( data ) {
          if(data[0] == 1) {
            toastr.success(data['success']);
            $('#wishlist-count').html(data[1]);
            }
          else {
            toastr.error(data['error']);
            }
      });
  }
});

$(document).on('click', '.wishlist-remove', function(e){
e.preventDefault()
$(this).parent().parent().remove();
  $.get( $(this).data('href') , function( data ) {
    $('#wishlist-count').html(data[1]);
    toastr.success(data['success']);
  });
});

//**************************** WISHLIST SECTION ENDS ****************************************

//**************************** COMPARE SECTION ****************************************

$(document).on('click', '.add-to-compare', function(e){
  e.preventDefault();
  $.get( $(this).data('href') , function( data ) {
      $("#compare-count").html(data[1]);
      if(data[0] == 0) {
          toastr.success(data['success']);
        }
      else {
          toastr.error(data['error']);
        }

  });
});

$(document).on('click', '.compare-remove', function(){
var class_name = $(this).attr('data-class');
  $.get( $(this).data('href') , function( data ) {
      $("#compare-count").html(data[1]);
      if(data[0] == 0) {
          $('.'+class_name).remove();
          toastr.success(data['success']);
        }
      else {
          $('h2.title').html(data['error']);
          $('.compare-page-content-wrap').remove();
          $('.'+class_name).remove();
          toastr.success(data['success']);
        }
  });
});

//**************************** COMPARE SECTION ENDS ****************************************

//**************************** AFFILATE SECTION ****************************************

$('.add-to-affilate').on('click',function(){

var value = $(this).data('val');
var tempInput = document.createElement("input");
tempInput.style = "position: absolute; left: -1000px; top: -1000px";
tempInput.value = value;
document.body.appendChild(tempInput);
tempInput.select();
document.execCommand("copy");
document.body.removeChild(tempInput);
toastr.success(lang.affiliate_link_copy);

});

//**************************** AFFILATE SECTION ENDS ****************************************

//**************************** CART SECTION ****************************************

// ADD TO CART

$(document).on('click', '.add-to-cart', function(){

  $.get( $(this).data('href') , function( data ) {

      if(data == 'digital') {
        toastr.error(lang.cart_already);
      }
      else if(data[0] == 0) {
        toastr.error(lang.cart_out);
      }
      
      else {
        $("#cart-count").html(data[0]);
        $("#total-cost").html(data[1]);
        $("#cart-items").load(mainurl+'/carts/view');
        toastr.success(lang.cart_success);
      }
  });
  return false;
});

// CART OUT OF STOCK

$(document).on('click', '.cart-out-of-stock', function(){
return false;
});

// Buy Now

$(document).on('click', '.affilate-btn', function(e){
e.preventDefault();
window.location = $(this).data('href');
});

// CART REMOVE

$(document).on('click', '.cart-remove', function(){
var $selector = $(this).data('class');
$('.'+$selector).hide();
  $.get( $(this).data('href') , function( data ) {
      if(data[0] == 0) {
          $("#cart-count").html(data[0]);
          $('.cart-table').html('<h3 class="mt-1 pl-3 text-left">'+lang.cart_empty+'</h3>');
          $('#cart-items').html('<p class="mt-1 pl-3 text-left">'+lang.cart_empty+'</p>');
          $('.cartpage .col-lg-4').html('');
          $("#total-cost").html(data[1]);
        }
      else {
         $('.cart-quantity').html(data[1]);
         $('.cart-total').html(data[0]);
         $("#total-cost").html(data[0]);
         $('.coupon-total').val(data[0]);
         $('.main-total').html(data[3]);

        }

  });
});

// CART ADD BY ONE

$(document).on("click", ".adding" , function(){
$('.gocover').show();
var pid =  $(this).parent().parent().find('.prodid').val();
var itemid =  $(this).parent().parent().find('.itemid').val();
var size_qty = $(this).parent().parent().find('.size_qty').val();
var size_price = $(this).parent().parent().find('.size_price').val();
var stck = $("#stock"+itemid).val();
var qty = $("#qty"+itemid).html();
if(stck != "")
{
var stk = parseInt(stck);
  if(qty < stk)
  {
     qty++;
 $("#qty"+itemid).html(qty);
  }
}
else{
 qty++;
 $("#qty"+itemid).html(qty);
}
    $.ajax({
            type: "GET",
            url:mainurl+"/addbyone",
            data:{id:pid,itemid:itemid,size_qty:size_qty,size_price:size_price},
            success:function(data){
              $('.gocover').hide();
                if(data == 0)
                {
                  toastr.error(lang.cart_out);
                }
                else
                {
                  $(".discount").html($("#d-val").val());
                  $(".cart-total").html(data[0]);
                  $("#total-cost").html(data[0]);
                  $(".main-total").html(data[3]);
                  $(".coupon-total").val(data[3]);
                  $("#prc"+itemid).html(data[2]);
                  $("#prct"+itemid).html(data[2]);
                  $("#cqt"+itemid).html(data[1]);
                  $("#qty"+itemid).html(data[1]);
                  $("#discount"+itemid).html(data[4]);
                }
              }
      });
});

// CART REDUCE BY ONE

$(document).on("click", ".reducing" , function(){

var pid =  $(this).parent().parent().find('.prodid').val();
var itemid =  $(this).parent().parent().find('.itemid').val();
var size_qty = $(this).parent().parent().find('.size_qty').val();
var size_price = $(this).parent().parent().find('.size_price').val();
var stck = $("#stock"+itemid).val();
var qty = $("#qty"+itemid).html();
var minimum_qty = $(this).parent().parent().find('.minimum_qty').val();
qty--;
if(qty < 1)
 {
 $("#qty"+itemid).html("1");
 }
 else if(qty < minimum_qty){
  return false;
 }
 else{

  $('.gocover').show();

 $("#qty"+itemid).html(qty);
    $.ajax({
            type: "GET",
            url:mainurl+"/reducebyone",
            data:{id:pid,itemid:itemid,size_qty:size_qty,size_price:size_price},
            success:function(data){
                $('.gocover').hide();
                $(".discount").html($("#d-val").val());
                $(".cart-total").html(data[0]);
                $("#total-cost").html(data[0]);
                $(".main-total").html(data[3]);
                $(".coupon-total").val(data[3]);
                $("#prc"+itemid).html(data[2]);
                $("#prct"+itemid).html(data[2]);
                $("#cqt"+itemid).html(data[1]);
                $("#qty"+itemid).html(data[1]);
                $("#discount"+itemid).html(data[4]);
              }
      });
 }
});

// COUPON FORM IN CART

$("#coupon-form").on('submit', function () {
var val = $("#code").val();
var total = $("#grandtotal").val();
    $.ajax({
            type: "GET",
            url:mainurl+"/carts/coupon",
            data:{code:val, total:total},
            success:function(data){
                if(data == 0)
                {
                    toastr.error(lang.no_coupon);
                    $("#code").val("");
                }
                else if(data == 2)
                {
                    toastr.error(lang.already_coupon);
                    $("#code").val("");
                }
                else
                {
                    $("#coupon_form").toggle();
                    $(".main-total").html(data[0]);
                    $(".discount").html(data[4]);
                    toastr.success(lang.coupon_found);
                    $("#code").val("");
                }
              }
      });
      return false;
});




//**************************** CART SECTION ENDS ****************************************


//**************************** MODAL LOGIN FORM **************************************

  $(".mloginform").on('submit', function (e) {
      var $this = $(this).parent();
      e.preventDefault();
      $this.find('button.submit-btn').prop('disabled', true);
      $this.find('.alert-info').show();
      var authdata = $this.find('.mauthdata').val();
      $('.signin-form .alert-info p').html(authdata);
      $.ajax({
        method: "POST",
        url: $(this).prop('action'),
        data: new FormData(this),
        dataType: 'JSON',
        contentType: false,
        cache: false,
        processData: false,
        success: function (data) {
          if ((data.errors)) {
            $this.find('.alert-success').hide();
            $this.find('.alert-info').hide();
            $this.find('.alert-danger').show();
            $this.find('.alert-danger ul').html('');
            for (var error in data.errors) {
              $('.signin-form .alert-danger p').html(data.errors[error]);
            }
          } else {
            $this.find('.alert-info').hide();
            $this.find('.alert-danger').hide();
            $this.find('.alert-success').show();
            $this.find('.alert-success p').html('Success !');
            if (data == 1) {
              location.reload();
            } else {
              window.location = data;
            }

          }
          $this.find('button.submit-btn').prop('disabled', false);
        }

      });

    });

//**************************** MODAL LOGIN FORM ENDS **************************************

//**************************** MODAL REGISTER FORM ****************************************

  $(".mregisterform").on('submit', function (e) {
      e.preventDefault();
      var $this = $(this).parent();
      $this.find('button.submit-btn').prop('disabled', true);
      $this.find('.alert-info').show();
      var processdata = $this.find('.mprocessdata').val();
      $this.find('.alert-info p').html(processdata);
      $.ajax({
        method: "POST",
        url: $(this).prop('action'),
        data: new FormData(this),
        dataType: 'JSON',
        contentType: false,
        cache: false,
        processData: false,
        success: function (data) {
          if (data == 1) {
            window.location = mainurl + '/user/dashboard';
          } else {

            if ((data.errors)) {
              $this.find('.alert-success').hide();
              $this.find('.alert-info').hide();
              $this.find('.alert-danger').show();
              $this.find('.alert-danger ul').html('');
              for (var error in data.errors) {
                $this.find('.alert-danger p').html(data.errors[error]);
              }
              $this.find('button.submit-btn').prop('disabled', false);
            } else {
              $this.find('.alert-info').hide();
              $this.find('.alert-danger').hide();
              $this.find('.alert-success').show();
              $this.find('.alert-success p').html(data);
              $this.find('button.submit-btn').prop('disabled', false);
            }
          }

          $('.refresh_code').click();

        }
      });

    });

//**************************** MODAL REGISTER FORM ENDS ****************************************

//**************************** MODAL FORGOT FORM ****************************************

$("#mforgotform").on('submit', function (e) {
e.preventDefault();
var $this = $(this).parent();
$this.find('button.submit-btn').prop('disabled', true);
$this.find('.alert-info').show();
$this.find('.alert-info p').html($('.fauthdata').val());
$.ajax({
  method: "POST",
  url: $(this).prop('action'),
  data: new FormData(this),
  dataType: 'JSON',
  contentType: false,
  cache: false,
  processData: false,
  success: function (data) {
    if ((data.errors)) {
      $this.find('.alert-success').hide();
      $this.find('.alert-info').hide();
      $this.find('.alert-danger').show();
      $this.find('.alert-danger ul').html('');
      for (var error in data.errors) {
        $this.find('.alert-danger p').html(data.errors[error]);
      }
    } else {
      $this.find('.alert-info').hide();
      $this.find('.alert-danger').hide();
      $this.find('.alert-success').show();
      $this.find('.alert-success p').html(data);
      $this.find('input[type=email]').val('');
    }
    $this.find('button.submit-btn').prop('disabled', false);
  }

});

});

//**************************** MODAL FORGOT FORM ENDS ****************************************

//**************************** VENDOR MODAL****************************************

$('#nav-log-tab11').on( "click", function() {
  $('#vendor-login .modal-dialog').removeClass('modal-lg');
});

$('#nav-reg-tab11').on( "click", function() {
  $('#vendor-login .modal-dialog').addClass('modal-lg');
});

//**************************** VENDOR MODAL ENDS****************************************

//**************************** FORGOT MODAL SHOW****************************************

$("#show-forgot").on('click',function(){
  $("#user-login").modal("hide");
  $("#forgot-modal").modal("show");
  $(".show-login").prop("id","show-login");
});

$("#show-forgot1").on('click',function(){
  $("#vendor-login").modal("hide");
  $("#forgot-modal").modal("show");
  $(".show-login").prop("id","show-login1");
});


//**************************** FORGOT MODAL SHOW ENDS****************************************

//**************************** LOGIN MODAL SHOW****************************************

$(document).on('click','#show-login',function(){
    $("#forgot-modal").modal("hide");
    $("#user-login").modal("show");
});

$(document).on('click','#show-login1',function(){
  $("#forgot-modal").modal("hide");
  $("#vendor-login").modal("show");
});

//**************************** LOGIN MODAL SHOW ENDS****************************************

//************************* BUTTON CLOSE ***********************************


$('button.close.alert-close').on('click',function(){
$(this).parent().hide();
})

//************************* BUTTON CLOSE ENDS ******************************* 



//**************************** TOOLTIP SECTION ****************************************
$('[data-toggle="tooltip"]').tooltip({

});

$('[rel-toggle="tooltip"]').tooltip();

$('[data-toggle="tooltip"]').on('click',function(){
    $(this).tooltip('hide');
})


$('[rel-toggle="tooltip"]').on('click',function(){
    $(this).tooltip('hide');
})

//**************************** TOOLTIP SECTION ENDS ****************************************

//**************************** COMMENT SECTION ****************************************

// COMMENT FORM

$(document).on('submit','#comment-form',function(e){
e.preventDefault();
$('#comment-form button[type=submit]').prop('disabled',true);
    $.ajax({
     method:"POST",
     url:$(this).prop('action'),
     data:new FormData(this),
     contentType: false,
     cache: false,
     processData: false,
     success:function(data)
     {
        $('#comment-form textarea').val('');
        $('.all-comment').prepend(data);

        $('#comment-form button[type=submit]').prop('disabled',false);
     }

    });
});

// COMMENT FORM ENDS

// REPLY FORM

$(document).on('submit','.reply-form',function(e){
e.preventDefault();
  var btn = $(this).find('button[type=submit]');
  btn.prop('disabled',true);
  var $this = $(this).parent();
  var text = $(this).find('textarea');
    $.ajax({
     method:"POST",
     url:$(this).prop('action'),
     data:new FormData(this),
     contentType: false,
     cache: false,
     processData: false,
     success:function(data)
     {
        $('#comment-form textarea').val('');
        $('button.submit-btn').prop('disabled',false);
        $this.before(data);
        $this.addClass('d-none');
        text.val('');
        btn.prop('disabled',false);
     }

    });
});

// REPLY FORM ENDS

// EDIT
$(document).on('click','.edit',function(){
var text = $(this).parent().parent().prev().find('p').html();
text = $.trim(text);
$(this).parent().parent().parent().parent().next('.edit-area').find('textarea').val(text);
$(this).parent().parent().parent().parent().next('.edit-area').toggleClass('d-none');
});
// EDIT ENDS

// UPDATE
$(document).on('submit','.update',function(e){
e.preventDefault();
var btn = $(this).find('button[type=submit]');
var text = $(this).parent().prev().find('.right-area .comment-body p');
var $this = $(this).parent();
btn.prop('disabled',true);
    $.ajax({
     method:"POST",
     url:$(this).prop('action'),
     data:new FormData(this),
     contentType: false,
     cache: false,
     processData: false,
     success:function(data)
     {
      text.html(data);
      $this.addClass('d-none');
      btn.prop('disabled',false);
     }
    });
});
// UPDATE ENDS

// COMMENT DELETE
$(document).on('click','.comment-delete',function(){
var count = parseInt($("#comment_count").html());
count--;
$("#comment_count").html(count);
$(this).parent().parent().parent().parent().parent().remove();
$.get($(this).data('href'));
});
// COMMENT DELETE ENDS


// COMMENT REPLY
$(document).on('click','.reply',function(){
$(this).parent().parent().parent().parent().parent().show().find('.reply-reply-area').removeClass('d-none');
$(this).parent().parent().parent().parent().parent().show().find('.reply-reply-area .reply-form textarea').focus();

});
// COMMENT REPLY ENDS

// REPLY DELETE
$(document).on('click','.reply-delete',function(){
$(this).parent().parent().parent().parent().remove();
$.get($(this).data('href'));
});
// REPLY DELETE ENDS

// View Replies
$(document).on('click','.view-reply',function(){
$(this).parent().parent().parent().parent().siblings('.replay-review').toggleClass('d-none');
});
// View Replies ENDS

// CANCEL CLICK

$(document).on('click','#comment-area .remove',function(){
$(this).parent().parent().addClass('d-none');
});

// CANCEL CLICK ENDS

//**************************** COMMENT SECTION ENDS ****************************************

//**************************** REVIEW SECTION ****************************************

// Review Rating Stars

$(document).on('click','.stars', function(){
$('.stars').removeClass('active');
$(this).addClass('active');
$('#rating').val($(this).data('val'));

});

// Review Submit

$(document).on('submit','#reviewform',function(e){
var $this = $(this);
e.preventDefault();
$('.gocover').show();
$('#reviewform button[type=submit]').prop('disabled',true);
    $.ajax({
     method:"POST",
     url:$(this).prop('action'),
     data:new FormData(this),
     contentType: false,
     cache: false,
     processData: false,
     success:function(data)
     {

        if ((data.errors)) {
          for(var error in data.errors) {
            toastr.error(data.errors[error]);
            $('#reviewform button.mybtn1').eq(0).focus();
          }
        }
        else {
           toastr.success(data);
           $('#reviewform textarea').eq(0).focus();
           $('#reviewform textarea').val('');
           $('#product-reviews').load($this.data('href'));
           $('#rating-load').load($this.data('side-href'));
        }

        $('.gocover').hide();
        $('#reviewform button[type=submit]').prop('disabled',false);
     }

    });
});

//**************************** REVIEW SECTION ENDS ****************************************

//**************************** FAVORITE PRODUCT SECTION ****************************************

$(document).on("click", ".favorite-prod" , function(){
  var $this = $(this);
  $.get( $(this).data('href'), function( data ) {
    $this.attr('data-href','');
    $this.html(data['icon'] +' '+data['text']);
  });
    
  });

//**************************** FAVORITE PRODUCT SECTION ENDS ****************************************

//**************************** QUICK VIEW SECTION ****************************************

$(document).on('click', '.quick-view', function(e){
e.preventDefault();
var $this = $("#quickview");
$this.find('.modal-header').hide();
$this.find('.modal-body').hide();
$this.find('.modal-content').css('border','none');
  $('.submit-loader').show();
  $(".quick-view-modal").load($(this).data('href'),function(response, status, xhr){
    if(status == "success")
    $('.xzoom5').on('load', function(){
    $('.submit-loader').hide();
    $this.find('.modal-header').show();
    $this.find('.modal-body').show();
    $this.find('.modal-content').css('border','1px solid #00000033');
          $('.all-slider').owlCarousel({
            lazyLoad: true,
            loop: false,
            dots: false,
            nav: true,
            navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
            margin: 0,
            autoplay: false,
            items: 4,
            autoplayTimeout: 6000,
            smartSpeed: 1000,
            responsive: {
                0: {
                    items: 4
                },
                768: {
                    items: 4
                }
            }
        });
      });
  });

});

//**************************** QUICK VIEW SECTION ENDS ****************************************

//**************************** LOADER ****************************************

  if(gs.is_loader == 1)
  {
    $(window).on("load", function (e) {
      setTimeout(function(){
          $('#preloader').fadeOut(500);
        },100)
    });
  }

//**************************** LOADER ENDS ****************************************

//**************************** POPUP BANNER ****************************************

$('.preload-close').click(function(){
$('.subscribe-preloader-wrap').hide();
});

$(window).load(function(){
setTimeout(function(){
    $('#subscriptionForm').show();
},10000)
});

//**************************** POPUP BANNER ENDS ****************************************

//**************************** COOKIE ****************************************

if(gs.is_cookie == 1)
{
$('.btn-accept').on('click',function(){
    $('.cookie-bar-wrap').removeClass('show');
});
}

//**************************** COOKIE ENDS ****************************************


//**************************** PAGINATION STARTS ****************************************

$(document).on('click', '.pagination li', function (e) {
e.preventDefault();

var $this = $(this);
if ($this.find('a').attr('href') != '#' && $this.find('a').attr('href')) {
  $('#preloader').show();
  $('#ajaxContent').load($this.find('a').attr('href'), function (response, status, xhr) {
    if (status == "success") {
      $("html,body").animate({
        scrollTop: 0
      }, 1);
      $('#preloader').fadeOut(500);

      if ($(this).parents('.categori-item-area').length) {

        addToPagination();
      }
    }
  });
}
});

//**************************** PAGINATION ENDS ****************************************

//**************************** GLOBAL CAPCHA****************************************

$('.refresh_code').on( "click", function() {
  $.get(mainurl+'/contact/refresh_code', function(data, status){
      $('.codeimg1').attr("src",mainurl+"/assets/images/capcha_code.png?time="+ Math.random());
  });
});

if($('.refresh_code').length > 0){
$.get(mainurl+'/contact/refresh_code', function(data, status){
  $('.codeimg1').attr("src",mainurl+"/assets/images/capcha_code.png?time="+ Math.random());
});
}

//**************************** GLOBAL CAPCHA ENDS****************************************

//**************************** AUTO COMPLETE SECTION ****************************************

$('#prod_name').on('keyup',function(){
var search = encodeURIComponent($(this).val());
 if(search == ""){
   $(".autocomplete").hide();
 }
 else{
   $(".autocomplete").show();
   $("#myInputautocomplete-list").load(mainurl+'/autosearch/product/'+search);
 }
});

$('#category_select').on('change',function(){
  var val = $(this).val();
  $('#category_id').val(val);
  $('#searchForm').attr('action', mainurl+'/category/'+$(this).val());
});

//**************************** AUTO COMPLETE SECTION ENDS ****************************************

//**************************** IMAGE UPLOADING SECTION ****************************************

      $(".upload").on( "change", function() {
        var imgpath = $(this).parent().parent().prev().find('img');
        readURL(this,imgpath);
      });

      function readURL(input,imgpath) {
          if (input.files && input.files[0]) {
              var reader = new FileReader();
              reader.onload = function (e) {
                imgpath.attr('src',e.target.result);
              }
              reader.readAsDataURL(input.files[0]);
          }
      }

//**************************** IMAGE UPLOADING SECTION ENDS ****************************************

//**************************** USER FORM SUBMIT SECTION ****************************************

  $(document).on('submit','#userform',function(e){
    e.preventDefault();
    $('.gocover').show();
    $('button.submit-btn').prop('disabled',true);
        $.ajax({
         method:"POST",
         url:$(this).prop('action'),
         data:new FormData(this),
         contentType: false,
         cache: false,
         processData: false,
         success:function(data)
         {
            if ((data.errors)) {

              for(var error in data.errors)
              {
                toastr.error(data.errors[error]);
              }
            }
            else
            {
              toastr.success(data);
            }
            $(window).scrollTop(-1);
            $('.gocover').hide();
            $('button.submit-btn').prop('disabled',false);
         }

        });

  });

//**************************** USER FORM SUBMIT SECTION ENDS ****************************************

//**************************** MESSAGE FORM SUBMIT SECTION ****************************************

$(document).on('submit','#messageform',function(e){
e.preventDefault();
var href = $(this).data('href');
$('.gocover').show();
$('button.mybtn1').prop('disabled',true);
    $.ajax({
     method:"POST",
     url:$(this).prop('action'),
     data:new FormData(this),
     contentType: false,
     cache: false,
     processData: false,
     success:function(data)
     {
        if ((data.errors)) {
          for(var error in data.errors)
          {
            toastr.error(data.errors[error]);
          }
        }
        else
        {
          toastr.success(data);
          $('#messageform textarea').val('');
          $('#messages').load(href);
        }
        $('.gocover').hide();
        $('button.mybtn1').prop('disabled',false);
     }
    });
});

//**************************** MESSAGE FORM SUBMIT SECTION ENDS ****************************************


//**************************** TRACK ORDER FORM SUBMIT SECTION ****************************************

$('#track-form').on('submit',function(e){
e.preventDefault();
var code = $('#track-code').val();
$('.submit-loader').removeClass('d-none');
$('#track-order').load(mainurl+'/order/track/'+code,function(response, status, xhr){
  if(status == "success")
  {
    $('.submit-loader').addClass('d-none');
  }
});
});

//**************************** TRACK ORDER FORM SUBMIT SECTION ENDS ****************************************


//**************************** CURRENCY AND LANGUAGE SECTION ****************************************

$(".selectors").on('change',function () {
var url = $(this).val();
window.location = url;
});

//**************************** CURRENCY AND LANGUAGE SECTION ENDS ****************************************


//**************************** DATATABLE SECTION ****************************************

$('#example').DataTable({
"paging":   true,
"ordering": false,
"info":     true
});

//**************************** DATATABLE SECTION ENDS ****************************************

});

//**************************** PRODUCT ADD MULTIPLE AREA ****************************************


$(function ($) {
"use strict";

$(document).ready(function () {

  function number_format (number, decimals, dec_point, thousands_sep) {
    // Strip all characters but numerical ones.
    number = (number + '').replace(/[^0-9+\-Ee.]/g, '');
    var n = !isFinite(+number) ? 0 : +number,
        prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
        sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
        dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
        s = '',
        toFixedFix = function (n, prec) {
            var k = Math.pow(10, prec);
            return '' + Math.round(n * k) / k;
        };
    // Fix for IE parseFloat(0.55).toFixed(0) = 0;
    s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
    if (s[0].length > 3) {
        s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
    }
    if ((s[1] || '').length < prec) {
        s[1] = s[1] || '';
        s[1] += new Array(prec - s[1].length + 1).join('0');
    }
    return s.join(dec);
}
  
  // Initialization
  var sizes = "";
  var size_qty = ($('.product-color .color-list li.active').length > 0) ? parseFloat($('.product-color .color-list li.active').find('.size_qty').val()) : '';
  var size_price = "";
  var size_key = "";
  var colors = "";
  var total = "";
  var stock = $("#stock").val();
  var keys = "";
  var values = "";
  var prices = "";

  // Product Details Product Size Active Js Code
  $(document).on('click', '.product-size .siz-list .box', function () {
    var parent = $(this).parent();
    sizes = $(this).find('input.size').val();
    size_key = $(this).find('input.size_key').val();
    $('.product-size .siz-list li').removeClass('active');
    parent.addClass('active');

    $('.qttotal').val('1');
    
   
    if ($(this).parent().parent().parent().attr('data-key') != 'false') {
  
      $('.product-color .color-list li').removeClass('show-colors');
      var size_color = $('.product-color .color-list li.'+parent.data('key'));
      size_color.addClass('show-colors').first().addClass('active');
      colors = size_color.find('span.box').data('color');
      size_qty = size_color.find('.size_qty').val();
      size_price = size_color.find('.size_price').val();
      size_key = size_color.find('.size_key').val();
      sizes = size_color.find('.size').val();

      total = getAmount()+parseFloat(size_price);
      total = total.toFixed(2);
      stock = size_qty;

      total = number_format(total, 2, gs.decimal_separator, gs.thousand_separator);


      var pos = $('#curr_pos').val();
      var sign = $('#curr_sign').val();
      if(pos == '0')
      {
        $('#sizeprice').html(sign+total);
      }
      else {
        $('#sizeprice').html(total+sign);
      }
    }
  

   

});

// Product Details Attribute Code 

  $(document).on('change','.product-attr',function(){

     var total = 0;
     total = getAmount()+getSizePrice();
     total = total.toFixed(2);
     
     total = number_format(total, 2, gs.decimal_separator, gs.thousand_separator);

     var pos = $('#curr_pos').val();
     var sign = $('#curr_sign').val();
     if(pos == '0')
     {
     $('#sizeprice').html(sign+total);
     }
     else {
     $('#sizeprice').html(total+sign);
     }
  });


    function getSizePrice()
    {
      var total = 0;
      if($('.product-color .color-list li.active').length > 0)
      {
        total = parseFloat($('.product-color .color-list li.active').find('.size_price').val());
      }
      return total;
    }


    function getAmount()
    {
      var total = 0;
      var value = parseFloat($('#product_price').val());
      var datas = $(".product-attr:checked").map(function() {
        return $(this).data('price');
      }).get();

      var data;
      for (data in datas) {
        total += parseFloat(datas[data]);
      }
      total += value;
      return total;
    }

  // Product Details Product Color Active Js Code
  $(document).on('click', '.product-color .color-list .box', function () {

       $('.qttotal').val('1');
        colors = $(this).data('color');
        var parent = $(this).parent();
        $('.product-color .color-list li').removeClass('active');
        parent.addClass('active');

    if ($(this).parent().parent().parent().attr('data-key') != 'false') {
      size_qty = $(this).find('.size_qty').val();
      size_price = $(this).find('.size_price').val();
      size_key = $(this).find('.size_key').val();
      sizes = $(this).find('.size').val();
 
      total = getAmount() + parseFloat(size_price);
      total = total.toFixed(2);
      stock = size_qty;

      total = number_format(total, 2, gs.decimal_separator, gs.thousand_separator);


      var pos = $('#curr_pos').val();
      var sign = $('#curr_sign').val();
      if (pos == '0') {
        $('#sizeprice').html(sign + total);
      }
      else {
        $('#sizeprice').html(total + sign);
      }

    }
    });

    // Product Minus Qty
    $(document).on('click', '.qtminus', function () {
      var el = $(this);
      var $tselector = el.parent().parent().parent().find('.qttotal');
      total = $($tselector).val();
      if (total > 1) {
          total--;
      }
      $($tselector).val(total);
  });

    // Product Add Qty
  $(document).on('click', '.qtplus', function () {
      var el = $(this);
      var $tselector = el.parent().parent().parent().find('.qttotal');
      total = $($tselector).val();

      if(stock != "")
      {
          var stk = parseInt(stock);
            if(total < stk)
            {
               total++;
               $($tselector).val(total);
            }
      }
      else {
      total++;
      }

      $($tselector).val(total);
  });

// Total Qty Input Field

  $('.qttotal').keypress(function(e){
    if (this.value.length == 0 && e.which == 48 ){
      return false;
   }
    if(e.which != 8 && e.which != 32){
      if(isNaN(String.fromCharCode(e.which))){
        e.preventDefault();
      }
    }
  });


  // ADD TO CART BUTTON

  $(document).on("click", "#addcrt" , function(){
      
    var qty = $('.qttotal').val() ? $('.qttotal').val() : 1;
    var pid = $("#product_id").val();
    var affilate_user = $("#affilate_user").val();

      if($('.product-attr').length > 0)
      {
        values = $(".product-attr:checked").map(function() {
            return $(this).val();
        }).get();
        
        keys = $(".product-attr:checked").map(function() {
            return $(this).data('key');
        }).get();
        
        prices = $(".product-attr:checked").map(function() {
            return $(this).data('price');
        }).get();
    }
    

    if (!isNaN(size_qty)) {
      if(size_qty == '0'){
        toastr.error(lang.cart_out);
        return false;
      }
    } else {
      size_qty = null;
    }
    
    
       $.ajax({
         type: "GET",
         url:mainurl+"/addnumcart",
         data:{id:pid,qty:qty,size:sizes,color:colors,size_qty:size_qty,size_price:size_price,size_key:size_key,keys:keys,values:values,prices:prices,affilate_user:affilate_user},
         success:function(data){

          if(data == 'digital') {
            toastr.error(lang.cart_already);
           }
          else if(data[0] == 0) {
            toastr.error(lang.cart_out);
            }
            else if(data[3]) {
              toastr.error(lang.minimum_qty_error+' '+data[4]);
            }
          else {
            $("#cart-count").html(data[0]);
            $("#total-cost").html(data[1]);
            $("#cart-items").load(mainurl+'/carts/view');
            toastr.success(lang.cart_success);
            }
            }
         });
   });

   $(document).on("click", "#qaddcrt" , function(){
    var qty = $('.qttotal').val();
    var pid = $("#product_id").val();
    var minimum_qty = $('#product_minimum_qty').val();
    var affilate_user = $("#affilate_user").val();
    if($('.product-attr').length > 0)
    {
      values = $(".product-attr:checked").map(function() {
        return $(this).val();
    }).get();
    
    keys = $(".product-attr:checked").map(function() {
        return $(this).data('key');
    }).get();
    
    prices = $(".product-attr:checked").map(function() {
        return $(this).data('price');
    }).get();
    
    }

    qty = parseInt(qty);
   

    if(size_qty == '0'){
      toastr.error(lang.cart_out);
      return false;
     }
     

    window.location = mainurl+"/addtonumcart?id="+pid+"&qty="+qty+"&size="+sizes+"&color="+colors.substring(1, colors.length)+"&size_qty="+size_qty+"&size_price="+size_price+"&size_key="+size_key+"&keys="+keys+"&values="+values+"&prices="+prices+"&affilate_user="+affilate_user;

   });



});

});

//**************************** PRODUCT ADD MULTIPLE AREA ENDS ****************************************