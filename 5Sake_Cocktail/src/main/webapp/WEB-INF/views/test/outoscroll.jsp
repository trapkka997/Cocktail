<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	body {
	    margin: 0;
	    background-color: #F0F0F0;
	    font-family: 'Liberation Sans', Arial, sans-serif;
	}
	h1 {
	    text-align: center;
	}	
	#images {
	    margin: 0 auto;
	    padding: 0;
	    width: 640px;
	    list-style-type: none;
	}
	/*figure부분 css시작*/
	#columns{
        column-width:350px;
        column-gap: 15px;
      }
      #columns figure{
        display: inline-block;
        border:1px solid rgba(0,0,0,0.2);
        margin:0;
        margin-bottom: 15px;
        padding:10px;
        box-shadow: 2px 2px 5px rgba(0,0,0,0.5);;
      }
      #columns figure img{
        width:100%;
      }
      #columns figure figcaption{
        border-top:1px solid rgba(0,0,0,0.2);
        padding:10px;
        margin-top:11px;
      }
</style>
<script src="https://code.jquery.com/jquery-2.1.3.js"></script>
<script>
/**
 * Endless Scroll plugin for jQuery
 *
 * v1.4.8
 *
 * Copyright (c) 2008 Fred Wu
 *
 * Dual licensed under the MIT and GPL licenses:
 *   https://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 */

/**
 * Usage:
 *
 * // using default options
 * $(document).endlessScroll();
 *
 * // using some custom options
 * $(document).endlessScroll({
 *   fireOnce: false,
 *   fireDelay: false,
 *   loader: "<div class=\"loading\"><div>",
 *   callback: function(){
 *     alert("test");
 *   }
 * });
 *
 * Configuration options:
 *
 * bottomPixels  integer          the number of pixels from the bottom of the page that triggers the event
 * fireOnce      boolean          only fire once until the execution of the current event is completed
 * fireDelay     integer          delay the subsequent firing, in milliseconds, 0 or false to disable delay
 * loader        string           the HTML to be displayed during loading
 * data          string|function  plain HTML data, can be either a string or a function that returns a string,
 *                                when passed as a function it accepts one argument: fire sequence (the number
 *                                of times the event triggered during the current page session)
 * insertAfter   string           jQuery selector syntax: where to put the loader as well as the plain HTML data
 * callback      function         callback function, accepts one argument: fire sequence (the number of times
 *                                the event triggered during the current page session)
 * resetCounter  function         resets the fire sequence counter if the function returns true, this function
 *                                could also perform hook actions since it is applied at the start of the event
 * ceaseFire     function         stops the event (no more endless scrolling) if the function returns true
 *
 * Usage tips:
 *
 * The plugin is more useful when used with the callback function, which can then make AJAX calls to retrieve content.
 * The fire sequence argument (for the callback function) is useful for 'pagination'-like features.
 */

(function($){
  $.fn.endlessScroll = function(options) {
    var defaults = {
      bottomPixels: 50,
      fireOnce: true,
      fireDelay: 150,
      loader: "<br />Loading...<br />",
      data: "",
      insertAfter: "div:last",
      resetCounter: function() { return false; },
      callback: function() { return true; },
      ceaseFire: function() { return false; }
    };

    var options = $.extend({}, defaults, options);

    var firing       = true;
    var fired        = false;
    var fireSequence = 0;

    if (options.ceaseFire.apply(this) === true) {
      firing = false;
    }

    if (firing === true) {
      $(this).scroll(function() {
        if (options.ceaseFire.apply(this) === true) {
          firing = false;
          return; // Scroll will still get called, but nothing will happen
        }

        if (this == document || this == window) {
          var is_scrollable = $(document).height() - $(window).height() <= $(window).scrollTop() + options.bottomPixels;
        } else {
          // calculates the actual height of the scrolling container
          var inner_wrap = $(".endless_scroll_inner_wrap", this);
          if (inner_wrap.length == 0) {
            inner_wrap = $(this).wrapInner("<div class=\"endless_scroll_inner_wrap\" />").find(".endless_scroll_inner_wrap");
          }
          var is_scrollable = inner_wrap.length > 0 &&
            (inner_wrap.height() - $(this).height() <= $(this).scrollTop() + options.bottomPixels);
        }

        if (is_scrollable && (options.fireOnce == false || (options.fireOnce == true && fired != true))) {
          if (options.resetCounter.apply(this) === true) fireSequence = 0;

          fired = true;
          fireSequence++;

          $(options.insertAfter).after("<div id=\"endless_scroll_loader\">" + options.loader + "</div>");

          data = typeof options.data == 'function' ? options.data.apply(this, [fireSequence]) : options.data;

          if (data !== false) {
            $(options.insertAfter).after("<div id=\"endless_scroll_data\">" + data + "</div>");
            $("div#endless_scroll_data").hide().fadeIn();
            $("div#endless_scroll_data").removeAttr("id");

            options.callback.apply(this, [fireSequence]);

            if (options.fireDelay !== false || options.fireDelay !== 0) {
              $("body").after("<div id=\"endless_scroll_marker\"></div>");
              // slight delay for preventing event firing twice
              $("div#endless_scroll_marker").fadeTo(options.fireDelay, 1, function() {
                $(this).remove();
                fired = false;
              });
            }
            else {
              fired = false;
            }
          }

          $("div#endless_scroll_loader").remove();
        }
      });
    }
  };

})(jQuery);


// Script
/* $(document).ready(function() {
    $(document).endlessScroll({
        inflowPixels: 100,
        callback: function() {
		   var $img = $('#images li:nth-last-child(3)').clone();
		   $('#images').append($img);
        }
    });
});
 */
/*  $(document).ready(function() {
	    $(document).endlessScroll({
	        inflowPixels: 1,
	        callback: function() {
			   var $img = $('#columns figure:nth-last-child(9)').clone();
			   $('#columns').append($img);
	        }
	    });
	}); */
	 $(document).ready(function() {
		    $(document).endlessScroll({
		        inflowPixels: 300,
		        callback: function() {
				   var $img = $('#columns .bu:nth-last-child(3)').clone();
				   $('#columns').append($img);
		        }
		    });
		});
</script>
</head>
<body>
<p data-height="265" data-theme-id="0" data-slug-hash="mGRRWm" data-default-tab="html,result" data-user="umajesty" data-pen-title="Infinite Scroll - Masonry" class="codepen">See the Pen <a href="https://codepen.io/umajesty/pen/mGRRWm/">Infinite Scroll - Masonry</a> by UMajesty (<a href="https://codepen.io/umajesty">@umajesty</a>) on <a href="https://codepen.io">CodePen</a>.</p>
<script async src="https://static.codepen.io/assets/embed/ei.js"></script>
	<h1>Infinite Scrolling, Demo 3</h1>
		<div id="columns">
		<div class="bu">
		  <figure>
		  <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/cinderella.jpg">
		    <figcaption>Cinderella wearing European fashion of the mid-1860’s</figcaption>
		    </figure>
		    
		    <figure>
		    <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/rapunzel.jpg">
		    <figcaption>Rapunzel, clothed in 1820’s period fashion</figcaption>
		    </figure>
		    
		  <figure>
		    <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/belle.jpg">
		    <figcaption>Belle, based on 1770’s French court fashion</figcaption>
		    </figure>
		</div>
		  <div class="bu">
		    <figure>
		    <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/mulan_2.jpg">
		    <figcaption>Mulan, based on the Ming Dynasty period</figcaption>
		    </figure>
		    
		   <figure>
		     <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/sleeping-beauty.jpg">
		    <figcaption>Sleeping Beauty, based on European fashions in 1485</figcaption>
		    </figure>
		    
		   <figure>
		     <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/pocahontas_2.jpg">
		    <figcaption>Pocahontas based on 17th century Powhatan costume</figcaption>
		    </figure>
		</div>
		<div class="bu">  
		    <figure>
		    <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/snow-white.jpg">
		    <figcaption>Snow White, based on 16th century German fashion</figcaption>
		    </figure>   
		  
		   <figure>
		    <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/ariel.jpg">
		    <figcaption>Ariel wearing an evening gown of the 1890’s</figcaption>
		    </figure>
		  
		    <figure>
		    <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/tiana.jpg">
		    <figcaption>Tiana wearing the <i>robe de style</i> of the 1920’s</figcaption>
		    </figure>   
		    </div>	 
	    </div>
        <!-- <ul id="images">
            <li>
                <a href="https://www.pexels.com/photo/mist-misty-fog-foggy-7919/">
                    <img src="https://pexels.imgix.net/photos/7919/pexels-photo.jpg?fit=crop&w=640&h=480" alt="" />
                </a>
            </li>
            <li>
                <a href="https://www.pexels.com/photo/landscape-sun-trees-path-21008/">
                    <img src="https://pexels.imgix.net/photos/21008/pexels-photo.jpg?fit=crop&w=640&h=480" alt="" />
                </a>
            </li>
            <li>
                <a href="https://www.pexels.com/photo/cold-snow-landscape-nature-1127/">
                    <img src="https://pexels.imgix.net/photos/1127/cold-snow-landscape-nature.jpg?fit=crop&w=640&h=480" alt="" />
                </a>
            </li>
        </ul>-->
        <!-- <div id="columns">
		  <figure>
		  <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/cinderella.jpg">
		    <figcaption>Cinderella wearing European fashion of the mid-1860’s</figcaption>
		    </figure>
		    
		    <figure>
		    <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/rapunzel.jpg">
		    <figcaption>Rapunzel, clothed in 1820’s period fashion</figcaption>
		    </figure>
		    
		  <figure>
		    <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/belle.jpg">
		    <figcaption>Belle, based on 1770’s French court fashion</figcaption>
		    </figure>
		  
		    <figure>
		    <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/mulan_2.jpg">
		    <figcaption>Mulan, based on the Ming Dynasty period</figcaption>
		    </figure>
		    
		   <figure>
		     <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/sleeping-beauty.jpg">
		    <figcaption>Sleeping Beauty, based on European fashions in 1485</figcaption>
		    </figure>
		    
		   <figure>
		     <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/pocahontas_2.jpg">
		    <figcaption>Pocahontas based on 17th century Powhatan costume</figcaption>
		    </figure>
		  
		    <figure>
		    <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/snow-white.jpg">
		    <figcaption>Snow White, based on 16th century German fashion</figcaption>
		    </figure>   
		  
		   <figure>
		    <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/ariel.jpg">
		    <figcaption>Ariel wearing an evening gown of the 1890’s</figcaption>
		    </figure>
		  
		    <figure>
		    <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/tiana.jpg">
		    <figcaption>Tiana wearing the <i>robe de style</i> of the 1920’s</figcaption>
		    </figure>   	 
	    </div>
-->
</body>
</html>

















