<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="resources/css/mainpage/mobiscroll.javascript.min.css">
<script src="resources/js/mainpage/mobiscroll.javascript.min.js"></script> -->

<!-- Jquery 페이지 ! 여차하면 즉결 처형하라 -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script>
	$( function() {
		var dateFormat = "mm/dd/yy",
			from = $( "#from" )
				.datepicker({
					defaultDate: "+1w",
					changeMonth: true,
					numberOfMonths: 3
				})
				.on( "change", function() {
					to.datepicker( "option", "minDate", getDate( this ) );
				}),
			to = $( "#to" ).datepicker({
				defaultDate: "+1w",
				changeMonth: true,
				numberOfMonths: 3
			})
			.on( "change", function() {
				from.datepicker( "option", "maxDate", getDate( this ) );
			});

		function getDate( element ) {
			var date;
			try {
				date = $.datepicker.parseDate( dateFormat, element.value );
			} catch( error ) {
				date = null;
			}

			return date;
		}
	} );
	</script>

<style>
    .hotel-info-container {
      font-family: Arial;
      margin: 0 auto;
      width: 1350px;
      /* border: #222 solid 1px; */
      
    }
    
    hr{
        border: 1px solid black;
        opacity: 0.5;
    }
    
    
    
    * {
      box-sizing: border-box;
    }
    
    .hotel-info-container img {
      vertical-align: middle;
    }
    
    .info-title{
        margin: 0 auto;
        width: 1350px;
        
    }
    
    /* Position the image container (needed to position the left and right arrows) */
    .info-container {
        position: relative;
      width: 1350px;
      height: 1000px;
      margin: 0 auto;
      text-align: center;
      margin-bottom: 30px;
    }
    
    
    .info-container img{
        float: left;
        width: 1080px;
      height: 1000px;
    }
    
    /* Hide the images by default */
    .mySlides {
        
      display: none;
    }
    
    /* Add a pointer when hovering over the thumbnail images */
    .cursor {
      cursor: pointer;
    }
    
    
    
    /* Position the "next button" to the right */
    .next {
      right: 0;
      border-radius: 3px 0 0 3px;
    }
    
    /* On hover, add a black background color with a little bit see-through */
    
    
    /* Number text (1/3 etc) */
    .numbertext {
      color: #f2f2f2;
      font-size: 12px;
      padding: 8px 12px;
      position: absolute;
      top: 0;
    }
    
    /* Container for image text */
    .row{
        float: left;
        width: 270;
        height: 1000px;
    }
    
    .row img{
        width: 270px;
        height: 200px;
    }
    
    .row:after {
      content: "";
      display: table;
      clear: both;
    }
    
    /* Six columns side by side */
    /* .column {
      float: left;
      
    } */
    
    /* Add a transparency effect for thumnbail images */
    .demo {
      opacity: 0.6;
    }
    
    .active,
    .demo:hover {
      opacity: 1;
    }
    /* .container img{
        width: 1500px;
        height: 800px;
    
    } */
    
    /* text area 입니다 ! */
    .into-text-area{
        margin: 70px 0px;
        width: 1350px;
        overflow: hidden;
        
    }
    
    .info-text{
        margin-left: 20px;
        float: left;
        width: 800px;
        /* border: red 1px solid; */
        font-size: 25px;
        
    }

    /* info중 긴거 */
    .long-info{
        height: 250px;
        width: 600px;
        margin-left: 40px;
        overflow: scroll;
    }
    
    .calendar{
        float: right;
        margin-right: 30px;
        width: 430px;
        border: 1px solid gray;
        border-radius: 1em;
        box-shadow: 5px 5px 5px gray;
        font-size: 25px;
        text-align: center;
    }

    /* 버튼 */

    button.reservation{
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        
        margin: 10px 0;
        
        padding: 0.5rem 1rem;

        font-family: "Noto Sans KR", sans-serif;
        font-size: 30px;
        font-weight: 400;
        color: white;
        text-align: center;
        text-decoration: none;

        display: inline-block;
        width: 300px;
        height: 84px;

        border: none;
        border-radius: 0.8em;
        box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);

        cursor: pointer;

        transition: 0.5s;
        
    }
    button.reservation:active,
    button.reservation:hover,
    button.reservation:focus {
    background: var(--button-hover-bg-color);
    outline: 0;
    }
    .calendar button:disabled {
    opacity: 0.5;
    }

    button{
        background: var(--button-bg-color);
        color: var(--button-color)
    }
    button{
        --button-hover-bg-color: #5dd036 ;
        --button-bg-color: #5fb342;
    }
    
    
    /* 구글Maps 관련! 관계자외 접근금지 !!!! */
    #map {
    float: left;
      margin-top: 30px;
      width: 100%;
      height: 550px;
    }
    
     /* 캘린더 피커 작성 */
    /* input.md-mobile-picker-input {
        color: initial;
        width: 100%;
        padding: 10px;
        margin: 6px 0 12px 0;
        border: 1px solid #ccc;
        border-radius: 0;
        font-family: arial, verdana, sans-serif;
        font-size: 14px;
        box-sizing: border-box;
        -webkit-appearance: none;
    } */

    /* 캘린더 영역 ! */
    #from, #to{
      width: 100%;
      height: 50%;
      border: none;
      font-size: 18px;
    }
    .check-date-picker{
      font-size: 18px;
      width: 320px;
      height: 90px;
      border: #5dd036 1px solid;
      border-radius: 0.8em;
      margin: 0 auto;
      
    }
    .check-date-picker{
      line-height: 0px;
    }
    .check-in{
      width: 160px;
      height: 100%;
      float: left;
      border-right: #5dd036 1px solid;
    }
    .check-out{
      width: 155px;
      height: 100%;
      float: left;
    }

    
    </style>
</head>
<body>

<div class="hotel-info-container">
    <div class="info-title">
        <h1>${hotelInfo.hotelName}, ${hotelInfo.hotelAddress}</h1>
        
    </div>
        
    <div class="info-container">
        
    <div class="mySlides">
        <div class="numbertext">1 / 5</div>
        <img src="resources/img/hotels/${hotelInfo.hotelName}/${hotelPhoto[0]}">
    </div>

    <div class="mySlides">
        <div class="numbertext">2 / 5</div>
        <img src="resources/img/hotels/${hotelInfo.hotelName}/${hotelPhoto[1]}" >
    </div>

    <div class="mySlides">
        <div class="numbertext">3 / 5</div>
        <img src="resources/img/hotels/${hotelInfo.hotelName}/${hotelPhoto[2]}" >
    </div>
        
    <div class="mySlides">
        <div class="numbertext">4 / 5</div>
        <img src="resources/img/hotels/${hotelInfo.hotelName}/${hotelPhoto[3]}" >
    </div>

    <div class="mySlides">
        <div class="numbertext">5 / 5</div>
        <img src="resources/img/hotels/${hotelInfo.hotelName}/${hotelPhoto[4]}">
    </div>
    
    
    <div class="row">
        <div class="column">
        <img class="demo cursor" src="resources/img/hotels/${hotelInfo.hotelName}/${hotelPhoto[0]}" onclick="currentSlide(1)" alt="The Woods">
        </div>
        <div class="column">
        <img class="demo cursor" src="resources/img/hotels/${hotelInfo.hotelName}/${hotelPhoto[1]}" onclick="currentSlide(2)" alt="Cinque Terre">
        </div>
        <div class="column">
        <img class="demo cursor" src="resources/img/hotels/${hotelInfo.hotelName}/${hotelPhoto[2]}" onclick="currentSlide(3)" alt="Mountains and fjords">
        </div>
        <div class="column">
        <img class="demo cursor" src="resources/img/hotels/${hotelInfo.hotelName}/${hotelPhoto[3]}" onclick="currentSlide(4)" alt="Northern Lights">
        </div>
        <div class="column">
        <img class="demo cursor" src="resources/img/hotels/${hotelInfo.hotelName}/${hotelPhoto[4]}" onclick="currentSlide(5)" alt="Nature and sunrise">
        </div>    
    </div>
    </div>

    <div class="into-text-area">

        <div class="info-text">

            <p><b style="font-size: 40px;">${hotelInfo.hostName} 님이 호스팅하는 펜션</b><br>
                최대 인원 6명·침실 3개·침대 3개·욕실 3개</p>

            <hr>
            <br/><b style="font-size: 40px;">업무 전용 공간</b><br>와이파이를 갖추고 업무에 적합한 개인실입니다.<br>
            <br/><b style="font-size: 40px;">셀프 체크인</b><br>키패드를 이용해 체크인하세요.
            <br/><p><b style="font-size: 40px;">무료 주차 혜택을 누리세요</b><br>해당 지역에서 무료 주차가 가능한 몇 안 되는 숙소 중 하나입니다.</p>
            <br/>객실전망,전경

            <hr>
            <br/><p class="long-info">${hotelInfo.hotelMemo}</p>
            더보기 칸 만들겨<hr>
            
            <br/><b style="font-size: 40px;">숙소 편의시설 (hotel_service)</b><br>정원 전망<br>산 전망<br>호수나 강과 인접<br>주방<br>무선 인터넷<br>
                
            <hr>
            <b style="font-size: 30px;"> CHECK &nbsp&nbspIN &nbsp&nbsp: 16:00</b><br>
            <b style="font-size: 30px;"> CHECK OUT : 10:00</b>
            
            <hr>

            <br/>전화번호, 객실주소
            <br/>체크 인/아웃 시간
           
            <br/>

        </div>

        <div class="calendar">
            <br><p style="margin-right:80px ;"><b style="font-size: 30px;">￦${hotelInfo.hotelPrice}</b> /박</p>
            <br><div style="margin-right:200px ;">★4.0</div>
            <br><br>
           <br>

           <div class="check-date-picker">
            <div class="check-in" >
              <label for="from"><p>Check IN</p></label>
              <input type="text" id="from" name="from">
            </div>
            <div class="check-out">
              <label for="to"><p>Check OUT</p></label>
              <input type="text" id="to" name="to">
            </div>
          </div>
            <!-- <div style="height:100%">
              <div class="mbsc-grid">
                <div class="mbsc-row">
                    <div class="mbsc-col-12">
                        <input id="demo-mobile-picker-input" class="md-mobile-picker-input" placeholder="Please Select..." />
                    </div>
                  </div>
                </div>
             </div> -->
            <button class="reservation"><b>예약하기</b></button>
            <p>예약 확정 전에는 요금이 <br>청구되지 않습니다.</p>
        
        </div>
        


        
        <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
        
        <link rel="stylesheet" type="text/css" href="./style.css" />
        <script type="module" src="./index.js"></script>
    

        <div id="map"></div>
        
    </div>
</div>   <!-- hotel-info-container -->




<script>
let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("demo");
  
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  
}
</script>

<!-- 구글 Maps 구역 ! 관계자외 접근금지!!! -->

<script
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA1_svzfJy0-Fske1vs4OlE21pnfoW43Gw&callback=initMap&v=weekly"
defer
></script>

<script>

function initMap() {
  const myLatLng = { lat: -34.397, lng: 150.644 }
  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 12,
    center: myLatLng,
  });

  new google.maps.Marker({
    position: myLatLng,
    map,
    title: "Hello World!",
  });
}

window.initMap = initMap;

</script>


<!-- 캘린더 피커 작성 -->
<script>
   
    
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
  
  // document
  //     .getElementById('show-mobile-date-picker')
  //     .addEventListener('click', function () {
  //         instance.open();
  //         return false;
  //     });
  </script>

<script>
//예약하기 버튼 클릭시 폼
  document.querySelector('.reservation').addEventListener('click', nextpage);

  var cast = {
    "이름" : "${hotelInfo.hostName}"
  };
  localStorage.setItem("cast" , JSON.stringify(cast));
  function nextpage(e){
    console.log(e + "클릭되었음")
    window.location.href = "purchasePageForm.do";
  }
</script>
</body>
</html>