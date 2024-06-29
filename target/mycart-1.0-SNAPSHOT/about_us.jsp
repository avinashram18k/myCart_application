<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Responsive About Us Page </title>
     <%@include file="component/common_css_js.jsp" %>
    <style>
        
 body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
        
    </style>
</head>
<body>
 <%@include file="component/navbar.jsp" %>
    <div class="about-section">
  <h1>MyCart </h1>
  <p>Always Low Prices Always MyCart </p>
  <p>We make sure our customers never compromise with quality.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
        <img src="img/zoro1.jpg" alt="Zoro" style="width:100%">
      <div class="container">
        <h2>Roronoa Zoro</h2>
        <p class="title">CEO & Founder</p>
        <p>roronoa18@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="img/luffy.jpg" alt="Luffy" style="width:100%">
      <div class="container">
        <h2>Monkey D Luffy</h2>
        <p class="title">Executive director</p>
        <p>luffy360@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="img/naruto2.jpg" alt="Naruto" style="width:100%;">
      <div class="container">
        <h2>Naruto Uzumaki</h2>
        <p class="title">Deputy Manager</p>
        <p>naruto.uzumaki@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>

</body>
</html>
