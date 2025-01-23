<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>signup</title>
    <link rel="stylesheet" href="style.css">
</head>
<body class="signpage">
    <form method="post" action="SignUpServlet">
    <div class="signup">
        <div class="log-title">
            <header>Sign Up</header>
        </div>
        <div class="input">
            <input class="box" id="name" name=textName type="text" placeholder="Your Name" required>
        </div>
        <div class="input">
            <input type="email" class="box"  name=Email id="e-id" placeholder="Your Email-Id"  required>
        </div>
        <div class="input">
            <input type="tel" class="box" id="phno"  name=telephone placeholder="Your Phone No" maxlength="10" required>
        </div>
        <div class="input">
            <input type="password" class="box" id="password" name=textPwd placeholder="Create Password" required>
        </div>
        <div>
            <button class="upbtn" type="submit">Signup</button>
        </div>
        <div class="sign-up-page"> 
  				<p>Already have an account?<a href="logn.jsp">Login</a></p> 
		</div>
        
    </div>
    </form>
      
    
</body>
</html>