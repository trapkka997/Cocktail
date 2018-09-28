<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<link rel="stylesheet"
	href="./resources/assets/modal_makingCocktail/css/makingCocktail.css">
</head>
<body>


	<!-- modal1 -->
	<div id="imageUpload" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg">

			<!--  -->
			<div>
				<aside class="draw-panel">
				<ul class="tabs tabs-fixed-width custom-tabs">
					<li class="tab"><a href="#styles">STYLES</a></li>
				</ul>

				<section class="panel-slide p-0" id="styles">
				<ul class="collapsible no-shadow mt-0 bt-0"
					data-collapsible="accordion">

					<li class="bb-lg">
						<div class="collapsible-header flex flex-spred">
							<h6 class="c-default">Base spirits</h6>
							<div class="flex flex-column">
								<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
								<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
							</div>
						</div>

						<div class="collapsible-body b-0"></div>

					</li>

					<li class="bb-lg">
						<div class="collapsible-header flex flex-spred">
							<h6 class="c-default">Color</h6>
							<div class="flex flex-column">
								<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
								<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
							</div>
						</div>
						<div class="collapsible-body"></div>
					</li>

					<li class="bb-lg">
						<div class="collapsible-header flex flex-spred">
							<h6 class="c-default">Liqueur</h6>
							<div class="flex flex-column">
								<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
								<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
							</div>
						</div>
						<div class="collapsible-body"></div>
					</li>

					<li class="bb-lg">
						<div class="collapsible-header flex flex-spred">
							<h6 class="c-default">Material</h6>
							<div class="flex flex-column">
								<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_less</i>
								<i class="material-icons mr-0 c-grey rotate-180 em-3-4">expand_more</i>
							</div>
						</div>
						<div class="collapsible-body"></div>
					</li>

				</ul>
				</section> </aside>

				<div class="editor">


					<header class="flex flex-spred editor-toolbar">

					<ul class="flex">

						<li class="hover hd-preview"><i class="material-icons circle">undo</i>
						</li>
						<li class="hd-preview"><i class="material-icons circle"
							disabled>redo</i></li>
						<li><span class="header-vertical-rule"></span></li>

						<li class="sh-preview js-preview"><a
							class='btn btn-round indigo ml-375' href='#'>Update</a></li>
						<li class="hd-preview"><span
							class="btn-group ml-375 hd-preview"> <a
								class='dropdown-button btn indigo' href='#'> Update </a> <a
								class='dropdown-button btn indigo' href='#'
								data-activates='publish-options'> <i class="material-icons">expand_more</i>
							</a>
						</span>
							<ul id='publish-options' class='dropdown-content custom'>
								<li><a href="#!">Publish </a></li>
								<li><a href="#!">Unpublish</a></li>
							</ul></li>
					</ul>
					</header>
					<main class="editor-canvas"> </main>
				</div>
			</div>

			<!--  -->
			
		</div>
	</div>
	
	<!-- modal1_end -->

	
</body>

</html>