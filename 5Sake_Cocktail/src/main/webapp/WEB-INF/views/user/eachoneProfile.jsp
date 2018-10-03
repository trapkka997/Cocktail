<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>5sake's Cocktail</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css?ver=2">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<link rel="stylesheet"
	href="./resources/assets/basic/css/navbar/navbar.css">
<link rel="stylesheet"
	href="./resources/assets/basic/css/proflie_slide/slide_component.css">
<!--profile-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="./resources/assets/basic/css/profile/default.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css">
<link rel="stylesheet" href="./resources/assets/tag/css/tag_default.css">

<link rel="stylesheet"
	href="./resources/assets/selfmaking/css/button/button.css">
<link rel="stylesheet" href="./resources/assets/gallery/css/gallery.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
<link rel="stylesheet"
	href="./resources/assets/gallery/css/uploadbutton.css">
<link rel="stylesheet"
	href="./resources/assets/gallery/css/circluar_layout.css">
<!-- eachoneProfile_css 중요 -->
<link rel="stylesheet"
	href="./resources/assets/eachoneProfile/css/eachoneProfile.css">
<link rel="stylesheet"
	href="./resources/assets/eachoneProfile/css/tabMenu.css">
<link rel="stylesheet"
	href="./resources/assets/eachoneProfile/css/eachoneProfile_modalButton.css">
<link rel="stylesheet"
	href="./resources/assets/eachoneProfile/css/eachoneProfile_following_followerModal.css">
<link rel="stylesheet"
	href="./resources/assets/eachoneProfile/css/eachoneProfile_profile_editModal.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans">
<!-- eachoneProfile_css 중요 -->
<!-- message_css 중요 -->
<link rel="stylesheet" href="./resources/assets/chat/css/chat.css">
<style>
.modal-dialog .profile {
	max-width: 500px;
	height: 90%;
}

.modal-content .profile {
	background-color: #fff0;
	border: none;
	display: unset;
}
</style>

</head>

<body>
	<input type="hidden" id="userEmail" name="userEmail"
		value="${user.userEmail }">
	<input type="hidden" id="path" name="path"
		value="${path }">
			
	<div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<div class="userprofile_outer">
						<div class="userprofile_inner">
							<!-- profile -->
							<div class="container profile">
								<div class="row profile">
									<div class="col-xs-4 col-sm-2 col-md-offset-2 userpic">

										<div class="p-image">
											<i class="fa fa-camera upload-button"></i> <input
												class="file-upload" type="file" accept="image/*" />
										</div>

										<span class="avatar"> <img class="profile-pic"
											src="${path }${user.savedFilename }" />

										</span>

									</div>
									<div class="col-xs-8 col-sm-10 col-md-8 user-info">
										<div>
											<h2 class="full-name">${user.userNickname }</h2>
											<ul class="mfe">
												<li>
													<button class="btn btn-default" onclick="openForm()">Message</button>
												</li>
												<li>
													<button class="btn btn-default" onclick="followBtn()">Follow</button>
												</li>
												<c:if test="${sessionScope.useremail eq  user.userEmail}">
													<li>
														<button class="btn btn-default" data-toggle="modal"
															data-target="#profile_editModal">Edit</button>
													</li>
												</c:if>
											</ul>
										</div>
										<ul class="ach">
											<li><span class="ach-count" onclick="postBtn()">${postNum }</span>
												<span class="ach-label">Posts</span></li>
											<li><span class="ach-count">${followerNum }</span> <span
												class="ach-label" data-toggle="modal"
												data-target="#followerModal">Followers</span></li>
											<li><span class="ach-count">${followNum }</span> <span
												class="ach-label" data-toggle="modal"
												data-target="#followingModal">Following</span></li>
										</ul>
										<div>
											<p class="bio">${user.userSentence }</p>
										</div>

									</div>
								</div>
							</div>
							<!-- profile -->
						</div>
					</div>

				</div>
			</div>


			<!-- message_modal -->

			<div class="chat-popup" id="myForm">
				<form class="form-container" onsubmit="return sendBtn()">
					<h1>Chat</h1>
					<label for="msg"><b>Message</b></label>
					<div class="chat_chat">
					</div>

					<textarea placeholder="Type message.." id="msg" name="msg" required></textarea>

					<button type="submit" class="btn send">Send</button>
					<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
				</form>
			</div>
			<!-- message_modal_end -->

			<!-- #followerModal_modal -->
			<div class="modal fade" id="followerModal" tabindex="-1"
				aria-labelledby="output" role="dialog" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div id="output">
							<div class="search">
								<i class="fa fa-fw fa-search"></i> <input id="searchBar"
									type="text">
							</div>
							<c:forEach var="follower" items="${followerList }">
								<div class="row friend" data-toggle="tooltip"
									data-placement="right">
									<img src="${path }${follower.savedFilename}" alt="">
									<div class="title">${follower.userEmail }</div>
									<button class="sendMessage" type="submit"></button>
									<a href="#messageModal" data-toggle="modal"> <i
										class="fa fa-paper-plane"></i>
									</a>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<!-- #follwerModal_modal_end -->



			<!-- followingModal_modal -->
			<div class="modal fade" id="followingModal" tabindex="-1"
				aria-labelledby="output" role="dialog" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div id="output">
							<div class="search">
								<i class="fa fa-fw fa-search"></i> <input id="searchBar"
									type="text">
							</div>
							<c:forEach var="follow" items="${followList }">
								<div class="row friend" data-toggle="tooltip"
									data-placement="right">
									<img src="${path }${follow.savedFilename}" alt="">
									<div class="title">${follow.userEmail }</div>
									<button class="sendMessage" type="submit"></button>
									<a href="#messageModal" data-toggle="modal"> <i
										class="fa fa-paper-plane"></i>
									</a>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<!-- followingModal_end -->

			<!-- profile_editModal -->

			<div class="modal fade" id="profile_editModal" tabindex="-1"
				aria-labelledby="output" role="dialog" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">

						<form class="profile_edit_form" action="updateUser" method="post">
							<h1 class="profile_edit_h1">Edit information</h1>
							<div class="question">
								<input type="text" id="updateNickname" name="userNickname"
									required /> <label>NickName</label>
							</div>
							
							<div class="question">
								<input type="text" id="updateYourLikes" name="updateYourLikes"
									required /> <label>Your Likes</label>
							</div>
							
							<div class="question">
								<input type="text" id="updateFeeling" name="userFeeling"
									required /> <label>Your Thought</label>
							</div>
							
							<!-- <div class="question">
								<input type="text" id="updateInstagramID" name="userInsta"
									required /> <label>Instagram ID</label>
							</div> -->
							

							<button>수 정</button>
						</form>

					</div>
				</div>
			</div>
			<!-- profile_editModal_end -->


			<!-- tabMenu -->
			<div class="wrapper_tabMenu">
				<nav class="tabs_tabMenu">
					<div class="selector_tabMenu"></div>
					<a href="#" class="active_tabMenu" onclick="sukiSakeBtn()">好き酒</a>
					<a href="#" onclick="sukisyashinBtn()">好き写真</a> <a href="#"
						onclick="sukikataBtn()">好き方</a>
				</nav>
			</div>
			<!-- tabMenu_end -->


			<div class="row">
				<div class="col-md-12">
					<div id="grid-gallery" class="grid-gallery">
						<section class="grid-wrap">
							<ul class="grid">
								<li class="grid-sizer"></li>
								<!-- for Masonry column width -->

							</ul>
						</section>
						<section class="slideshow">
							<ul>
								<c:forEach var="photo" items="${photoList }">
									<li>
										<figure>
											<figcaption>
												<h3>${photo.title }</h3>
												<p>${photo.contents }</p>
											</figcaption>
											<img src="${path }${photo.saveFileName}" alt="img01" />
										</figure>
									</li>
								</c:forEach>
							</ul>
							<nav>
								<span class="icon nav-prev"></span> <span class="icon nav-next"></span>
								<span class="icon nav-close"></span>
							</nav>
							<div class="info-keys icon">Navigate with arrow keys</div>
						</section>
					</div>
				</div>

				<!-- modal -->
				<nav class="menu">
					<input type="checkbox" href="#" class="menu-open" name="menu-open"
						id="menu-open" /> <label class="menu-open-button" for="menu-open">
						<span class="hamburger hamburger-1"></span> <span
						class="hamburger hamburger-2"></span> <span
						class="hamburger hamburger-3"></span>
					</label> <a href="#" class="menu-item"> <i class="fa fa-bar-chart"></i>
					</a> <a href="#" class="menu-item"> <i class="fa fa-plus"></i>
					</a>
				</nav>

				<!-- filters -->
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1">
				    <defs>
				      <filter id="shadowed-goo">
				          
				          <feGaussianBlur in="SourceGraphic" result="blur"
						stdDeviation="10" />
				          <feColorMatrix in="blur" mode="matrix"
						values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo" />
				          <feGaussianBlur in="goo" stdDeviation="3" result="shadow" />
				          <feColorMatrix in="shadow" mode="matrix"
						values="0 0 0 0 0  0 0 0 0 0  0 0 0 0 0  0 0 0 1 -0.2"
						result="shadow" />
				          <feOffset in="shadow" dx="1" dy="1" result="shadow" />
				          <feComposite in2="shadow" in="goo" result="goo" />
				          <feComposite in2="goo" in="SourceGraphic" result="mix" />
				      </filter>
				      <filter id="goo">
				          <feGaussianBlur in="SourceGraphic" result="blur"
						stdDeviation="10" />
				          <feColorMatrix in="blur" mode="matrix"
						values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo" />
				          <feComposite in2="goo" in="SourceGraphic" result="mix" />
				      </filter>
				    </defs>
				</svg>
				<!-- modal -->


				<!-- modal1_start -->
				<div id="myModal" class="modal fade" role="dialog">
					<div class="modal-dialog modal-lg">

						<!-- Modal content-->
						<div class="modal-content">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<!--  -->
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-12">
										<h3 class="text-center text-info">My own cocktail</h3>
										<div class="row">
											<div class="col-md-3">
												<div class='selector'>
													<ul>
														<li><input id='1' type='checkbox'> <label
															for='1'>Option 1</label></li>
														<li><input id='2' type='checkbox'> <label
															for='2'>Option 2</label></li>
														<li><input id='3' type='checkbox'> <label
															for='3'>Option 3</label></li>
														<li><input id='4' type='checkbox'> <label
															for='4'>Option 4</label></li>
														<li><input id='5' type='checkbox'> <label
															for='5'>Option 5</label></li>
														<li><input id='6' type='checkbox'> <label
															for='6'>Option 6</label></li>
														<li><input id='7' type='checkbox'> <label
															for='7'>Option 7</label></li>
														<li><input id='8' type='checkbox'> <label
															for='8'>Option 8</label></li>
													</ul>
													<button>Click here</button>
												</div>

												<div class='selector'>
													<ul>
														<li><input id='1' type='checkbox'> <label
															for='1'>Option 1</label></li>
														<li><input id='2' type='checkbox'> <label
															for='2'>Option 2</label></li>
														<li><input id='3' type='checkbox'> <label
															for='3'>Option 3</label></li>
														<li><input id='4' type='checkbox'> <label
															for='4'>Option 4</label></li>
														<li><input id='5' type='checkbox'> <label
															for='5'>Option 5</label></li>
														<li><input id='6' type='checkbox'> <label
															for='6'>Option 6</label></li>
														<li><input id='7' type='checkbox'> <label
															for='7'>Option 7</label></li>
														<li><input id='8' type='checkbox'> <label
															for='8'>Option 8</label></li>
													</ul>
													<button>Click here</button>
												</div>
											</div>
											<div class="col-md-6">

												<div class="row">
													<div class="col-md-12">
														<div class="card">
															<h5 class="card-header">Card title</h5>
															<div class="card-body">
																<p class="card-text">Card content</p>
															</div>
															<div class="card-footer">Card footer</div>
														</div>
													</div>
												</div>

											</div>
											<div class="col-md-3">
												<div class="card">
													<h5 class="card-header">Card title</h5>
													<div class="card-body">
														<p class="card-text">Card content</p>
													</div>
													<div class="card-footer">Card footer</div>
												</div>
												<div class="card">
													<h5 class="card-header">Card title</h5>
													<div class="card-body">
														<p class="card-text">Card content</p>
													</div>
													<div class="card-footer">Card footer</div>
												</div>
											</div>
										</div>
										<div class="row">

											<div class="col-md-8">
												<div class="row">
													<div class='container'>
														<div id='app'>
															<div class='tagHere'></div>
															<input type="text" autofocus />
														</div>
													</div>
													<div class='note'>Use Tab to input a tag.</div>
												</div>
											</div>

											<div class="col-md-4">

												<button type="button"
													class="btn btn-block btn-outline-warning">Upload</button>
												<button type="button"
													class="btn btn-block btn-outline-primary">Sharing</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--  -->
						</div>

					</div>
				</div>
				<!-- modal1_end -->
				<!-- modal -->
			</div>
		</div>
	</div>


	<script
		src="./resources/assets/basic/js/proflie_slide/proflieSlide_slideclassie.js"></script>
	<script
		src="./resources/assets/basic/js/proflie_slide/proflieSlide_modernizr.custom.js"></script>
	<script src="./resources/assets/gallery/js/gallery/gallery_classie.js"></script>
	<script
		src="./resources/assets/gallery/js/gallery/gallery_modernizr.custom.js"></script>
	<script
		src="./resources/assets/gallery/js/gallery/imagesloaded.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/js/gallery/masonry.pkgd.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
	<script src="./resources/assets/gallery/js/gallery/cbpGridGallery.js"></script>
	<script src="./resources/assets/gallery/js/circluar_layout.js"></script>
	<script src="./resources/assets/eachoneProfile/js/tabMenu.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
	<script type="text/javascript"></script>
	<!--  MessageModal-->
	<!--  Profile_image change-->
	<script>
		 var sock = new SockJS('http://localhost:8888/cocktail/myHandler');
		  sock.onopen = function() {
		     console.log('open');
		 };
		 sock.onmessage = function(e) {
		    	var currentTime = Date.now()
		    	var GMT = -(new Date()).getTimezoneOffset()/60;
		    	var totalSeconds = Math.floor(currentTime/1000);
		    	seconds = ('0' + totalSeconds % 60).slice(-2);
		    	var totalMinutes = Math.floor(totalSeconds/60);
		    	minutes = ('0' + totalMinutes % 60).slice(-2);
		    	var totalHours = Math.floor(totalMinutes/60);
		    	hours = ('0' + (totalHours+GMT) % 24).slice(-2);
		    	var timeDisplay = hours + ":" + minutes + ":" + seconds;
		     console.log('message', e.data);
		     var resp = e.data.split(" : ");
		     var getData = resp[2];
		     console.log(resp);
		     var userId = document.getElementById('userEmail').value;
		     
		     var usrPicture = document.getElementById('path').value+resp[1];
			 var message = "";
			 message +='<div class="container_chat">';
			 message +='<img src="'+ usrPicture+'" alt="Avatar" style="width: 100%;">';
			 message +='<p>'+getData+'</p>';
			 message +='<span class="time-left">'+timeDisplay+'</span>';
			 message +='</div>'
		     $('.chat_chat').append(message);
			 $('#msg').val('');
			 //sock.close();
		 };

		 sock.onclose = function() {
		     console.log('close');
		 }; 
		
		</script>
		<script>
			$(document).ready(function() {
				
				var followUser = document.getElementById('userEmail').value;
				$.ajax({
							method : "post",
							url : "selectUserPhoto",
							data : {
								userEmail : followUser
							},
							success : function(resp) {
								$('.grid-sizer').nextAll().empty();
								console.log(resp);
								var text = "";
								resp.forEach(function(value, index, resp) {	
									text += '<li>';
									text += '<figure>';
									text += '<figcaption>';
									text += '<h3>'+resp[index].contents+'</h3>';
									text += '<p>'+resp[index].contents+'</p>';
									text += '</figcaption>';
									text += '<img src=${path}'+resp[index].saveFileName+' alt="img01" />';
									text += '</figure>';
									text += '</li>'
								});
								$('.grid-sizer').after(text);
							},
							error : function() {
								alert('err');
							}
						});	

				var readURL = function(input) {
					if (input.files && input.files[0]) {
						console.log(input.files[0]);
					    var fd = new FormData();
					    fd.append("file", input.files[0]);
						  var xhr = new XMLHttpRequest();
						    xhr.onreadystatechange = function() {
						       if (this.readyState == 4 && this.status == 200) {
						          console.log(xhr.response);
						          $("#content").load("/cocktail/eachoneProfile?userEmail="+followUser);
						              } else if(this.status == 500){
						              } else if(this.status == 403){
						              } else if(this.status == 404){
						              } 
						    };
						    xhr.open("POST", "/cocktail/updateProfilePicture");
						    xhr.send(fd);
						    
						var reader = new FileReader();

						reader.onload = function(e) {
							
							
							$('.profile-pic').attr('src', e.target.result);
						}

						reader.readAsDataURL(input.files[0]);
					}
				}

				$(".file-upload").on('change', function() {
					readURL(this);
				});

				$(".upload-button").on('click', function() {
					$(".file-upload").click();
				});
			});
		</script>
		<!--  Profile_image change_end -->
		<script type="text/javascript">
			 function sendBtn() {
				 
				 
				 alert('몇번 실행이 될까?');
		    	var sendMessage = $('#msg').val();
		    	var followUser = document.getElementById('userEmail').value;
				 $.ajax({
					method:"get",
					url:"writeMessage",
					data:{
						toUserEmail : followUser,
						message : sendMessage
					},
					success:function(resp){
						sock.send(JSON.stringify(sendMessage));
						msg.text = "";
					},error: function(){
						alert('err');
					}
					
				}); 
				return false;
			}

			function followBtn() {
				var followUser = document.getElementById('userEmail').value;
				$.ajax({
					method : "get",
					url : "userFollow",
					data : {
						followUser : followUser
					},
					success : function(resp) {
						if (resp == '3') {
							alert("본인은 follow 불가능합니다.");
						} else if (resp == '2') {
							alert("이미 follow 한 사람입니다.");
						} else if (resp == '1') {
							alert("follow 완료 ");
						}
					},
					error : function() {
						alert('err');
					}
				});
			}

			function sukiSakeBtn() {
				var followUser = document.getElementById('userEmail').value;
				$.ajax({
					method : "post",
					url : "sukiSake",
					data : {
						userEmail : followUser
					},
					success : function(resp) {
						$('.grid-sizer').nextAll().empty();
						var text = "";
						resp.forEach(function(value, index, resp) {	
							text += '<li>';
							text += '<figure>';
							text += '<figcaption>';
							text += '<h3>'+resp[index].cocktailName+'</h3>';
							text += '<p>'+resp[index].cocktailName+'</p>';
							text += '</figcaption>';
							text += '<img src="'+resp[index].imageRink+'" alt="img01" />';
							text += '</figure>';
							text += '</li>'
						});
						$('.grid-sizer').after(text);
					},
					error : function() {
						alert('err');
					}
				});
			}
			function sukisyashinBtn() {
				var followUser = document.getElementById('userEmail').value;
				$.ajax({
					method : "post",
					url : "sukisyashin",
					data : {
						userEmail : followUser
					},
					success : function(resp) {
						console.log(resp);
						$('.grid-sizer').nextAll().empty();
						var text = "";
						resp.forEach(function(value, index, resp) {	
							text += '<li>';
							text += '<figure>';
							text += '<figcaption>';
							text += '<h3>'+resp[index].title+'</h3>';
							text += '<p>'+resp[index].contents+'</p>';
							text += '</figcaption>';
							text += '<img src=${path}'+resp[index].saveFileName+' alt="img01" />';
							text += '</figure>';
							text += '</li>'
						});
						$('.grid-sizer').after(text);
					},
					error : function() {
						alert('err');
					}
				});
			}

			function sukikataBtn() {
				var followUser = document.getElementById('userEmail').value;
				$.ajax({
							method : "post",
							url : "userselectCockList",
							success : function(resp) {
								$('.grid-sizer').nextAll().empty();
								console.log(resp);
								var text = "";
								resp.forEach(function(value, index, resp) {	
									text += '<li>';
									text += '<figure>';
									text += '<figcaption>';
									text += '<h3>'+resp[index].usercocktailname+'</h3>';
									text += '<p>'+resp[index].usercocktailname+'</p>';
									text += '</figcaption>';
									text += '<img src=${path}'+resp[index].savefilename+' alt="img01" />';
									text += '</figure>';
									text += '</li>'
								});
								$('.grid-sizer').after(text);
							},
							error : function() {
								alert('err');
							}
						});
			}
			function postBtn() {
				var followUser = document.getElementById('userEmail').value;
				$.ajax({
							method : "post",
							url : "selectUserPhoto",
							data : {
								userEmail : followUser
							},
							success : function(resp) {
								$('.grid-sizer').nextAll().empty();
								console.log(resp);
								var text = "";
								resp.forEach(function(value, index, resp) {	
									text += '<li>';
									text += '<figure>';
									text += '<figcaption>';
									text += '<h3>'+resp[index].contents+'</h3>';
									text += '<p>'+resp[index].contents+'</p>';
									text += '</figcaption>';
									text += '<img src=${path}'+resp[index].saveFileName+' alt="img01" />';
									text += '</figure>';
									text += '</li>'
								});
								$('.grid-sizer').after(text);
							},
							error : function() {
								alert('err');
							}
						});
			}
			function updateBtn() {
				var followUser = document.getElementById('userEmail').value;
				$.ajax({
							method : "post",
							url : "selectUserPhoto",
							data : {
								userEmail : followUser
							},
							success : function(resp) {
								$('.grid-sizer').nextAll().empty();
								console.log(resp);
								var text = "";
								resp.forEach(function(value, index, resp) {	
									text += '<li>';
									text += '<figure>';
									text += '<figcaption>';
									text += '<h3>'+resp[index].contents+'</h3>';
									text += '<p>'+resp[index].contents+'</p>';
									text += '</figcaption>';
									text += '<img src=${path}'+resp[index].saveFileName+' alt="img01" />';
									text += '</figure>';
									text += '</li>'
								});
								$('.grid-sizer').after(text);
							},
							error : function() {
								alert('err');
							}
						});
			}
			function openForm() {
	      	document.getElementById("myForm").style.display = "block";
	   	 	}
	    	function closeForm() {
	      	document.getElementById("myForm").style.display = "none";
	    	}
		</script>
		<!-- chat-->

	
</body>

</html>