<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section id="header">
<style>
.dropbtn {
  background-color: #3498DB;
  color: white;
  padding: 16px;
  font-size: 15px;
  border: none;
  cursor: pointer;
}

/* Dropdown button on hover & focus */
.dropbtn:hover, .dropbtn:focus {
  background-color: #2980B9;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #ddd;}

/* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
.show {display:block;}
</style>
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
                                <a class="navbar-brand custom_navbar-brand" href="mainpage.do"><img src="resources/test_img/logo.png" alt=""></a>
                            </div>
                            <!--End of navbar-header-->

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse zero_mp" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav navbar-right main_menu">                                                            
                                	<li><a href="myPageForm.do">마이 페이지</a></li>
                               
                                <% String email = (String) session.getAttribute("email"); %>                                
                                <%if(email ==null){ %>
                                	<li class="nav-item"><a class="nav-link" href="loginForm.do">로그인</a></li>
                                <%} else{%>
                                	<li class="nav-item"><a class="nav-link" href="logout.do">로그아웃</a></li>
                                <%} %>
                                    <li><div class="dropdown">
									  <button onclick="myFunction()" class="dropbtn">menu</button>
									  <div id="myDropdown" class="dropdown-content">
									    <a href="postList.do">게시판</a>
									    <a href="postList.do">자주묻는질문</a>
									    <a href="postList.do">Q/A</a>
									    <a href="eventpage.do">이벤트</a>
									  </div>
													</div></li>                              
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
  
  function myFunction() {
	  document.getElementById("myDropdown").classList.toggle("show");
	}

	// Close the dropdown menu if the user clicks outside of it
	window.onclick = function(event) {
	  if (!event.target.matches('.dropbtn')) {
	    var dropdowns = document.getElementsByClassName("dropdown-content");
	    var i;
	    for (i = 0; i < dropdowns.length; i++) {
	      var openDropdown = dropdowns[i];
	      if (openDropdown.classList.contains('show')) {
	        openDropdown.classList.remove('show');
	      }
	    }
	  }
	}
  </script>