 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script src="https://npmcdn.com/isotope-layout@3/dist/isotope.pkgd.js"></script>
<style>
	* { box-sizing: border-box; }

	body {
	  font-family: sans-serif;
	}
	
	/* ---- button ---- */
	
	.button {
	  display: inline-block;
	  padding: 0.5em 1.0em;
	  background: #EEE;
	  border: none;
	  border-radius: 7px;
	  background-image: linear-gradient( to bottom, hsla(0, 0%, 0%, 0), hsla(0, 0%, 0%, 0.2) );
	  color: #222;
	  font-family: sans-serif;
	  font-size: 16px;
	  text-shadow: 0 1px white;
	  cursor: pointer;
	}
	
	.button:hover {
	  background-color: #8CF;
	  text-shadow: 0 1px hsla(0, 0%, 100%, 0.5);
	  color: #222;
	}
	
	.button:active,
	.button.is-checked {
	  background-color: #28F;
	}
	
	.button.is-checked {
	  color: white;
	  text-shadow: 0 -1px hsla(0, 0%, 0%, 0.8);
	}
	
	.button:active {
	  box-shadow: inset 0 1px 10px hsla(0, 0%, 0%, 0.8);
	}
	
	/* ---- button-group ---- */
	
	.button-group {
	  margin-bottom: 20px;
	}
	
	.button-group:after {
	  content: '';
	  display: block;
	  clear: both;
	}
	
	.button-group .button {
	  float: left;
	  border-radius: 0;
	  margin-left: 0;
	  margin-right: 1px;
	}
	
	.button-group .button:first-child { border-radius: 0.5em 0 0 0.5em; }
	.button-group .button:last-child { border-radius: 0 0.5em 0.5em 0; }
	
	/* ---- isotope ---- */
	
	.grid {
	  border: 1px solid #333;
	}
	
	/* clear fix */
	.grid:after {
	  content: '';
	  display: block;
	  clear: both;
	}
	
	/* ---- .element-item ---- */
	
	.element-item {
	  position: relative;
	  float: left;
	  width: 100px;
	  height: 100px;
	  margin: 5px;
	  padding: 10px;
	  background: #888;
	  color: #262524;
	}
	
	.element-item > * {
	  margin: 0;
	  padding: 0;
	}
	
	.element-item .name {
	  position: absolute;
	
	  left: 10px;
	  top: 60px;
	  text-transform: none;
	  letter-spacing: 0;
	  font-size: 12px;
	  font-weight: normal;
	}
	
	.element-item .symbol {
	  position: absolute;
	  left: 10px;
	  top: 0px;
	  font-size: 42px;
	  font-weight: bold;
	  color: white;
	}
	
	.element-item .number {
	  position: absolute;
	  right: 8px;
	  top: 5px;
	}
	
	.element-item .weight {
	  position: absolute;
	  left: 10px;
	  top: 76px;
	  font-size: 12px;
	}
	
	.element-item.alkali          { background: #F00; background: hsl(   0, 100%, 50%); }
	.element-item.alkaline-earth  { background: #F80; background: hsl(  36, 100%, 50%); }
	.element-item.lanthanoid      { background: #FF0; background: hsl(  72, 100%, 50%); }
	.element-item.actinoid        { background: #0F0; background: hsl( 108, 100%, 50%); }
	.element-item.transition      { background: #0F8; background: hsl( 144, 100%, 50%); }
	.element-item.post-transition { background: #0FF; background: hsl( 180, 100%, 50%); }
	.element-item.metalloid       { background: #08F; background: hsl( 216, 100%, 50%); }
	.element-item.diatomic        { background: #00F; background: hsl( 252, 100%, 50%); }
	.element-item.halogen         { background: #F0F; background: hsl( 288, 100%, 50%); }
	.element-item.noble-gas       { background: #F08; background: hsl( 324, 100%, 50%); }
</style>

</head>
<body>
<h1>Isotope - filtering &amp; sorting</h1>
<h2>alcole</h2>
<div id="alcole" class="button-group">  
  <button class="button is-checked" data-filter="*">All</button>
  <button class="button" data-filter=".brandy">Brandy</button>
  <button class="button" data-filter=".whisky">Whisky</button>
  <button class="button" data-filter=".vodka">Vodka</button>
  <button class="button" data-filter=".rum">Rum</button>
  <button class="button" data-filter=".dryjin">Dry Jin</button>
  <button class="button" data-filter=".Tequila">Tequila</button>
  <button class="button" data-filter=".drysherry">Dry Sherry</button>
  <button class="button" data-filter=".cognac">Cognac</button>
</div>
<h2>liqueur</h2>
<div id="liqueur" class="button-group">  
  <button class="button is-checked" data-filter="*">All</button>
  <button class="button" data-filter=".wine">wine</button>
  <button class="button" data-filter=".bitters">Bitters</button>
  <button class="button" data-filter=".beer">beer</button>
  <button class="button" data-filter=".liqueur">liqueur</button>
  <button class="button" data-filter=".triplesec">triplesec</button>
</div>
<h2>material</h2>
<div id="material" class="button-group">  
  <button class="button is-checked" data-filter="*">All</button>
  <button class="button" data-filter=".lemon">lemon</button>
  <button class="button" data-filter=".cherry">cherry</button>
  <button class="button" data-filter=".pineapple">pineapple</button>
  <button class="button" data-filter=".lime">lime</button>
  <button class="button" data-filter=".orange">orange</button>
</div>
<div class="grid">
  <div class="element-item brandy wine " data-category="brandy">
    <h3 class="name">Cherry Brandy</h3>
    <p class="symbol">CB</p>
    <p class="number">80</p>
    <p class="weight">200.59</p>
  </div>
  <div class="element-item brandy " data-category="brandy">
    <h3 class="name">Afrikot Brandy</h3>
    <p class="symbol">AB</p>
    <p class="number">52</p>
    <p class="weight">127.6</p>
  </div>
  <div class="element-item wine lemon " data-category="lemon">
    <h3 class="name">Lemon</h3>
    <p class="symbol">LM</p>
    <p class="number">83</p>
    <p class="weight">208.980</p>
  </div>
  <div class="element-item post-transition metal " data-category="post-transition">
    <h3 class="name">Lead</h3>
    <p class="symbol">Pb</p>
    <p class="number">82</p>
    <p class="weight">207.2</p>
  </div>
  <div class="element-item transition metal " data-category="transition">
    <h3 class="name">Gold</h3>
    <p class="symbol">Au</p>
    <p class="number">79</p>
    <p class="weight">196.967</p>
  </div>
  <div class="element-item alkali metal " data-category="alkali">
    <h3 class="name">Potassium</h3>
    <p class="symbol">K</p>
    <p class="number">19</p>
    <p class="weight">39.0983</p>
  </div>
  <div class="element-item alkali metal " data-category="alkali">
    <h3 class="name">Sodium</h3>
    <p class="symbol">Na</p>
    <p class="number">11</p>
    <p class="weight">22.99</p>
  </div>
  <div class="element-item transition metal " data-category="transition">
    <h3 class="name">Cadmium</h3>
    <p class="symbol">Cd</p>
    <p class="number">48</p>
    <p class="weight">112.411</p>
  </div>
  <script>
		//external js: isotope.pkgd.js		
		//init Isotope
		var $grid = $('.grid').isotope({
		itemSelector: '.element-item',
		layoutMode: 'fitRows',
		getSortData: {
		 name: '.name',
		 symbol: '.symbol',
		 number: '.number parseInt',
		 category: '[data-category]',
		 weight: function( itemElem ) {
		   var weight = $( itemElem ).find('.weight').text();
		   return parseFloat( weight.replace( /[\(\)]/g, '') );
		 }
		}
		});		
		//filter functions
		var filterFns = {
		// show if number is greater than 50
		numberGreaterThan50: function() {
		 var number = $(this).find('.number').text();
		 return parseInt( number, 10 ) > 50;
		},
		// show if name ends with -ium
		ium: function() {
		 var name = $(this).find('.name').text();
		 return name.match( /ium$/ );
		}
		};
		//bind filter button click
		$('#alcole').on( 'click', 'button', function() {
			var filterValue = $( this ).attr('data-filter');
			// use filterFn if matches value
			filterValue = filterFns[ filterValue ] || filterValue;
			$grid.isotope({ filter: filterValue });
		});
		$('#liqueur').on( 'click', 'button', function() {
			var filterValue = $( this ).attr('data-filter');
			// use filterFn if matches value
			filterValue = filterFns[ filterValue ] || filterValue;
			$grid.isotope({ filter: filterValue });
		});
		$('#material').on( 'click', 'button', function() {
			var filterValue = $( this ).attr('data-filter');
			// use filterFn if matches value
			filterValue = filterFns[ filterValue ] || filterValue;
			$grid.isotope({ filter: filterValue });
			
		});
		//change is-checked class on buttons
			$('.button-group').each( function( i, buttonGroup ) {
				var $buttonGroup = $( buttonGroup );
				$buttonGroup.on( 'click', 'button', function() {
				 $buttonGroup.find('.is-checked').removeClass('is-checked');
				 $( this ).addClass('is-checked');
			});
		});

</script>
</body>
</html>