<%@ page language="java" contentType="text/html; ISO-8859-1"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>Responsive Transparent Login Form Using HTML & CSS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
          integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
          crossorigin="anonymous" />
    <link rel="stylesheet" href="style.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            user-select: none;
            font-family: 'Poppins', sans-serif;
        }

        .bg-img {
            background: url("images/download.jpg");
            height: 100vh;
            background-size: cover;
            background-position: center;
        }

        .bg-img:after {
            position: absolute;
            content: "";
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background: rgba(0, 0, 0, 0.7);
        }

        .content {
            position: absolute;
            top: 50%;
            left: 50%;
            z-index: 999;
            text-align: center;
            padding: 60px 32px;
            width: 370px;
            transform: translate(-50%, -50%);
            background: rgba(255, 255, 255, 0.04);
            box-shadow: -1px 4px 28px 0px rgba(0, 0, 0, 0.75);
        }

        .content header {
            color: white;
            font-size: 33px;
            font-weight: 600;
            margin: 0 0 35px 0;
        }

        .field {
            position: relative;
            height: 45px;
            width: 100%;
            display: flex;
            background: rgba(255, 255, 255, 0.94);
        }

        .field span {
            color: #222;
            width: 40px;
            line-height: 45px;
        }

        .field input {
            height: 100%;
            width: 100%;
            background: transparent;
            border: none;
            outline: none;
            color: #222;
            font-size: 16px;
        }

        .space {
            margin-top: 16px;
        }

        .show {
            position: absolute;
            right: 13px;
            font-size: 13px;
            font-weight: 700;
            color: #222;
            display: none;
            cursor: pointer;
        }

        .pass-key:valid~.show {
            display: block;
        }

        .pass {
            text-align: left;
            margin: 10px 0;
        }

        .pass a {
            color: white;
            text-decoration: none;
        }

        .pass:hover a {
            text-decoration: underline;
        }

        .field input[type="submit"] {
            background: #3498db;
            border: 1px solid #2691d9;
            color: white;
            font-size: 18px;
            letter-spacing: 1px;
            font-weight: 600;
            cursor: pointer;
        }

        .field input[type="submit"]:hover {
            background: #2691d9;
        }

        .login {
            color: white;
            margin: 20px 0;
        }

        .links {
            display: flex;
            cursor: pointer;
            color: white;
            margin: 0 0 20px 0;
        }

        .facebook,
        .instagram {
            width: 100%;
            height: 45px;
            line-height: 45px;
            margin-left: 10px;
        }

        .facebook {
            margin-left: 0;
            background: #4267b2;
            border: 1px solid #3e61a8;
        }

        .instagram {
            background: #e1306c;
            border: 1px solid #df2060;
        }

        .facebook:hover {
            background: #3e61a8;
        }

        .instagram:hover {
            background: #df2060;
        }

        .links i {
            font-size: 17px;
        }

        i span {
            margin-left: 8px;
            font-weight: 500;
            letter-spacing: 1px;
            font-size: 16px;
        }

        .signup {
            font-size: 15px;
            color: white;
        }

        .signup a {
            color: #3498db;
            text-decoration: none;
        }

        .signup a:hover {
            text-decoration: underline;
        }

        .Login_in_Signup{
            color: white;
        }

        .Login_in_Signup a{
            color: lightblue;
        }
    </style>
</head>

<body>

<div class="bg-img">
    <div class="content">
        <header>Sign Up Form</header>
        <form action="/validateSignup" method="post">
            <div class="field">
                <span class="fa fa-user-circle" style="font-size:22px"></span>
                <input type="text" required placeholder="Username" name="username">
            </div>


            <div class="field space">
                <span class="fa fa-mail-bulk"></span>
                <input type="text" required placeholder="Email" name="email">
            </div>

            <div class="field space">
                <span class="fa fa-phone"></span>
                <input type="text" required placeholder="Phone Number" name="number">
            </div>

            <div class="field space">
                <span class="fa fa-lock"></span>
                <input type="password" class="pass-key" required placeholder="Password" name="password">
                <span class="show">SHOW</span>
            </div>

            <div class="field space">
                <span class="fa fa-lock"></span>
                <input type="password" class="conpas" required placeholder="Confirm Password">
                <div style="margin-top: 7px;" id="CheckPasswordMatch"></div>
            </div>

            <br>

            <div class="field">
                <input type="submit" value="Sign Up">
                <a href="index.html"></a>
            </div>
        </form>
        <br>
        <div class="Login_in_Signup">already Have a Account??
            <a href="login">Login Now</a>
        </div>
    </div>
</div>
<script type="text/javascript" src="main.js"></script>
</body>

</html>