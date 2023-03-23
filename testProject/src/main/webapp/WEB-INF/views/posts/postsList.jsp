<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
			<!DOCTYPE html>
			<html lang="en" class="no-js">

			<head>
				<meta charset="UTF-8" />
				<meta http-equiv="X-UA-Compatible" content="IE=edge">
				<meta name="viewport" content="width=device-width, initial-scale=1">
				<meta name="description" content="Tab Styles Inspiration: A small collection of styles for tabs" />
				<meta name="keywords" content="tabs, inspiration, web design, css, modern, effects, svg" />
				<meta name="author" content="Codrops" />
				<link rel="stylesheet" type="text/css"
					href="resources/fonts/posts/writeForm/font-awesome-4.2.0/css/font-awesome.min.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/writeForm/demo.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/writeForm/set2.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/writeForm/normalize.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/listForm/accordion.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/listForm/normalize.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/listForm/tabs.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/listForm/tabstyles.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/listForm/style.css" />

				<script src="resources/js/posts/listForm/modernizr.custom.js"></script>
				<script src="resources/js/posts/listForm/moment.min.js"></script>
			</head>

			<body>
				<svg class="hidden">
					<defs>
						<path id="tabshape" d="M80,60C34,53.5,64.417,0,0,0v60H80z" />
					</defs>
				</svg>
				<div class="container">
					<!-- Top Navigation -->
					<section>
						<div class="tabs tabs-style-bar">
							<nav>
								<ul>
									<li><a href="#section-bar-1"><span>공지사항</span></a></li>
									<li><a href="#section-bar-2"><span>자주 묻는 질문</span></a></li>
									<li><a href="#section-bar-3"><span>Q/A</span></a></li>
								</ul>
							</nav>
							<div class="content-wrap">
								<section id="section-bar-1">
									<!-- 공지사항 -->
									<div id="noticePosts">
										<table class="table">
											<colgroup>
												<col>
												<col width="30%">
												<col>
											</colgroup>
											<thead>
												<tr>
													<th>제목</th>
													<th>작성일</th>
												</tr>
											</thead>
											<tbody class=listN>
												<c:forEach items="${notices}" var="post">
													<tr>
														<td><a href="viewPost.do?pid=${post.postId }">${post.postTitle}</a></td>
														<td class="center">
															<fmt:formatDate value="${post.postWriteDate }" type="both"
																pattern="yyyy-MM-dd HH:mm:ss" />
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<ul class="pagination">
											<c:if test="${pageN.prev }">
												<li><a href="postList.do?pageN=${pageN.startPage -1 }">&lt;</a></li>
											</c:if>
											<c:forEach var="i" begin="${pageN.startPage }" end="${pageN.endPage }">
												<c:choose>
													<c:when test="${i == pageN.page}">
														<li><a class="active" href="javascript:getPageList(${i }, 'N')">${i }</a></li>
													</c:when>
													<c:otherwise>
														<li><a href="javascript:getPageList(${i }, 'N');">${i }</a></li>
													</c:otherwise>
												</c:choose>
											</c:forEach>
											<c:if test="${pageN.next }">
												<li><a href="postList.do?pageN=${pageN.endPage + 1 }"> &raquo;</a></li>
											</c:if>
										</ul>
										<!-- End Pagination -->
										<c:if test="${userVO.userAuth == 'M'}">
											<button class="accordion">글쓰기</button>
											<div class="panel">
												<form action="postWrite.do" method="post">
													<span class="input input--yoshiko"> <input class="input__field input__field--yoshiko"
															type="text" id="postTitle" name="title" /> <label
															class="input__label input__label--yoshiko" for="postTitle">
															<span class="input__label-content input__label-content--yoshiko"
																data-content="제목">제목</span>
														</label>
													</span> <br> <span class="input input--yoshiko"> <textarea
															class="input__field input__field--yoshiko" id="postContent" name="content"></textarea>
														<label class="input__label input__label--yoshiko" for="postTitle">
															<span class="input__label-content input__label-content--yoshiko"
																data-content="내용">내용</span>
														</label>
													</span>
													<br>
													<input type="hidden" id="postType" name="postType" value="N">
													<input type="hidden" id="email" name="email" value="${email }">
													<input type="hidden" id="postNextId" name="postNextId" value="${postNextId }">
													<!-- TODO 로그인시스템 만들어지면 내용 고칠것 -->
													<button type="button" class="btn" id="writeBtn">제출</button>
												</form>
											</div>
										</c:if>
									</div>
								</section>
								<section id="section-bar-2">
									<div id="noticePosts">
										<table class="table">
											<colgroup></colgroup>
											<thead>
												<tr>
													<th>제목</th>
												</tr>
											</thead>
											<tbody class=listF>
												<c:forEach items="${faqs}" var="post">
													<tr>
														<td colspan='2'><button type="button" class="collapsible">${post.postTitle}</button>
															<div class="contentFAQ">
																<p>${post.postContent}</p>
															</div>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<ul class="pagination">
											<c:if test="${pageF.prev }">
												<li><a href="postList.do?pageF=${pageF.startPage -1 }">&lt;</a></li>
											</c:if>
											<c:forEach var="i" begin="${pageF.startPage }" end="${pageF.endPage }">
												<c:choose>
													<c:when test="${i == pageF.page}">
														<li><a class="active" href="javascript:getPageList(${i }, 'F')">${i }</a></li>
													</c:when>
													<c:otherwise>
														<li><a href="javascript:getPageList(${i }, 'F');">${i }</a></li>
													</c:otherwise>
												</c:choose>
											</c:forEach>
											<c:if test="${pageF.next }">
												<li><a href="postList.do?pageF=${pageF.endPage + 1 }"> &raquo;</a></li>
											</c:if>
										</ul>
										<!-- End Pagination -->
										<c:if test="${userVO.userAuth == 'M'}">
											<button class="accordion">글쓰기</button>
											<div class="panel">
												<form action="postWrite.do" method="post">
													<span class="input input--yoshiko"> <input class="input__field input__field--yoshiko"
															type="text" id="postTitle" name="title" /> <label
															class="input__label input__label--yoshiko" for="postTitle">
															<span class="input__label-content input__label-content--yoshiko"
																data-content="제목">제목</span>
														</label>
													</span> <br> <span class="input input--yoshiko"> <textarea
															class="input__field input__field--yoshiko" id="postContent" name="content"></textarea>
														<label class="input__label input__label--yoshiko" for="postTitle">
															<span class="input__label-content input__label-content--yoshiko"
																data-content="내용">내용</span>
														</label>
													</span>
													<br>
													<input type="hidden" id="postType" name="postType" value="F">
													<input type="hidden" id="email" name="email" value="${email }">
													<input type="hidden" id="postNextId" name="postNextId" value="${postNextId }">
													<button type="button" class="btn" id="writeBtn">제출</button>
												</form>
											</div>
										</c:if>
									</div>
								</section>
								<section id="section-bar-3">
									<div id="noticePosts">
										<table class="table">
											<colgroup>
												<col>
												<col width="30%">
												<col>
											</colgroup>
											<thead>
												<tr>
													<th>제목</th>
													<th>작성일</th>
												</tr>
											</thead>
											<tbody class="listQ">
												<c:forEach items="${questions}" var="post">
													<tr>
														<td><a href="viewPost.do?pid=${post.postId }">${post.postTitle}
																<c:if test="${post.postResponse == 'Y'}"><span class="responseY">답변완료</span></c:if>
															</a></td>
														<td class="center">
															<fmt:formatDate value="${post.postWriteDate }" type="both"
																pattern="yyyy-MM-dd HH:mm:ss" />
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<!-- Start Pagination -->
										<ul class="pagination">
											<c:if test="${pageQ.prev }">
												<li><a href="postList.do?pageQ=${pageQ.startPage -1 }">&lt;</a></li>
											</c:if>
											<c:forEach var="i" begin="${pageQ.startPage }" end="${pageQ.endPage }">
												<c:choose>
													<c:when test="${i == pageQ.page}">
														<li><a class="active" href="javascript:getPageList(${i }, 'Q')">${i }</a></li>
													</c:when>
													<c:otherwise>
														<li><a href="javascript:getPageList(${i }, 'Q');">${i }</a></li>
													</c:otherwise>
												</c:choose>
											</c:forEach>
											<c:if test="${pageQ.next }">
												<li><a href="postList.do?pageQ=${pageQ.endPage + 1 }"> &raquo;</a></li>
											</c:if>
										</ul>
										<!-- End Pagination -->
										<c:if test="${userVO != null }">
											<button class="accordion">글쓰기</button>
											<div class="panel">
												<form action="postWrite.do" method="post">
													<span class="input input--yoshiko"> <input class="input__field input__field--yoshiko"
															type="text" id="postTitle" name="title" /> <label
															class="input__label input__label--yoshiko" for="postTitle">
															<span class="input__label-content input__label-content--yoshiko"
																data-content="제목">제목</span>
														</label>
													</span> <br> <span class="input input--yoshiko"> <textarea
															class="input__field input__field--yoshiko" id="postContent" name="content"></textarea>
														<label class="input__label input__label--yoshiko" for="postTitle">
															<span class="input__label-content input__label-content--yoshiko"
																data-content="내용">내용</span>
														</label>
													</span>
													<br>
													<input type="hidden" id="postType" name="postType" value="Q">
													<input type="hidden" id="email" name="email" value="${email }">
													<input type="hidden" id="postNextId" name="postNextId" value="${postNextId }">
													<button type="button" class="btn" id="writeBtn">제출</button>
												</form>
											</div>
										</c:if>
									</div>
								</section>
							</div>
							<!-- /content -->
						</div>
						<!-- /tabs -->
					</section>
				</div>

				<script src="resources/test_js/cbpFWTabs.js"></script>
				<script src="resources/js/posts/listForm/classie.js"></script>
				<script src="resources/js/posts/listForm/script.js"></script>
				<script>

				</script>