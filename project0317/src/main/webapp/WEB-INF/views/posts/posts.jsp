<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Tab Styles Inspiration</title>
		<meta name="description" content="Tab Styles Inspiration: A small collection of styles for tabs" />
		<meta name="keywords" content="tabs, inspiration, web design, css, modern, effects, svg" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="resources/test_css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="resources/test_css/demo.css" />
		<link rel="stylesheet" type="text/css" href="resources/test_css/tabs.css" />
		<link rel="stylesheet" type="text/css" href="resources/test_css/tabstyles.css" />
  		<script src="resources/test_js/modernizr.custom.js"></script>
	</head>
	<body>
		<svg class="hidden">
			<defs>
				<path id="tabshape" d="M80,60C34,53.5,64.417,0,0,0v60H80z"/>
			</defs>
		</svg>
		<div class="container">
			<!-- Top Navigation -->
			<div class="codrops-top clearfix">
				<a class="codrops-icon codrops-icon-prev" href="http://tympanus.net/Tutorials/PagePreloadingEffect/"><span>Previous Demo</span></a>
				<span class="right"><a class="codrops-icon codrops-icon-drop" href="http://tympanus.net/codrops/?p=19559"><span>Back to the Codrops Article</span></a></span>
			</div>
			<header class="codrops-header">
				<h1>Tab Styles Inspiration <span>A small collection of styles for tabs</span></h1>
				<p class="support">Your browser does not support <strong>flexbox</strong>! <br />Please view this demo with a <strong>modern browser</strong>.</p>
			</header>
			<section>
				<div class="tabs tabs-style-bar">
					<nav>
						<ul>
							<li><a href="#section-bar-1" class="icon icon-home"><span>Home</span></a></li>
							<li><a href="#section-bar-2" class="icon icon-box"><span>Archive</span></a></li>
							<li><a href="#section-bar-3" class="icon icon-display"><span>Analytics</span></a></li>
							<li><a href="#section-bar-4" class="icon icon-upload"><span>Upload</span></a></li>
							<li><a href="#section-bar-5" class="icon icon-tools"><span>Settings</span></a></li>
						</ul>
					</nav>
					<div class="content-wrap">
						<section id="section-bar-1"><p>1</p></section>
						<section id="section-bar-2"><p>2</p></section>
						<section id="section-bar-3"><p>3</p></section>
						<section id="section-bar-4"><p>4</p></section>
						<section id="section-bar-5"><p>5</p></section>
					</div><!-- /content -->
				</div><!-- /tabs -->
			</section>
        </div>
        <div id="noticePosts">
            <table class="table">
                <colgroup>
                    <col width="10%">
                    <col width="50%">
                    <col>
                    <col>
                </colgroup>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${list}" var="post">
                        <tr>
                            <td class="center">${post.postId }</td>
                            <td>${post.postTitle}</td>
                            <td class="center">${post.userEmail}</td>
                            <td class="center">${post.postWriteDate }</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <script src="resources/test_js/cbpFWTabs.js"></script>
		<script>
			(function() {

				[].slice.call( document.querySelectorAll( '.tabs' ) ).forEach( function( el ) {
					new CBPFWTabs( el );
				});

			})();
		</script>