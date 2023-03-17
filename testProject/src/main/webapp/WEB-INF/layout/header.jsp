<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section id="header">
            <div class="header-area">

                <!--End of top header-->
                <div class="header_menu text-center" data-spy="affix" data-offset-top="50" id="nav">
                    <div class="container">
                        <nav class="navbar navbar-default zero_mp ">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand custom_navbar-brand" href="#"><img src="resources/test_img/logo.png" alt=""></a>
                            </div>
                            <!--End of navbar-header-->

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse zero_mp" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav navbar-right main_menu">
                                    <li class="active"><a href="#header">Home <span class="sr-only">(current)</span></a></li>
                                    <li><a href="#welcome">about</a></li>
                                    <li><a href="#portfolio">project</a></li>
                                    <li><a href="#counter">achivment</a></li>
                                    <li><a href="#event">event</a></li>
                                    <li><a href="#testimonial">testimonial</a></li>
                                    <li><a href="#blog">blog</a></li>
                                    <%
                                String email = (String) session.getAttribute("email");
                                %>
                                <%if(email ==null){ %>
                                <li class="nav-item"><a class="nav-link" href="loginForm.do">로그인</a></li>
                                <%} else{%>
                                <li class="nav-item"><a class="nav-link" href="logout.do">로그아웃</a></li>
                                <%} %>
                                    <li><a href=""> 더보기 </a></li>                              
                                </ul>
                                
                                
                            </div>
                            <!-- /.navbar-collapse -->
                        </nav>
                        <!--End of nav-->
                    </div>
                    <!--End of container-->
                </div>
                <!--End of header menu-->
            </div>
            <!--end of header area-->
        </section>
        <!--End of Hedaer Section-->
          <script language="javascript">
  function showPopup() { window.open("index.html", "a", "width=400, height=300, left=100, top=50"); }
  </script>