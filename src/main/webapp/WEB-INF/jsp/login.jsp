<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@include file="headsection.jsp"%>

<body class="h-screen font-sans login bg-cover">
<%@include file="header.jsp"%>
<style>
    .login{
        background: url('href="<c:url value="../../resources/files/login-new.jpeg" />')
    }
</style>

<div class="container mx-auto h-full flex flex-1 justify-center items-center">
    <div class="w-full max-w-lg">
        <div class="leading-loose">
            <form:form class="max-w-xl m-4 p-10 bg-white rounded shadow-xl" method="post" modelAttribute="user">
                <p class="text-gray-800 font-medium text-center text-lg font-bold">Login</p>
                <div class="">
                   <form:hidden path="id"/>
                    <label class="block text-sm text-gray-00" for="email" >E-mail</label>
                    <form:input class="w-full px-5 py-1 text-gray-700 bg-gray-200 rounded" path="email" type="email" required="" aria-label="email"/>
                </div>
                <div class="mt-2">
                    <label class="block text-sm text-gray-600" for="password">Password</label>
                    <form:input class="w-full px-5  py-1 text-gray-700 bg-gray-200 rounded" path="password" name="password" type="password" required=""  aria-label="password"/>
                </div>
                <div class="mt-4 items-center justify-between">
                    <button class="px-4 py-1 text-white font-light tracking-wider bg-gray-900 rounded" type="submit">Login</button>
                    <a class="inline-block right-0 align-baseline  font-bold text-sm text-500 hover:text-blue-800" href="#">
                        Forgot Password?
                    </a>
                </div>
                <a class="inline-block right-0 align-baseline font-bold text-sm text-500 hover:text-blue-800" href="/register">
                    Not registered ?
                </a>
            </form:form>
        </div>
    </div>
</div>
</body>