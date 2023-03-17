<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<style>
				th {
					background-color: cadetblue;
				}

				.mod {
					background-color: red;
					color: white;
				}

				.accordion {
					background-color: #eee;
					color: #444;
					cursor: pointer;
					padding: 18px;
					width: 100%;
					text-align: left;
					border: none;
					outline: none;
					transition: 0.4s;
				}

				/* Add a background color to the button if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */
				.active,
				.accordion:hover {
					background-color: #ccc;
				}

				/* Style the accordion panel. Note: hidden by default */
				.panel {
					padding: 0 18px;
					background-color: white;
					display: none;
					overflow: hidden;
				}

				.addBtn {
					margin-left: 140px;
				}

				/*-------------------------------------모달----------------------------------------*/
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
					background: rgba(69, 139, 197, 0.70);
					box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
					backdrop-filter: blur(13.5px);
					-webkit-backdrop-filter: blur(13.5px);
					border-radius: 10px;
					border: 1px solid rgba(255, 255, 255, 0.18);
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
					color: white;

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
					color: white;
				}

				#modal .content {
					margin-top: 20px;
					padding: 0px 10px;
					text-shadow: 1px 1px 2px gray;
					color: white;
				}
			</style>
			<meta charset="UTF-8">
			<title>hotel in earth 관리자 페이지</title>
		</head>

		<body>
			<h1>관리자 페이지</h1>
			<p>[호텔 관리]</p>

			<button class="accordion">호텔추가</button>
			<div class="panel">
				<form action="manageHotelAdd.do">
					사진: <input type="text" name="hotelPhoto"><br>
					ID: <input type="text" name="hotelId"><br>
					위치: <input type="text" name="hotelLocation"><br>
					호텔명: <input type="text" name="hotelName"><br>
					전화번호: <input type="text" name="hotelTel"><br>
					서비스: <textarea cols="20" rows="3" name="hotelService"></textarea> <br>
					전망: <input type="text" name="hotelView"><br>
					주소: <input type="text" name="hotelAddress"><br>
					체크인: <input type="text" name="hotelCheckIn"><br>
					체크아웃: <input type="text" name="hotelCheckOut"><br>
					<button class="addBtn" type="submit">추가하기</button>
				</form>
			</div>
			<table>
				<thead>

					<tr>
						<th>사진</th>
						<th>ID</th>
						<th>위치</th>
						<th>호텔명</th>
						<th>전화번호</th>
						<th>서비스</th>
						<th>전망</th>
						<th>별점</th>
						<th>주소</th>
						<th>체크인</th>
						<th>체크아웃</th>
						<th>찜목록</th>
						<th class="mod">수정하기</th>
					</tr>
				</thead>
				<c:forEach items="${managehotellist }" var="hotel">
					<tr>
						<td>${hotel.hotelPhoto }</td>
						<td>${hotel.hotelId }</td>
						<td>${hotel.hotelLocation }</td>
						<td>${hotel.hotelName }</td>
						<td>${hotel.hotelTel }</td>
						<td>${hotel.hotelService }</td>
						<td>${hotel.hotelView }</td>
						<td>${hotel.hotelRate }</td>
						<td>${hotel.hotelAddress }</td>
						<td>${hotel.hotelCheckIn }</td>
						<td>${hotel.hotelCheckOut }</td>
						<td>${hotel.hotelLike }</td>
						<td><button id="btn-modal">호텔정보수정</button></td>
					</tr>

				</c:forEach>

			</table>
			<!-- ===================================모달====================================== -->
			<div id="container">


				<div id="lorem-ipsum"></div>
			</div>
			<div id="modal" class="modal-overlay">
				<div class="modal-window">
					<div class="title">
						<h2>모달</h2>
					</div>
					<div class="close-area">X</div>
					<div class="content">
						<p>가나다라마바사 아자차카타파하</p>
						<p>가나다라마바사 아자차카타파하</p>
						<p>가나다라마바사 아자차카타파하</p>
						<p>가나다라마바사 아자차카타파하</p>

					</div>
				</div>
			</div>

			<script>
				var acc = document.getElementsByClassName("accordion");
				var i;

				for (i = 0; i < acc.length; i++) {
					acc[i].addEventListener("click", function () {
						/* Toggle between adding and removing the "active" class,
						to highlight the button that controls the panel */
						this.classList.toggle("active");

						/* Toggle between hiding and showing the active panel */
						var panel = this.nextElementSibling;
						if (panel.style.display === "block") {
							panel.style.display = "none";
						} else {
							panel.style.display = "block";
						}
					});
				}




				/*------------------모달---------------------*/
				const loremIpsum = document.getElementById("lorem-ipsum")
				fetch("https://baconipsum.com/api/?type=all-meat&paras=200&format=html")
					.then(response => response.text())

				const modal = document.getElementById("modal")
				const btnModal = document.getElementById("btn-modal")
				let btnModals = document.querySelectorAll('#btn-modal');
					.forEach(ele => {
					ele.addEventListener("click", e => {
						modal.style.display = "flex"
					})
				})
				/*btnModal.addEventListener("click", e => {
						modal.style.display = "flex"
				})*/
				const closeBtn = modal.querySelector(".close-area")
				closeBtn.addEventListener("click", e => {
					modal.style.display = "none"
				})
				modal.addEventListener("click", e => {
					const evTarget = e.target
					if (evTarget.classList.contains("modal-overlay")) {
						modal.style.display = "none"
					}
				})
				window.addEventListener("keyup", e => {
					if (modal.style.display === "flex" && e.key === "Escape") {
						modal.style.display = "none"
					}
				})
				
				$(document).ready(function() {     
        	$('#modifylist').on('show.bs.modal', function(event) {          
        		hotelPhoto = $(event.relatedTarget).data('hotelPhoto');
            
        });
    });
			</script>
		</body>



		</html>