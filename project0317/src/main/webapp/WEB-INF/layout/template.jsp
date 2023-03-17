<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Hotel In Earth</title>

            <!--    Google Fonts-->
            <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet'
                type='text/css'>

            <!--Fontawesom-->
            <link rel="stylesheet" href="resources/test_css/font-awesome.min.css">

            <!--Animated CSS-->
            <link rel="stylesheet" type="text/css" href="resources/test_css/animate.min.css">

            <!-- Bootstrap -->
            <link href="resources/test_css/bootstrap.min.css" rel="stylesheet">
            <!--Bootstrap Carousel-->
            <link type="text/css" rel="stylesheet" href="resources/test_css/carousel.css" />

            <link rel="stylesheet" href="resources/test_css/isotope/style.css">

            <!--Main Stylesheet-->
            <link href="resources/test_css/style.css" rel="stylesheet">
            <!--Responsive Framework-->
            <link href="resources/test_css/responsive.css" rel="stylesheet">

            <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
            <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
            <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        </head>

        <body data-spy="scroll" data-target="#header">
            <tiles:insertAttribute name="header"></tiles:insertAttribute>
            <tiles:insertAttribute name="body"></tiles:insertAttribute>
            <tiles:insertAttribute name="footer"></tiles:insertAttribute>
        </body>

        </html>