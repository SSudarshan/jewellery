<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Defysope Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
  body {
	    background-attachment: scroll;
	    background-clip: border-box;
	    background-color: #563C55;
	    background-image: url("images/blurred.jpg");
	    background-origin: padding-box;
	    background-position: center top;
	    background-repeat: no-repeat;
	    background-size: cover;
	}
	.main {
	    margin: 0 auto;
	    position: relative;
	    width: 90%;
	}
	.form-3 {
	    background: none repeat scroll 0 0 #111111;
	    border: 1px solid #191919;
	    border-radius: 0.4em 0.4em 0.4em 0.4em;
	    box-shadow: 0 0 2px 1px rgba(255, 255, 255, 0.08) inset, 0 16px 10px -8px rgba(0, 0, 0, 0.6);
	    font-family: 'Ubuntu','Lato',sans-serif;
	    font-weight: 400;
	    margin: 150px auto 30px;
	    overflow: hidden;
	    padding: 10px;
	    position: relative;
	    width: 450px;
	}
  
  .form-3 label {
	    color: #DDDDDD;
	    cursor: pointer;
	    float: left;
	    font-size: 12px;
	    font-weight: 700;
	    letter-spacing: 1px;
	    padding-top: 9px;
	    text-indent: 10px;
	    text-shadow: 0 1px 0 #000000;
	    text-transform: uppercase;
	    width: 20%;
	}
	.form-3 input[type="text"], .form-3 input[type="password"] {
	    background: linear-gradient(#1F2124, #27292C) repeat scroll 0 0 transparent;
	    border: 1px solid #000000;
	    border-radius: 3px 3px 3px 3px;
	    box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1);
	    color: #FFFFFF;
	    float: left;
	    font-family: 'Ubuntu','Lato',sans-serif;
	    font-size: 12px;
	    margin-bottom: 10px;
	    padding: 8px 5px;
	    width:70%;
	    
	}
	.form-3 input[type="text"]:hover, .form-3 input[type="password"]:hover, .form-3 label:hover ~ input[type="text"], .form-3 label:hover ~ input[type="password"] {
	    background: none repeat scroll 0 0 #27292C;
	}
	.form-3 input[type="text"]:focus, .form-3 input[type="password"]:focus {
	    background: none repeat scroll 0 0 #494D54;
	    border-color: #51CBEE;
	    box-shadow: 0 0 2px #000000 inset;
	    outline: medium none;
	}
	.form-3 p:nth-child(3), .form-3 p:nth-child(4) {
	    float: left;
	    width: 50%;
	}
	.form-3 label[for="remember"] {
	    display: inline-block;
	    float: none;
	    font-size: 11px;
	    font-weight: 400;
	    letter-spacing: 0;
	    text-indent: 2px;
	    text-transform: capitalize;
	    width: auto;
	}
	.form-3 input[type="checkbox"] {
	    margin-left: 10px;
	    vertical-align: middle;
	}
	.form-3 input[type="submit"] {
	    background: none repeat scroll 0 0 #38A6F0;
	    border: 1px solid rgba(0, 0, 0, 0.4);
	    border-radius: 3px 3px 3px 3px;
	    box-shadow: 0 1px 0 rgba(255, 255, 255, 0.3) inset, 0 10px 10px rgba(255, 255, 255, 0.1) inset;
	    color: white;
	    cursor: pointer;
	    font-family: 'Ubuntu','Lato',sans-serif;
	    font-size: 15px;
	    font-weight: 700;
	    padding: 8px 5px;
	    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.8);
	    width: 100%;
	}
	.form-3 input[type="submit"]:hover {
	    box-shadow: 0 1px 0 rgba(255, 255, 255, 0.6) inset;
	}
	.form-3 input[type="submit"]:active {
	    background: none repeat scroll 0 0 #287DB5;
	    border-color: rgba(0, 0, 0, 0.9);
	    box-shadow: 0 0 3px rgba(0, 0, 0, 0.6) inset;
	}
	.no-boxshadow .form-3 input[type="submit"]:hover {
	    background: none repeat scroll 0 0 #2A92D8;
	}
	.form-3:after {
	    background: -moz-linear-gradient(left center , transparent, #444444, #B6B6B8, #444444, transparent) repeat scroll 0 0 transparent;
	    content: "";
	    height: 1px;
	    left: 20%;
	    position: absolute;
	    top: 0;
	    width: 33%;
	}
	.form-3:before {
	    border-radius: 50% 50% 50% 50%;
	    box-shadow: 0 0 6px 4px #FFFFFF;
	    content: "";
	    height: 5px;
	    left: 34%;
	    position: absolute;
	    top: -7px;
	    width: 8px;
	}
	.form-3 p:nth-child(1):before {
	    background: linear-gradient(50deg, rgba(255, 255, 255, 0.15), transparent) repeat scroll 0 0 transparent;
	    content: "";
	    height: 100px;
	    left: 45px;
	    pointer-events: none;
	    position: absolute;
	    top: 0;
	    transform: rotate(75deg);
	    width: 250px;
	}
	.container > header h1, .container > header h2 {
	    color: #FFFFFF;
	    text-shadow: 0 1px 1px rgba(0, 0, 0, 0.7);
	}
</style>
	

	
		
</head>

<body>
	<section class="main">
	<form class="form-3" method="post" action="login.html">
		<p class="clearfix">
	        <label for="login">Company</label>
	        <input type="text" placeholder="Company" id="Company" name="company">
	    </p>
	    <p class="clearfix">
	        <label for="login">Username</label>
	        <input type="text" placeholder="Username" id="userName" name="userName">
	    </p>
	    
	    <label for="password">Password</label>
	    <input type="password" placeholder="Password" id="password" name="password"> 
	    
	    <p class="clearfix">
	        <input type="submit" value="Sign in" name="submit">
	    </p>       
	</form>&#8203;
</section>
		
	
	<script src="resources/js/jquery-1.8.2.js"></script>
	<script src="resources/bootstrap/bootstrap.min.js"></script>
	<script src="resources/js/bootbox.js"></script>
	
		
</body>
</html>
