<%@ page import="com.duhacks.blogweb.Model.Blog" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; ISO-8859-1"
         pageEncoding="utf-8" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Encode+Sans+Expanded:wght@400;700&amp;display=swap" rel="stylesheet">

</head>
<style>
    .banner-image{
        background-image: url(https://ilcaffegeopolitico.net/wp-content/uploads/2021/01/ccimage-54e1d5474f5bad14ea898675c6203f78083ed8e45358744d71267b-scaled.jpg);
        background-size: cover;
        position: fixed;
    }
    .body{
        font-family: 'Encode Sans Expanded', sans-serif;
    }
</style>
<body>
<nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3">
    <div class="container">
        <a href="#" class="navbar-brand">Blogger</a>
        <button type = "button" class="navbar-toggler" data-bs-target="#navbarNav" data-bs-toggle="collapse"
                area-controls="navbarNav" area-expands="false" area-lable="toggle Navbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <div class="mx-auto"></div>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a href="" class="nav-link text-white">Home</a>
                </li>
                <li class="nav-item">
                    <a href="/writeBlog" class="nav-link text-white">Write Blog</a>
                </li>
                <li class="nav-item">
                    <a href="" class="nav-link text-white">My Blog</a>
                </li>
                <%
                    if(session.getAttribute("username")==null){
                %>
                <li class="nav-item">
                    <a href="/login" class="nav-link text-white">Login</a>
                </li>
                <%
                }
                else{
                %>
                <li class="nav-item">
                    <a href="/logout" class="nav-link text-white">Logout</a>
                </li>
                <%
                    }
                %>

                <li class="nav-item">
                    <a href="" class="nav-link text-white">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="banner-image w-100 vh-100 d-flex justify-content-center align-items-center">
    <table>
        <tr>
            <td>
                <div class="content text-center">
                    <h1 class="text-dark">My</h1>
                    <h1>Blogs</h1>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    <%
                        List<Blog> blogs = (List<Blog>) session.getAttribute("blogs");
                        for(Blog b: blogs){
                    %>
                    Auther : <p><%=b.getUsername()%></p>
                    Title : <p><%=b.getTitle()%></p>
                    Content : <p><%=b.getContent()%></p>
                    <hr>
                    <%
                        }
                    %>
                </div>
            </td>
        </tr>


        <br>

    </table>
</div>
<script src="js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
    var nav = document.querySelector('nav');

    window.addEventListener('scroll', function () {
        if (window.pageYOffset > 100) {
            nav.classList.add('bg-dark', 'shadow');
        } else {
            nav.classList.remove('bg-dark', 'shadow');
        }
    });
</script>

</body>
</html>