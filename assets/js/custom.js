jQuery(function ($) {

	'use strict';



  let isExpanded = false;

  const animate1 = document.querySelector(".animate1");

  const animate2 = document.querySelector(".animate2");

  const animate3 = document.querySelector(".animate3");



    // Animated hamburger icon

    // Keyframes

  const values1 = [

    "M 84,24 C 84,24 61.333333,24.001 50,24.001 38.666667,24.001 16,24 16,24",

    "M 82,24 C 82,24 66.957389,30.5 50,30.5 33.042611,30.5 18,24 18,24",

    "M 80,24 C 80,24 61.663104,37 50,37 38.336896,37 20,24 20,24",

    "M 78,24 C 78,24 55.685686,43.5 50,43.5 44.314314,43.5 22,24 22,24",

    "M 76,24 C 76,24 50.055365,50 50,50 49.94463,50 24,24 24,24"

  ];

  const values2 = [

    "M 84,50 H 50 16",

    "M 75.5,50 H 50 24.5",

    "M 67,50 H 50 33",

    "M 58.5,50 H 50 41.5",

    "M 50.001,50 H 50 49.99"

  ];

  const values3 = [

    "M 84,76 C 84,76 61.333333,76.001 50,76.001 38.666667,76.001 16,76 16,76",

    "M 82,76 C 82,76 66.957389,69.5 50,69.5 33.042611,69.5 18,76 18,76",

    "M 80,76 C 80,76 61.663104,63 50,63 38.336896,63 20,76 20,76",

    "M 78,76 C 78,76 55.685686,56.5 50,56.5 44.314314,56.5 22,76 22,76",

    "M 76,76 C 76,76 50.055365,50 50,50 49.944635,50 24,76 24,76"

  ];



  function initPath(clazz, descriptor) {

    const path = document.querySelector(clazz);

    path.setAttribute("d", descriptor);

  }



  initPath(".path1", values1[0]);

  initPath(".path2", values2[0]);

  initPath(".path3", values3[0]);



  function toggleHamburgerAnimation(values, animate) {

    animate.setAttribute(

      "values",

      !isExpanded ? values.join("; ") : values.slice().reverse().join("; ")

    );

    animate.beginElement();

  }


  const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
  const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))


$('.js-hamburger').on('click', () => {

  toggleHamburgerAnimation(values1, animate1);

  toggleHamburgerAnimation(values2, animate2);

  toggleHamburgerAnimation(values3, animate3);

  isExpanded = !isExpanded;

});

    $('.navbar-nav .nav-item .nav-link').on('click', function(e){

        var anchor = $(this);

        $('html, body').stop().animate({

            scrollTop: $(anchor.attr('href')).offset().top - 50

        }, 50);

        e.preventDefault();

    });

    $(document).on('click','.navbar-collapse.show',function(e) {

        if( $(e.target).is('a') && $(e.target).attr('class') != 'dropdown-toggle' ) {

            $(this).collapse('hide');

        }

	});

	$('.one-help-area .help-item .advisor-link a').on('click', function(e){

        var anchor = $(this);

        $('html, body').stop().animate({

            scrollTop: $(anchor.attr('href')).offset().top - 50

        }, 1500);

        e.preventDefault();

    });



	// Sorting Portfolio

	try {

        var mixer = mixitup('.shorting', {

            controls: {

                toggleDefault: 'none'

            }

        });

    } catch (err) {}



	// Banner Slider

	$('.banner-slider').owlCarousel({

		items: 1,

		loop: true,

		margin: 15,

		singleItem: true,

		nav: true,

		dots: false,

		smartSpeed: 1000,

		autoplay: true,

		autoplayTimeout: 4000,

		autoplayHoverPause: true,

		navText: [

            "<i class='bx bx-left-arrow-alt'></i>",

            "<i class='bx bx-right-arrow-alt'></i>"

        ],

    });



	// Among Slider

	$('.among-slider').owlCarousel({

		items: 3,

		loop: true,

		margin: 0,

		nav: false,

		dots: true,

		smartSpeed: 1000,

		autoplay: true,

		autoplayTimeout: 4000,

		autoplayHoverPause: true,

		center: true,

		responsive:{

			0:{

				items:1,

			},

			600:{

				items:2,

			},

			1000:{

				items:3,

			}

		}

	});



	// Popup Youtube

	$('.popup-youtube').magnificPopup({

		disableOn: 320,

		type: 'iframe',

		mainClass: 'mfp-fade',

		removalDelay: 160,

		preloader: false,

		fixedContentPos: false

	});



	// Nice Select

	$('select').niceSelect();



	// Accordion



	$('.accordion a').click(function(j) {

		var dropDown = $(this).closest('li').find('p');

		$(this).closest('.accordion').find('p').not(dropDown).slideUp();

		if ($(this).hasClass('active')) {

			$(this).removeClass('active');

		} else {

			$(this).closest('.accordion').find('a.active').removeClass('active');

			$(this).addClass('active');

		}

		dropDown.stop(false, true).slideToggle();

		j.preventDefault();

	});



	// Banner Slider Two

	$('.two-banner-slider').owlCarousel({

		items: 1,

		loop: true,

		margin: 15,

		singleItem: true,

		nav: true,

		dots: false,

		smartSpeed: 1000,

		autoplay: true,

		autoplayTimeout: 4000,

		autoplayHoverPause: true,

		navText: [

            "<i class='bx bx-left-arrow-alt'></i>",

            "<i class='bx bx-right-arrow-alt'></i>"

        ],

	});



	// Review Slider Two

	// $('.three-review-slider').owlCarousel({

	// 	items: 1,

	// 	loop: true,

	// 	margin: 15,

	// 	singleItem: true,

	// 	nav: false,

	// 	dots: true,

	// 	smartSpeed: 1000,

	// 	autoplay: true,

	// 	autoplayTimeout: 4000,

	// 	autoplayHoverPause: true,

	// });



	// Step Slider

	$('.four-step-slider').owlCarousel({

		center: true,

		items: 4,

		loop: true,

		margin: 50,

		nav: false,

		dots: false,

		smartSpeed: 1000,

		autoplay: true,

		autoplayTimeout: 3000,

		autoplayHoverPause: true,

		responsive:{

			0:{

				items:1,

			},

			600:{

				items:2,

			},

			1000:{

				items:4,

			}

		}

	});



	// Step Slider Two

	$('.four-step-slider-two').owlCarousel({

		center: true,

		items: 4,

		loop: true,

		margin: 50,

		nav: false,

		dots: true,

		smartSpeed: 1000,

		autoplay: true,

		autoplayTimeout: 3000,

		autoplayHoverPause: true,

		responsive:{

			0:{

				items:1,

			},

			600:{

				items:2,

			},

			1000:{

				items:4,

			}

		}

	});



	// Loan Slider

	$('.five-loan-slider').owlCarousel({

		items: 4,

		loop: true,

		margin: 15,

		nav: false,

		dots: true,

		smartSpeed: 1000,

		autoplay: true,

		autoplayTimeout: 4000,

		autoplayHoverPause: true,

		responsive:{

			0:{

				items:1,

			},

			600:{

				items:2,

			},

			1000:{

				items:4,

			}

		}

	});



	// Lover Slider

	$('.six-lover-slider').owlCarousel({

		center: true,

		items: 4,

		loop: true,

		margin: 25,

		nav: false,

		dots: true,

		smartSpeed: 1000,

		autoplay: true,

		autoplayTimeout: 4000,

		autoplayHoverPause: true,

		responsive:{

			0:{

				items:1,

			},

			600:{

				items:2,

			},

			1000:{

				items:4,

			}

		}

	});



	// Subscribe Form

	$(".newsletter-form").validator().on("submit", function (event) {

		if (event.isDefaultPrevented()) {

			// Hande the invalid form...

			formErrorSub();

			submitMSGSub(false, "Please enter your email correctly.");

		} else {

			// Everything looks good!

			event.preventDefault();

		}

	});

	function callbackFunction (resp) {

		if (resp.result === "success") {

			formSuccessSub();

		}

		else {

			formErrorSub();

		}

	}

	function formSuccessSub(){

		$(".newsletter-form")[0].reset();

		submitMSGSub(true, "Thank you for subscribing!");

		setTimeout(function() {

			$("#validator-newsletter").addClass('hide');

		}, 4000)

	}

	function formErrorSub(){

		$(".newsletter-form").addClass("animated shake");

		setTimeout(function() {

			$(".newsletter-form").removeClass("animated shake");

		}, 1000)

	}

	function submitMSGSub(valid, msg){

		if(valid){

			var msgClasses = "validation-success";

		} else {

			var msgClasses = "validation-danger";

		}

		$("#validator-newsletter").removeClass().addClass(msgClasses).text(msg);

	}



	// AJAX Mail Chimp

	$(".newsletter-form").ajaxChimp({

		url: "https://envytheme.us20.list-manage.com/subscribe/post?u=60e1ffe2e8a68ce1204cd39a5&amp;id=42d6d188d9", // Your url MailChimp

		callback: callbackFunction

	});



	// Preloader

	// jQuery(window).on('load',function(){

	// 	jQuery(".loader").fadeOut(500);

	// });



	// Back to Top

	$('body').append('<div id="toTop" class="back-to-top-btn"><i class="bx bxs-up-arrow-alt"></i></div>');

	$(window).scroll(function () {

		if ($(this).scrollTop() != 0) {

			$('#toTop').fadeIn();

		} else {

			$('#toTop').fadeOut();

		}

	});

	$('#toTop').on('click', function(){

		$("html, body").animate({ scrollTop: 0 }, 900);

		return false;

	});



	/*

	New Demo JSS

	======================================================*/



	// Header Sticky

	// $(window).on('scroll',function() {

	// 	if ($(this).scrollTop() > 120){

	// 		$('.navbar').addClass("is-sticky");

	// 	}

	// 	else{

	// 		$('.navbar').removeClass("is-sticky");

	// 	}

	// });



	// Why Choose US Slider

	$('.why-choose-us-slider').owlCarousel({

		loop: true,

		margin: 25,

		nav: false,

		dots: true,



		responsive:{

			0:{

				items: 1,

			},

			576:{

				items: 1,

			},

			768:{

				items: 2,

			},

			1024:{

				items: 3,

			},

			1200:{

				items: 3,

			}

		}

	});



	// Staff Slider

	$('.staff-slider').owlCarousel({

		loop: true,

		margin: 25,

		nav: false,

		dots: true,



		responsive:{

			0:{

				items: 1,

			},

			576:{

				items: 2,

			},

			768:{

				items: 2,

			},

			1024:{

				items: 3,

			},

			1200:{

				items: 4,

			}

		}

	});



	// Testimonials Style Slider

	$('.testimonials-style-slider').owlCarousel({

		loop: true,

		margin: 25,

		nav: false,

		dots: true,

		items: 1,

	});



	// Offer Style Slider

	$('.offer-style-slider').owlCarousel({

		loop: true,

		margin: 25,

		nav: false,

		dots: true,



		responsive:{

			0:{

				items: 1,

			},

			576:{

				items: 1,

			},

			768:{

				items: 2,

			},

			1024:{

				items: 3,

			},

			1200:{

				items: 3,

			}

		}

	});



	// Beyond Slider JS

	$(document).ready(function() {

		var bigimage = $("#beyond-style-item");

		var thumbs = $("#thumbs");

		//var totalslides = 10;

		var syncedSecondary = true;



		bigimage

		  .owlCarousel({

		  items: 1,

		  slideSpeed: 2000,

		  nav: true,

		  autoplay: true,

		  dots: false,

		  nav: false,

		  loop: true,

		  responsiveRefreshRate: 200,

		  navText: [

				"<i class='bx bx-left-arrow-alt'></i>",

				"<i class='bx bx-right-arrow-alt'></i>"

			],

		})

		.on("changed.owl.carousel", syncPosition);



		thumbs

		  .on("initialized.owl.carousel", function() {

		  thumbs

			.find(".owl-item")

			.eq(0)

			.addClass("current");

		})

		.owlCarousel({

			loop: true,

			dots: false,

			nav: true,

			autoplay: false,

			active: true,

			navText: [

				"<i class='bx bx-left-arrow-alt'></i>",

				"<i class='bx bx-right-arrow-alt'></i>"

			],

			smartSpeed: 200,

			slideSpeed: 500,

			slideBy: 8,

			responsiveRefreshRate: 100,

			responsive: {

				0: {

					items: 2

				},

				1024: {

					items: 4

				},

				1200: {

					items: 4

				}

			}

		})

		.on("changed.owl.carousel", syncPosition2);



		function syncPosition(el) {

		//if loop is set to false, then you have to uncomment the next line

		//var current = el.item.index;



		//to disable loop, comment this block

		  var count = el.item.count - 1;

		  var current = Math.round(el.item.index - el.item.count / 2 - 0.5);



		  if (current < 0) {

			current = count;

		  }

		  if (current > count) {

			current = 0;

		  }

		  //to this

		  thumbs

			.find(".owl-item")

			.removeClass("current")

			.eq(current)

			.addClass("current");

		  var onscreen = thumbs.find(".owl-item.active").length - 1;

		  var start = thumbs

		  .find(".owl-item.active")

		  .first()

		  .index();

		  var end = thumbs

		  .find(".owl-item.active")

		  .last()

		  .index();



		  if (current > end) {

			thumbs.data("owl.carousel").to(current, 100, true);

		  }

		  if (current < start) {

			thumbs.data("owl.carousel").to(current - onscreen, 100, true);

		  }

		}



		function syncPosition2(el) {

		  if (syncedSecondary) {

			var number = el.item.index;

			bigimage.data("owl.carousel").to(number, 100, true);

		  }

		}



		thumbs.on("click", ".owl-item", function(e) {

		  e.preventDefault();

		  var number = $(this).index();

		  bigimage.data("owl.carousel").to(number, 300, true);

		});

	});



	// Find Own Loan Slider  JS

	$('.find-own-loan-slider').owlCarousel({

		loop: true,

		margin: 25,

		nav: true,

		dots: false,

		navText: [

			"<i class='bx bx-left-arrow-alt'></i>",

			"<i class='bx bx-right-arrow-alt'></i>"

		],

		responsive:{

			0:{

				items: 1,

			},

			576:{

				items: 2,

			},

			768:{

				items: 2,

			},

			1024:{

				items: 3,

			},

			1200:{

				items: 4,

			}

		}

	});



	// Blog Style Slider JS

	$('.blog-style-slider').owlCarousel({

		loop: true,

		margin: 25,

		nav: false,

		dots: true,



		responsive:{

			0:{

				items: 1,

			},

			576:{

				items: 2,

			},

			768:{

				items: 2,

			},

			1024:{

				items: 3,

			},

			1200:{

				items: 3,

			}

		}

	});



	$('.dropdown-item').click(function(e){

        e.preventDefault();

        var selectedText = $(this).text();

        $(this).closest('.dropdown').find('.dropdown-toggle').text(selectedText);

    });



	// $('form').on('submit', function(e){

    //     let isValid = true;



    //     $(this).find('input[placeholder*="*"]').each(function() {

    //         if ($(this).val().trim() === '') {

    //             isValid = false;

    //         }

    //     });



    //     $(this).find('.dropdown-toggle').each(function() {

    //         if ($(this).text().trim() === 'Type of cover required' || $(this).text().trim() === 'State of project') {

    //             isValid = false;

    //         }

    //     });



    //     if (!isValid) {

    //         e.preventDefault();

    //         $('#alertModal').modal('show');

    //     } else {



    //         $(this).find('.dropdown-toggle').each(function() {

    //             var selectedText = $(this).text().trim();

    //             $(this).siblings('input[type="hidden"]').val(selectedText);

    //         });

    //     }

    // });





}(jQuery));





// function to set a given theme/color-scheme

function setTheme(themeName) {

	localStorage.setItem('pento_theme', themeName);

	document.documentElement.className = themeName;

}

// function to toggle between light and dark theme

function toggleTheme() {

	if (localStorage.getItem('pento_theme') === 'theme-dark') {

		setTheme('theme-light');

	} else {

		setTheme('theme-dark');

	}

}

// Immediately invoked function to set the theme on initial load

(function () {

    var slider = document.getElementById('slider');

    if (slider) {

        if (localStorage.getItem('pento_theme') === 'theme-dark') {

            setTheme('theme-dark');

            slider.checked = false;

        } else {

            setTheme('theme-light');

            slider.checked = true;

        }

    }

})();
