<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
         <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Blog Home - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/eventstyles.css" rel="stylesheet" />
        
        
        <style>
         #modal.modal-overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
            display: none;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background: rgba(255, 255, 255, 0.25);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(1.5px);
            -webkit-backdrop-filter: blur(1.5px);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.18);
        }
        #modal .modal-window {
            background:rgba(255, 255, 255, 0.671);
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            width: 400px;
            height: 500px;
            position: relative;
            top: -100px;
            padding: 10px;
        }
        #modal .title {
            padding-left: 10px;
            display: inline;
            text-shadow: 1px 1px 2px gray;
            color: black;
            
        }
        #modal .title h2 {
            display: inline;
        }
        #modal .close-area {
            display: inline;
            float: right;
            padding-right: 10px;
            cursor: pointer;
            text-shadow: 1px 1px 2px gray;
            color: black;
        }
        
        #modal .content {
            margin-top: 20px;
            padding: 0px 10px;
            text-shadow: 1px 1px 2px gray;
            color: black;
        }
		
 		header h1 {
    padding-top: 50px;
    font-size: 36px;
    letter-spacing: 2px;
}



section strong {
    font-size: 20px;
}



section strong {
    display: block;
    margin-top: 30px;
}

.ipt_wrap {
    margin: 20px 0;
    font-size: 0;
}

input[type="number"],
input[type="button"] {
    display: inline-block;
    vertical-align: middle;
}

input[type="number"] {
    width: 30%;
    height: 20px;
    padding: 20px 10px;
    border: 5px solid #000;
    border-right: 0;
    background: #fff;
    text-align: center;
    font-size: 32px;
}

input[type="button"] {
    width: 20%;
    height: 70px;
    border: 0;
    background: #000;
    font-size: 20px;
    font-weight: bold;
    color: #fff;
    cursor: pointer;
}

#guide {
    margin-bottom: 20px;
    font-size: 18px;
    font-style: italic;
}
.numSection {
    width: 100%;
    max-width: 700px;
    margin: 0 auto;
    text-align: center;
}
	#number1 {
    display: inline-block;
    width: 120px;
    border-bottom: 5px solid #000;
    text-align: center;
    font-size: 90px;
    color: #fff;
}	 

        </style>
    </head>
    <body>
        <!-- Page content-->
        
        <!-- Page header with logo and tagline-->
        <header class="py-5 bg-light border-bottom mb-4">
            <div class="container">
                <div class="text-center my-5">
                    <h1 class="fw-bolder">이벤트 페이지</h1>
                    <p class="lead mb-0">뭐적지</p>
                </div>
            </div>
        </header>
        <!-- Page content-->
        <div class="container">
            <div class="row">
                <!-- Blog entries-->
                <div class="col-lg-8">
                    <!-- Featured blog post-->
                    <div class="card mb-4">
                        <a href="loginForm.do"><img class="card-img-top" src="resources/img/event/배너1.jpg" alt="..." /></a>
                        <div class="card-body">
                            <a class="btn btn-primary" href="loginForm.do">회원가입하러 가기</a>
                        </div>
                    </div>
                    <!-- Nested row for non-featured blog posts-->
                    <div class="row">
                        <div class="col-lg-6">
                            <!-- Blog post-->
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="resources/img/event/이벤트.jpg"style ="width:700px; height:330px;" alt="..." /></a>
                                <div class="card-body">
                                    
                                    <!-- ==========================모달창======= -->
	                                   <div id="container">
                                    <a class="btn btn-primary" id= "btn-modal"href="#!">게임하러 가기</a>
									        <!-- <button id="btn-modal">모달 창 열기 버튼</button> -->
									    </div>  
									    <div id="modal" class="modal-overlay">
									        <div class="modal-window">
									            <div class="title">
									            <div class="close-area">X</div>
									                <h1>UP DOWN GAME</h1>
									            </div>
									            <div class="content">
							<!-- ----------------------숫자맞히기 게임------------------- -->
									            
												<header>
											        
											    </header>
											    <section class="numSection">
											    
											        <strong>숫자를 맞춰보세요.</strong>
											        <div class="ipt_wrap">
											            <input type="number" id="ipt_num" value="0" onkeyup="enterkey();">
											            <input type="button" value="확인" onclick="numChk();">
											        </div>
											        <div id="guide"></div>
											        <div><span id="try_num"></span>회 시도!</div>
											    </section>
									                
									            
									<!-- ==========================모달창======= -->
									    
									     </div>
									        </div>
									    </div>
                                </div>
                            </div>
                            <!-- Blog post-->
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="resources/img/event/배너2.jpg" style ="width:700px; height:330px;" alt="..." /></a>
                                <div class="card-body">
                                    <a class="btn btn-primary" href="javascript:alert('종료된 이벤트입니다')">종료된 이벤트</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <!-- Blog post-->
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="resources/img/event/룰렛.jpg" style ="width:700px; height:330px;" /></a>
                                <div class="card-body">
                                    <a class="btn btn-primary" href="javascript:alert('오픈 예정입니다')">오픈 예정</a>
                                </div>
                            </div>
                            <!-- Blog post-->
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="resources/img/event/배너3.jpg" style ="width:700px; height:330px;" alt="..." /></a>
                                <div class="card-body">
                                    <a class="btn btn-primary" href="javascript:alert('종료된 이벤트입니다')">종료된 이벤트</a>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                </div>
               
            </div>
        </div>
        </body>
        <script>
        let num = 0
        let try_count = 0;
            
            const modal = document.getElementById("modal")
			const btnModal = document.getElementById("btn-modal")
			btnModal.addEventListener("click", e => {
			    num = Math.floor(Math.random() * 100);
			    try_count = 0;
			    document.getElementById("try_num").innerHTML=try_count;
			    document.getElementById("guide").innerHTML="";
			    document.getElementById("ipt_num").value=0;
			    modal.style.display = "flex"
			    console.log("게임ㅅ;직")
			})

			const closeBtn = modal.querySelector(".close-area")
			closeBtn.addEventListener("click", e => {
			    modal.style.display = "none"
			})
			modal.addEventListener("click", e => {
			    const evTarget = e.target
			    if(evTarget.classList.contains("modal-overlay")) {
			        modal.style.display = "none"
			    }
			})
			window.addEventListener("keyup", e => {
			    if(modal.style.display === "flex" && e.key === "Escape") {
			        modal.style.display = "none"
			    }
			})
<!------------------------------------------------숫자맞히기---------------------------------------------->

            window.onload = function() {

                document.getElementById("ipt_num").innerHTML=num;
                document.getElementById("try_num").innerHTML=try_count;
            }
            function numChk() {
            	console.log("작동!")
                var custom_number = document.getElementById("ipt_num").value;
            	console.log(custom_number);
            
            if( custom_number == "" ) {
                alert("숫자를 입력해주세요.");
            } else if ( custom_number > num ) {
                document.getElementById("guide").innerHTML="Down!";
            } else if( custom_number < num ) {
                document.getElementById("guide").innerHTML="Up!";
            } else if( custom_number == num ) {
                document.getElementById("guide").innerHTML="<b>정답</b>입니다!";
                alert('쿠폰이 지급되었습니다');
            } else {
                document.getElementById("guide").innerHTML="숫자만 입력해주세요.";
            }
            try_count ++;
            document.getElementById("try_num").innerHTML=try_count;
            function enterkey() {
                if (window.event.keyCode == 13) {
                     numChk();
                }
            }
            }
             
        </script>
    </body>

