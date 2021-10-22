<%--
  Created by IntelliJ IDEA.
  User: marta
  Date: 09/10/2021
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@include file="headsection.jsp"%>

<body>
<%@include file="header.jsp"%>
<div class="flex flex-1  flex-col md:flex-row lg:flex-row mx-2">
    <div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">
        <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b">

            <button class="bg-transparent hover:bg-red-500 text-red-700 font-semibold hover:text-white py-2 px-4 border border-red-500hover:border-transparent rounded">
                <a href="/candidate/add"/>
                Dodaj kandydata
            </button>
        </div>
        <div class="p-3">
            <form:form method="get" modelAttribute="candidateProjectList"/>
            <table class="table-responsive w-full rounded"
            <%--                   align="center" style=" width:1300px; text-align: left;margin-left: auto;margin-right: auto">--%>
            >
                <thead>
                <tr>
                    <th class="border w-1/1 px-4 py-2">Id</th>
                    <th class="border w-1/7 px-4 py-2">Imię</th>
                    <th class="border w-1/7 px-4 py-2">Nazwisko</th>
                    <th class="border w-1/7 px-4 py-2">Status</th>
                    <th class="border w-1/8 px-4 py-2">Telefon</th>
                    <th class="border w-1/7 px-4 py-2">Email</th>
                    <th class="border w-1/7 px-4 py-2">Wiadomości</th>
                    <th class="border w-1/8 px-4 py-2">Stanowisko</th>
                    <th class="border w-1/7 px-4 py-2">Akcje</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${candidateProjectList}" var="candidate">
                    <tr>
                        <td class="border px-1 py-2">${candidate.id}</td>
                        <td class="border px-4 py-2">${candidate.firstName}</td>
                        <td class="border px-4 py-2">${candidate.lastName}</td>
                        <td class="border px-4 py-2">${candidate.status}</td>
                        <td class="border px-4 py-2">${candidate.phone}</td>
                        <td class="border px-4 py-2">${candidate.email}</td>
                        <td class="border px-4 py-2">
                            <button class="bg-transparent hover:bg-green-500 text-green-dark font-semibold hover:text-white py-2 px-4 border border-blue hover:border-transparent rounded">
                                <a href=""/>
                                    <%--                                lista wiadomości--%>
                                Wiadomości
                            </button>
                        </td>
                        <td class="border px-4 py-2">${candidate.position}</td>

                        <td class="border px-4 py-2">
                            <a href="" class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white">
                                <i class="fas fa-eye"></i></a>
                            <a href="/candidate/edit?idToEdit=${candidate.id}" class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white inline-block" >
                                <i class="fas fa-edit"></i></a>
                            <a href="/candidate/deleteFromProject?idToRemove=${candidate.id}" class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-red-500 inline-block">
                                <i class="fas fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>


                </tbody>
            </table>


        </div>

    </div>
</div>
<!--/Grid Form-->

<script src="js/main.js"></script>

</body>
<%@include file="footer.jsp"%>

