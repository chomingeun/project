<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro|Oswald:300);
 body {
    font: 14px/120%"Source Sans Pro", sans-serif;
    color: #999999;
    transition: all 0.2s;
    perspective: 35em;
    background-image: radial-gradient(at 50% 60%, #8c8f95 0%, #000000 100%);
    background-position: 50% 100%;
}
h1, h2, h3 {
    font-family:"Oswald", "Arial Narrow", sans-serif;
}
.menu_wrapper {
    padding: 1em;
    perspective: 500px;
}
nav {
    width: 230px;
    max-width: 360px;
    margin: 0 auto;
    transform-style: preserve-3d;
    transform: rotateY(20deg) rotateX(36deg) rotateZ(-6deg);
    transition: transform 1s;
}
nav > ul {
    list-style: none;
    padding: 1em;
    transform: translateZ(-100px);
    transform-style: preserve-3d;
    transition: all 0.2s;
}
nav > ul > li {
    margin: 0 0 0.5em 0;
    position: relative;
    color: #222222;
    font-family:"Oswald", "Arial Narrow", sans-serif;
    transition: all 0.2s;
    transform-style: preserve-3d;
    box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.7);
    border-radius: 6px;
    background-color: #ffac05;
    *zoom: 1;
    filter: progid:DXImageTransform.Microsoft.gradient(gradientType=0, startColorstr='#FFFFAC05', endColorstr='#FFD96404');
    background-image: -moz-linear-gradient(top, #ffac05 0%, #d96404 100%);
    background-image: -o-linear-gradient(top, #ffac05 0%, #d96404 100%);
    background-image: -webkit-linear-gradient(top, #ffac05 0%, #d96404 100%);
    background-image: linear-gradient(to bottom, #ffac05 0%, #d96404 100%);
}
nav > ul > li:hover {
    background: white;
    transform: translateZ(16px) rotateY(4deg);
}
nav > ul > li:hover a {
    color: #222222;
}
nav > ul > li:hover ul {
    opacity: 1;
    visibility: visible;
    transform: translateZ(60px) rotateY(-25deg);
}
nav > ul > li:hover ul li {
    margin-left: 0.325em;
    transition: all 0.4s;
}
nav > ul > li a {
    display: block;
    padding: 0.5em;
    min-height: 2.5em;
    line-height: 2.5em;
    color: white;
    font-size: 1.5em;
    text-decoration: none;
    transition: all 0.2s;
}
nav > ul > li a:hover {
    color: #222222;
}
nav > ul > li ul {
    opacity: 0;
    visibility: hidden;
    position: absolute;
    left: 83%;
    top: 0;
    padding-left: 2em;
    min-width: 300px;
    transition: all 0.2s;
    transform: translateZ(-5px) rotateY(-10deg);
}
nav > ul > li ul li {
    display: inline-block;
    width: 45%;
    margin: 0 0 0.325em -3em;
    background: #1f1f1f;
    box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.7);
    transform-style: preserve-3d;
}
nav > ul > li ul li a {
    color: black;
    font-size: 1.325em;
    line-height: 120%;
    background: white;
    border-radius: 6px;
}
nav > ul > li ul li a:hover {
    background: #ff9922;
}
nav > ul > li ul div {
    font-family:"Source Sans Pro", sans-serif;
    color: #dddddd;s
}
</style>
</head>
<body>

<div class="menu_wrapper">
  <nav>
    <ul>
      <li><a href="home.jsp">Home</a></li>
      <li><a href="#">LOGIN</a>
        <ul>
          <li>
			<a href="login.jsp"><h3>login</h3></a>
          </li>
          <li>
			<a href="join.jsp"><h3>join</h3></a>
          </li>
        </ul>
      </li>
      <li>
      <a href="video.jsp"><h3>VIDEO</h3></a>
      </li>
      <li>
	<a href="Directions.jsp"><h3>Directions</h3></a>
      </li>
    </ul>
    
  </nav>
</div>
</body>
</html>