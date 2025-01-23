<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <form action="LoginServlet" method=post>
        <div class="login-box">
            <div class="login-title">
                <header>Login</header>
            </div>
            <div class="input">
                    <input type="text" name=textName id="name" class="box" placeholder="Enter the Username" autocomplete="off" required>
            </div>
            <div class="input">
                    <input type="text" id="password" name=textPwd class="box" placeholder="Enter the Password" autocomplete="off" required>
            </div>
            <div class="forgot">
                <section>
                    <input type="checkbox" id="check">
                    <label for="check">Remember me</label>
                </section>
                <section>
                    <a href="#">Forgot Password?</a>
                </section>
            </div>
            <div>
                <button class="upbtn">Login</button>
            </div>
			<div class="sign-up-page"> 
  				<p>Don't have account? <a href="signup.jsp">Sign Up</a></p> 
			</div>
        </div>
    </form>
</body>
</html>