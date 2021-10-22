<%--
  Created by IntelliJ IDEA.
  User: marta
  Date: 09/10/2021
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@include file="headsection.jsp" %>

<body>
<%@include file="header.jsp" %>
<div class="mx-auto flex flex-1  flex-col md:flex-row lg:flex-row mx-2">
    <div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">
        <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b">

        </div>
        <div class="p-3">
            <form>
                <input type="hidden" name="idToAdd" value="${idToAdd}">
                <input type="hidden" value="${project.id}">
                <%--                <form:hidden path="id"/>--%>
                <%--                <form:hidden path="birthDate"/>--%>
                <%--                <form:hidden path="company"/>--%>
                <%--                <form:hidden path="consentFuture"/>--%>
                <%--                <form:hidden path="consentProject"/>--%>
                <%--                <form:hidden path="edition"/>--%>
                <%--                <form:hidden path="education"/>--%>
                <%--                <form:hidden path="email"/>--%>
                <%--                <form:hidden path="firstName"/>--%>
                <%--                <form:hidden path="lastName"/>--%>
                <%--                <form:hidden path="phone"/>--%>
                <%--                <form:hidden path="position"/>--%>
                <%--                <form:hidden path="registration"/>--%>
                <%--                <form:hidden path="status"/>--%>
                <%--                <form:hidden path="massages"/>--%>
                <%--                <form:hidden path="language"/>--%>
                <table class="table-responsive w-full rounded">
                    <thead>
                    <tr>
                        <th class="border w-8/12 px-4 py-2">Nazwa</th>
                        <th class="border w-8/12 px-4 py-2">Firma</th>
                        <th class="border w-4/12 px-4 py-2">Prowadzący</th>
                        <th class="border w-4/12 px-4 py-2">Akcja</th>
                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="project" items="${allList}">
                        <tr>
                            <td class="border px-1 py-2">
                                    ${project.name}
                            </td>
                            <td class="border px-1 py-2">
                                    ${project.company}
                            </td>
                            <td class="border px-1 py-2">
                                    ${project.userName}
                            </td>
                            <td class="border px-1 py-2">
                                <button class="bg-transparent hover:bg-green-500 text-green-dark font-semibold hover:text-white py-2 px-4 border border-blue hover:border-transparent rounded">
                                    <a href="<c:url value="/candidate/addToProjectPost?idProject=${project.id}&&idToAdd=${idToAdd}"/>">
                                            <%--                                lista wiadomości--%>
                                        Dodaj
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>



                <%--                                <form:checkboxes path="projectList" items="${allList}"--%>
                    <%--                                                 itemLabel="name" itemValue="id" multiple="true"/>--%>
                    <%--                    </tr>--%>
                </table>
                <%--                <input class="px-4 py-1 text-white font-light tracking-wider bg-gray-900 rounded" type="submit"--%>
                <%--                       name="Akceptuj">--%>
                <%--                </input>--%>

                <%--            </form:form>--%>
            </form>
        </div>

    </div>
</div>
<!--/Grid Form-->
</body>
<%@include file="footer.jsp" %>

