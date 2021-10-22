<%--
  Created by IntelliJ IDEA.
  User: marta
  Date: 09/10/2021
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<!--Underline form-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@include file="headsection.jsp" %>

<body>
<%@include file="header.jsp" %>
<div class="flex flex-1 flex-col md:flex-row lg:flex-row mx-2">
<div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">
<div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b">

    <button class="bg-transparent hover:bg-red-500 text-red-700 font-semibold hover:text-white py-2 px-4 border border-red-500hover:border-transparent rounded">
        <a href="/project/add"></a>
        Dodaj projekt
    </button>
</div>
<div class="p-3">
<div class="mb-2 md:mx-2 lg:mx-2 border-solid border-gray-200 rounded border shadow-sm w-full md:w-1/2 lg:w-1/2">
<div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b">
    Wiadomości
</div>

<div class="p-3" mx-auto>
<form:form method="post" modelAttribute="massage" class="w-full">
    <form:hidden path="date"/>
    <form:hidden path="username"/>
    <div class="flex flex-wrap -mx-3 mb-6">
    <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
    <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
    for="contents">
    Wiadomość
    </label>
    <form:input
            class="appearance-none block w-full bg-gray-200 text-gray-700 border border-red-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white-500"
            path="contents" type="text" placeholder="Wiadomość"/>
    </div>
    <div class="mt-4 items-center justify-between">
    <button class="px-4 py-1 text-white font-light tracking-wider bg-gray-900 rounded" type="submit">Dodaj</button>

    </div>
    </div>
    </form:form>
    <!--/Grid Form-->
    <%@include file="footer.jsp" %>
    </body>
</html>
