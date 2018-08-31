<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>jQuery Checkbox Filter</title>
  <link href='https://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="./resources/assets/tag/css/style.css">

  
</head>

<body>

  <div class="container">
  <section class="col-xs-12 box filter">
    <p class="well well-sm text-center">Please use our filters to limit the resources</p>
    <img class="img-responsive center-block arrow" src="http://psdwizard.net/preview/fusewave/01/assets/images/arrow.png" alt="Arrow">
    <div class="filter-block">
      <form class="form-horizontal" action="">
        <div class="col-sm-6 form-group tags categories">
          <h1>Categories</h1>
          <div class="checkbox"><label><input type="checkbox" rel="category-one"/> Category One</label></div>
          <div class="checkbox"><label><input type="checkbox" rel="category-two"/> Category Two</label></div>
          <div class="checkbox"><label><input type="checkbox" rel="category-three"/> Category Three</label></div>
          <div class="checkbox"><label><input type="checkbox" rel="category-four"/> Category Four</label></div>
          <div class="checkbox"><label><input type="checkbox" rel="category-five"/> Category Five</label></div>
        </div>
        <div class="col-xs-12 col-sm-6 form-group tags topics">
          <h1>Topics</h1>
          <div class="checkbox"><label><input type="checkbox" rel="topic-one" disabled/>Topic One</label></div>
          <div class="checkbox"><label><input type="checkbox" rel="topic-two" disabled/>Topic Two</label></div>
          <div class="checkbox"><label><input type="checkbox" rel="topic-three" disabled/>Topic Three</label></div>
          <div class="checkbox"><label><input type="checkbox" rel="topic-four" disabled/>Topic Four</label></div>
          <div class="checkbox"><label><input type="checkbox" rel="topic-five" disabled/>Topic Five</label></div>
        </div>
      </form>
    </div>
  </section>
  <div class="col-xs-12 no-padding grid" data-masonry='{ "itemSelector": ".grid-item", "columnWidth": ".col-sm-6" }'>
    <section class="grid-item col-xs-12 col-sm-6 box" id="category-one">
      <ul class="results list-unstyled">
        <h1>Category One</h1>
        <li class="category-one topic-one">
          <a href="#">Category One / Topic One</a>
        </li>
        <li class="category-one topic-two">
          <a href="#">Category One / Topic Two</a>
        </li>
        <li class="category-one topic-three">
          <a href="#">Category One / Topic Three</a>
        </li>
        <li class="category-one topic-four">
          <a href="#">Category One / Topic Four</a>
        </li>
        <li class="category-one topic-five">
          <a href="#">Category One / Topic Five</a>
        </li>
      </ul>
    </section>
    <section class="grid-item col-xs-12 col-sm-6 box" id="category-two">
      <ul class="results list-unstyled">
        <h1>Category Two</h1>
        <li class="category-two topic-one">
          <a href="#">Category Two / Topic One</a>
        </li>
        <li class="category-two topic-two">
          <a href="#">Category Two / Topic Two</a>
        </li>
        <li class="category-two topic-three">
          <a href="#">Category Two / Topic Three</a>
        </li>
        <li class="category-two topic-four">
          <a href="#">Category Two / Topic Four</a>
        </li>
        <li class="category-two topic-five">
          <a href="#">Category Two / Topic Five</a>
        </li>
      </ul>
    </section>
    <section class="grid-item col-xs-12 col-sm-6 box" id="category-three">
      <ul class="results list-unstyled">
        <h1>Category Three</h1>
        <li class="category-three topic-one">
          <a href="#">Category Three / Topic One</a>
        </li>
        <li class="category-three topic-two">
          <a href="#">Category Three / Topic Two</a>
        </li>
        <li class="category-three topic-three">
          <a href="#">Category Three / Topic Three</a>
        </li>
        <li class="category-three topic-four">
          <a href="#">Category Three / Topic Four</a>
        </li>
        <li class="category-three topic-five">
          <a href="#">Category Three / Topic Five</a>
        </li>
      </ul>
    </section>
    <section class="grid-item col-xs-12 col-sm-6 box" id="category-four">
      <ul class="results list-unstyled">
        <h1>Category Four</h1>
        <li class="category-four topic-one">
          <a href="#">Category Four / Topic One</a>
        </li>
        <li class="category-four topic-two">
          <a href="#">Category Four / Topic Two</a>
        </li>
        <li class="category-four topic-three">
          <a href="#">Category Four / Topic Three</a>
        </li>
        <li class="category-four topic-four">
          <a href="#">Category Four / Topic Four</a>
        </li>
        <li class="category-four topic-five">
          <a href="#">Category Four / Topic Five</a>
        </li>
      </ul>
    </section>
    <section class="grid-item col-xs-12 col-sm-6 box" id="category-five">
      <ul class="results list-unstyled">
        <h1>Category Five</h1>
        <li class="category-five topic-one">
          <a href="#">Category Five / Topic One</a>
        </li>
        <li class="category-five topic-two">
          <a href="#">Category Five / Topic Two</a>
        </li>
        <li class="category-five topic-three">
          <a href="#">Category Five / Topic Three</a>
        </li>
        <li class="category-five topic-four">
          <a href="#">Category Five / Topic Four</a>
        </li>
        <li class="category-five topic-five">
          <a href="#">Category Five / Topic Five</a>
        </li>
      </ul>
    </section>
    <section class="grid-item col-xs-12 col-sm-6 box" id="category-mix">
      <ul class="results list-unstyled">
        <h1>Mixed Categories Only</h1>
        <li class="category-five category-two topic-one">
          <a href="#">Category Five and Two / Topic One</a>
        </li>
        <li class="category-one category-three topic-two">
          <a href="#">Category One and Three / Topic Two</a>
        </li>
        <li class="category-four category-two topic-three">
          <a href="#">Category Two and Four / Topic Three</a>
        </li>
        <li class="category-five category-three topic-four">
          <a href="#">Category Five and Three / Topic Four</a>
        </li>
        <li class="category-one category-four topic-five">
          <a href="#">Category One and Four / Topic Five</a>
        </li>
      </ul>
    </section>
    <section class="grid-item col-xs-12 col-sm-6 box" id="topics-mix">
      <ul class="results list-unstyled">
        <h1>Mixed Topics Only</h1>
        <li class="category-five topic-two topic-one">
          <a href="#">Category Five / Topic One and Two</a>
        </li>
        <li class="topic-one category-three topic-two">
          <a href="#">Category Three / Topic Two and Three</a>
        </li>
        <li class="category-two topic-five topic-three">
          <a href="#">Category Two / Topic Three and Five</a>
        </li>
        <li class="topic-five category-three topic-four">
          <a href="#">Category Three / Topic Four and Five</a>
        </li>
        <li class="topic-one category-four topic-five">
          <a href="#">Category Four / Topic Five and One</a>
        </li>
      </ul>
    </section>
    <section class="grid-item col-xs-12 col-sm-6 box" id="mixed">
      <ul class="results list-unstyled">
        <h1>Mixed Categories and Topics</h1>
        <li class="category-five category-two topic-one topic-two">
          <a href="#">Category Five and Two / Topic One and Two</a>
        </li>
        <li class="category-one category-three topic-two topic-five">
          <a href="#">Category One and Three / Topic Two and Five</a>
        </li>
        <li class="category-four category-two topic-three topic-one">
          <a href="#">Category Two and Four / Topic Three and One</a>
        </li>
        <li class="category-five category-three topic-four topic-five">
          <a href="#">Category Five and Three / Topic Four and Five</a>
        </li>
        <li class="category-one category-four topic-five topic three">
          <a href="#">Category One and Four / Topic Five and Three</a>
        </li>
      </ul>
    </section>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>

  

    <script  src="./resources/assets/tag/js/index.js"></script>




</body>

</html>
