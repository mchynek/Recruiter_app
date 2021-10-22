<%--
  Created by IntelliJ IDEA.
  User: marta
  Date: 04/10/2021
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<!--Grid Form-->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@include file="headsection.jsp"%>

<body>
<%@include file="header.jsp"%>

<div class="flex flex-1  flex-col md:flex-row lg:flex-row mx-2">
    <div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">

        <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b">
        </div>

        <div class="p-3">
            <form:form method="post" modelAttribute="project" class="w-full" >
                <form:hidden path="id"/>
                <form:hidden path="status"/>
                <form:hidden path="userName"/>
                <div class="flex flex-wrap -mx-3 mb-6">
                    <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                        <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                               for="company">
                            Firma
                        </label>
                        <form:input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-red-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white-500"
                               path="company" type="text" placeholder="Nazwa firmy"/>
                    </div>
                    <div class="w-full md:w-1/2 px-3">
                        <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                               for="name">
                            Nazwa stanowiska
                        </label>
                        <form:input class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                               path="name" type="text" placeholder="Nazwa stanowiska"/>
                    </div>
                </div>
                <div class="flex flex-wrap -mx-3 mb-6">
                    <div class="w-full px-3">
                        <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                               for="start">
                            Data rozpoczęcia
                        </label>
                        <form:input class="appearance-none block w-full bg-grey-200 text-grey-darker border border-grey-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-grey"
                               path="start" type="date"/>
                    </div>
                    <div class="mt-4 items-center justify-between">
                        <button class="px-4 py-1 text-white font-light tracking-wider bg-gray-900 rounded" type="submit">Dodaj</button>

                    </div>
                </div>
                <div class="flex flex-wrap -mx-3 mb-2">



                </div>
            </form:form>
        </div>
    </div>
</div>

<script src="js/main.js"></script>


</body>
<%@include file="footer.jsp"%>
