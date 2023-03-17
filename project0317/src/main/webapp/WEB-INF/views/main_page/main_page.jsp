<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

 <link rel="stylesheet" href="resources/css/mainpage-date/mobiscroll.javascript.min.css">
 <link rel="stylesheet" href="resources/css/mainpage/mainpage.css" type="text/css">

 
 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
     input.md-mobile-picker-input {
        color: initial;
        width: 200px;
        padding: 10px;
        margin: 6px 0 12px 0;
        border: 1px solid #ccc;
        border-radius: 0;
        font-family: arial, verdana, sans-serif;
        font-size: 14px;
        box-sizing: border-box;
        -webkit-appearance: none;
    }
    .md-mobile-picker-button.mbsc-button {
        font-size: 13px;
        padding: 0 15px;
        line-height: 36px;
        float: right;
        margin: 6px 0;
        width: 100%;
    }
    
    .mbsc-col-no-padding {
        padding-left: 0;
    }
    
    .md-mobile-picker-box-label.mbsc-textfield-wrapper-box,
    .md-mobile-picker-box-label .mbsc-textfield-wrapper-box,
    .md-mobile-picker-inline {
        margin: 6px 0 12px 0;
    }
    
    
    /* 이미지 */
.img-list{
  float: left;
  border: 1px solid #ccc;
  width: 1000px;
  height: 1000px;
  background-color: #fff ;
}

.img-listoflist{
  float: left;
  border: 1px solid #ccc;
  height: 200px;
  background-color: #fff ;
}
    
.hotel-main-img{
	width: 300px;
	height: 240px;
	
	
    
    
    
    
</style>

</head>
<body data-spy="scroll" data-target="#header">
        <section id="slider">
            <div id="carousel-example-generic" class="carousel slide carousel-fade" data-ride="carousel" data-interval="3000">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <div class="slider_overlay">
                            <img src="resources/test_img/img1.jpg" alt="...">
                            <div class="carousel-caption">
                                <div class="slider_text">
                                    <h3>Protect</h3>
                                    <h2>nature the environment</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                    <a href="" class="custom_btn">Read  More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End of item With Active-->
                    <div class="item">
                        <div class="slider_overlay">
                            <img src="resources/test_img/img2.jpg" alt="...">
                            <div class="carousel-caption">
                                <div class="slider_text">
                                    <h3>Protect</h3>
                                    <h2>nature the environment</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                    <a href="" class="custom_btn">Read  More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End of Item-->
                    <div class="item">
                        <div class="slider_overlay">
                            <img src="resources/test_img/img3.jpg" alt="...">
                            <div class="carousel-caption">
                                <div class="slider_text">
                                    <h3>Protect</h3>
                                    <h2>nature the environment</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                    <a href="" class="custom_btn">Read  More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End of item-->
                </div>
                <!--End of Carousel Inner-->
            </div>
        </section>
        
        
        <!-- 날자 Start - end 위치 !! -->
           <div mbsc-page class="demo-mobile-desktop-usage">
        <div >
                <div class="mbsc-grid">
        <div class="mbsc-form-group">
            <div class="mbsc-row">
                <div class="mbsc-col-12">
                    <input id="demo-mobile-picker-input" class="md-mobile-picker-input" placeholder="Please Select..." />
                    <input type="select" class="md-mobile-picker-input" placeholder="사람 수"/>
                    <div class="md-mobile-picker-input">
                    <select name="subject" id="subject" >
   					<option value="" selected="selected">1명</option>
   					<option value="" selected="selected">2명</option>
   					<option value="" selected="selected">3명</option>
   					<option value="" selected="selected">4명</option>
  					</select>
  					</div>
                </div>
            </div>
        </div>
   </div>
        </div>
    </div>
        
<div id="hotel-myBtnContainer" class="hotel-BtnContainer">
  <button class="hotel-btn active" onclick="filterSelection('all')"> hotel-Show all</button>
  <button class="hotel-btn" onclick="filterSelection('기상천외')"> Cars</button>
  <button class="hotel-btn" onclick="filterSelection('animals')"> Animals</button>
  <button class="hotel-btn" onclick="filterSelection('fruits')"> Fruits</button>
  <button class="hotel-btn" onclick="filterSelection('colors')"> Colors</button>
</div>

<div class="hotel-container">
	<c:forEach var="hotel" items="${hotelList }">
  <div class="hotel-filterDiv ${hotel.hotelView }"><img src="resources/img/hotels/${hotel.hotelName}/${hotel.hotelPhoto}" class="hotel-main-img">${hotel.hotelName}, ${hotel.hotelAddress}</div>
<!--   <div class="hotel-filterDiv colors fruits"><img src="resources/img/hotels/Marietta/Marietta07.jpg"></div>
  <div class="hotel-filterDiv cars">Volvo</div>
  <div class="hotel-filterDiv colors">Red</div>
  <div class="hotel-filterDiv cars animals">Mustang</div>
  <div class="hotel-filterDiv colors">Blue</div>
  <div class="hotel-filterDiv animals">Cat</div>
  <div class="hotel-filterDiv animals">Dog</div>
<div class="hotel-filterDiv fruits">Melon</div>
  <div class="hotel-filterDiv fruits animals">Kiwi</div>
  <div class="hotel-filterDiv fruits">Banana</div>
  <div class="hotel-filterDiv fruits">Lemon</div>
  <div class="hotel-filterDiv animals">Cow</div> -->
  </c:forEach>
</div>
        
        
        
        <!--Start of portfolio-->
        <section id="portfolio" class="text-center">
            <div class="col-md-12">
                <div class="portfolio_title">
                	<!-- 제목 넣을 수 있음. -->
                
                </div>
            </div>
            <!--End of col-md-2-->
            <div class="colum">
                <div class="container">
                    <div class="row">
                        <form action="/">
                            <ul id="portfolio_menu" class="menu portfolio_custom_menu">
                                <li>
                                    <button data-filter="*" class="my_btn btn_active">Show All</button>
                                </li>
                                <li>
                                    <button data-filter=".blue, .black, .green" class="my_btn">environment</button>
                                </li>
                                <li>
                                    <button data-filter=".red, .green" class="my_btn">climate</button>
                                </li>
                                <li>
                                    <button data-filter=".blue, .yellow, .black" class="my_btn">photography</button>
                                </li>
                                <li>
                                    <button data-filter=".black" class="my_btn">species</button>
                                    <!--
                                </li>
                                <li>
                                    <button data-filter=".black" class="my_btn">Black</button>
                                </li>
                                    -->
                            </ul>
                            <!--End of portfolio_menu-->
                        </form>
                        <!--End of Form-->
                    </div>
                    <!--End of row-->
                </div>
                <!--End of container-->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="notes">
                                <div class="note blue">
                                    <div class="img_overlay">
                                        <p>Sun Homes, Dhaka</p>
                                    </div>
                                    <img src="resources/test_img/environment.jpg" alt="">
                                </div>
                                <div class="note red">
                                    <div class="img_overlay">
                                        <p>Sun Homes, Dhaka</p>
                                    </div>
                                    <img src="resources/test_img/portfolio_1.jpg" alt="">
                                </div>
                                <div class="note green">
                                    <div class="img_overlay">
                                        <p>Sun Homes, Dhaka</p>
                                    </div>
                                    <img src="resources/test_img/cliemate.jpg" alt="">
                                </div>
                                <div class="note yellow">
                                    <div class="img_overlay">
                                        <p>Sun Homes, Dhaka</p>
                                    </div>
                                    <img src="resources/test_img/photography.jpg" alt="">
                                </div>
                                <div class="note black">
                                    <div class="img_overlay">
                                        <p>Sun Homes, Dhaka</p>
                                    </div>
                                    <img src="resources/test_img/species.jpg" alt="">
                                </div>
                            </div>
                            <!--End of notes-->
                        </div>
                        <!--End of col-lg-12-->
                    </div>
                    <!--End of row-->
                </div>
                <!--End of container-->
            </div>
            <!--End of colum-->
        </section>
        <!--end of portfolio-->
        
        

        
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>-->
        <script src="resources/test_js/jquery-1.12.3.min.js"></script>

        <!--Counter UP Waypoint-->
        <script src="resources/test_js/waypoints.min.js"></script>
        <!--Counter UP-->
        <script src="resources/test_js/jquery.counterup.min.js"></script>
        
        
        <script src="resources/test_js/isotope/min/scripts-min.js"></script>
        <script src="resources/test_js/isotope/cells-by-row.js"></script>
        <script src="resources/test_js/isotope/isotope.pkgd.min.js"></script>
        <script src="resources/test_js/isotope/packery-mode.pkgd.min.js"></script>
        <script src="resources/test_js/isotope/scripts.js"></script>


        <!--Back To Top-->
        <script src="resources/test_js/backtotop.js"></script>


        <!--JQuery Click to Scroll down with Menu-->
        <script src="resources/test_js/jquery.localScroll.min.js"></script>
        <script src="resources/test_js/jquery.scrollTo.min.js"></script>
        <!--WOW With Animation-->
        <script src="resources/test_js/wow.min.js"></script>
        <script src="resources/test_js/bootstrap.min.js"></script>
        <script src="resources/test_js/main.js"></script>
        <script src="resources/js/mainpage/mainpage.js"></script>
        <script src="resources/js/mainpage-date/mobiscroll.javascript.min.js"></script>
SEXY BODY
</body>

<script>
        
    mobiscroll.setOptions({
locale: mobiscroll.localeEn,  // Specify language like: locale: mobiscroll.localePl or omit setting to use default
theme: 'ios',                 // Specify theme like: theme: 'ios' or omit setting to use default
themeVariant: 'light'         // More info about themeVariant: https://docs.mobiscroll.com/5-22-2/javascript/range#opt-themeVariant
});

var now = new Date(),
week = new Date(now.getFullYear(), now.getMonth(), now.getDate() + 6);

mobiscroll.datepicker('#demo-mobile-picker-input', {
controls: ['calendar'],       // More info about controls: https://docs.mobiscroll.com/5-22-2/javascript/range#opt-controls
select: 'range',              // More info about select: https://docs.mobiscroll.com/5-22-2/javascript/range#methods-select
showRangeLabels: true
});

var instance = mobiscroll.datepicker('#demo-mobile-picker-button', {
controls: ['calendar'],       // More info about controls: https://docs.mobiscroll.com/5-22-2/javascript/range#opt-controls
select: 'range',              // More info about select: https://docs.mobiscroll.com/5-22-2/javascript/range#methods-select
showRangeLabels: true,
showOnClick: false,           // More info about showOnClick: https://docs.mobiscroll.com/5-22-2/javascript/range#opt-showOnClick
showOnFocus: false,           // More info about showOnFocus: https://docs.mobiscroll.com/5-22-2/javascript/range#opt-showOnFocus
});

instance.setVal([now, week]);

mobiscroll.datepicker('#demo-mobile-picker-mobiscroll', {
controls: ['calendar'],       // More info about controls: https://docs.mobiscroll.com/5-22-2/javascript/range#opt-controls
select: 'range',              // More info about select: https://docs.mobiscroll.com/5-22-2/javascript/range#methods-select
showRangeLabels: true
});

var inlineInst = mobiscroll.datepicker('#demo-mobile-picker-inline', {
controls: ['calendar'],       // More info about controls: https://docs.mobiscroll.com/5-22-2/javascript/range#opt-controls
select: 'range',              // More info about select: https://docs.mobiscroll.com/5-22-2/javascript/range#methods-select
showRangeLabels: true,
display: 'inline',            // Specify display mode like: display: 'bottom' or omit setting to use default
});

inlineInst.setVal([now, week]);

document
.getElementById('show-mobile-date-picker')
.addEventListener('click', function () {
    instance.open();
    return false;
});


</script>
</html>