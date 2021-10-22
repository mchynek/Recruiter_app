<%--
  Created by IntelliJ IDEA.
  User: marta
  Date: 04/10/2021
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<!--Grid Form-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="headsection.jsp"%>

<body>
<%@include file="header.jsp"%>
<div class="mx-auto flex flex-1  flex-col md:flex-row lg:flex-row mx-2">
    <div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">
        <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b">

            <button class="bg-transparent hover:bg-red-500 text-red-700 font-semibold hover:text-white py-2 px-4 border border-red-500hover:border-transparent rounded">
                <a href="/project/add"/>
                Dodaj projekt
            </button>
        </div>
        <div class="p-3">
            <form:form method="get" modelAttribute="projectList"/>
            <table class="table-responsive w-full rounded"
<%--                   align="center" style=" width:1300px; text-align: left;margin-left: auto;margin-right: auto">--%>
               >
                <thead>
                <tr>
                    <th class="border w-1/1 px-4 py-2">Id</th>
                    <th class="border w-1/7 px-4 py-2">Firma</th>
                    <th class="border w-1/7 px-4 py-2">Stanowisko</th>
                    <th class="border w-1/7 px-4 py-2">Status</th>
                    <th class="border w-1/8 px-4 py-2">Kandydaci</th>
                    <th class="border w-1/7 px-4 py-2">Data rozpoczęcia</th>
                    <th class="border w-1/7 px-4 py-2">Data zakończenia</th>
                    <th class="border w-1/8 px-4 py-2">Osoba prowadząca</th>
                    <th class="border w-1/7 px-4 py-2">Akcje</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${projectList}" var="project">
                <tr>
                    <td class="border px-1 py-2">${project.id}</td>
                    <td class="border px-4 py-2">${project.company}</td>
                    <td class="border px-4 py-2">${project.name}</td>
                    <td class="border px-4 py-2">${project.status}</td>
                    <td class="border px-4 py-2">
                        <button class="bg-transparent hover:bg-green-500 text-green-dark font-semibold hover:text-white py-2 px-4 border border-blue hover:border-transparent rounded">
                            <a href="/project/candidate/list?projectId=${project.id}"/>
                            Lista kandydatów
                        </button>
                    </td>
                    <td class="border px-4 py-2">
                            <fmt:formatDate value="${project.start}" pattern="yyyy-MM-dd" /></td>
                    <td class="border px-4 py-2">
                            <fmt:formatDate value="${project.end}" pattern="yyyy-MM-dd" />
                    <td class="border px-4 py-2">${project.userName}</td>
                    <td class="border px-4 py-2">
                        <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white inline-block" href="/project/close?idToClose=${project.id}">
                            <i>Zakończ projekt</i></a>
                        <a href="/project/view?projectId=${project.id}" class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white">
                            <i class="fas fa-eye"></i></a>
                        <a href="/project/edit?idToEdit=${project.id}" class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white inline-block" >
                            <i class="fas fa-edit"></i></a>
                        <a href="/project/delete?idToDelete=${project.id}" class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-red-500 inline-block">
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
<%@include file="footer.jsp"%>
<!--/Grid Form-->
</body>
</html>

