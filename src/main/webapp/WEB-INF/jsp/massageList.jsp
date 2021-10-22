<%--
  Created by IntelliJ IDEA.
  User: marta
  Date: 09/10/2021
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@include file="headsection.jsp"%>

<body>
<%@include file="header.jsp"%>
<main class="bg-white-500 flex-1 p-3 overflow-hidden">
<div class="flex flex-1  flex-col md:flex-row lg:flex-row mx-2">
    <div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">
        <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b">

            <button class="bg-transparent hover:bg-red-500 text-red-700 font-semibold hover:text-white py-2 px-4 border border-red-500hover:border-transparent rounded">
                <a href="<c:url value="/candidate/addMassage?candidateId=${candidateId}"/>">
                    Dodaj wiadomość
                </a>
            </button>
        </div>
        <div class="p-3">

            <div class="mb-2 md:mx-2 lg:mx-2 border-solid border-gray-200 rounded border shadow-sm w-full md:w-1/2 lg:w-1/2">
<%--                <div class="p-3">--%>
                    <form class="flex flex-1  flex-col md:flex-row lg:flex-row mx-2">
                        <input type="hidden" name="massages" value="${massages}">
                        <input type="hidden" name="candidateId" value="${candidateId}">
                    <table class="table-fixed">
                        <thead>
                        <tr>
                            <th class="border-b bg-black text-white w-1/1 px-6 py-2">Id</th>
                            <th class="border-b bg-black text-white w-1/7 px-6 py-2">Wiadomość</th>
                            <th class="border-b bg-black text-white w-1/7 px-4 py-2">Data</th>
                            <th class="border-b bg-black text-white w-1/7 px-6 py-2">Nadawca</th>
                        </tr>
                        </thead>
                        <c:forEach items="${massages}" var="m">
                        <tbody>
                        <tr>
                            <th class="border-b bg-blue-400 text-white px-4 py-2">${m.id}</th>
                            <th class="border-b bg-blue-400 text-white px-4 py-2">${m.contents}</th>
                            <th class="border-b bg-blue-400 text-white px-4 py-2">${m.date}</th>
                            <th class="border-b bg-blue-400 text-white px-4 py-2">${m.username}</th>

                        </tbody>
                        </c:forEach>
                    </table>
                </form>
<%--                </div>--%>

            </div>


        </div>


    </div>
</div>
<!--/Grid Form-->
</main>
<%@include file="footer.jsp"%>
</body>


