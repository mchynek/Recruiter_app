<%--
  Created by IntelliJ IDEA.
  User: marta
  Date: 11/10/2021
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="headsection.jsp"%>

<body>
<%@include file="header.jsp"%>

<div class="flex flex-1  flex-col md:flex-row lg:flex-row mx-2">
    <div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">

        <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b">
        </div>

        <div class="p-3">
            <form:form modelAttribute="project" class="w-full" >

                <div class="flex flex-wrap -mx-3 mb-6">

                        <label class=" block uppercase tracking-wide text-gray-700 text-xs font-light mb-1" style="line-height: 1cm">
                        <span style="font-size: x-large" ><b>ID:</b> </span>
                            <span style="font-size: large"> ${project.id}</span>
                            <br/>
                            <hr>
                            <span style="font-size: x-large" ><b>FIRMA:</b> </span>
                            <span style="font-size: large"> ${project.company}</span>
                            <br/>
                            <hr>
                            <span style="font-size: x-large" ><b>NAZWA:</b> </span>
                            <span style="font-size: large"> ${project.name}</span>
                            <br/>
                            <hr>
                            <span style="font-size: x-large" ><b>ROZPOCZĘCIE:</b> </span>
                            <span style="font-size: large">  <fmt:formatDate value="${project.start}" pattern="yyyy-MM-dd" /></span>
                            <br/>
                            <hr>
                            <span style="font-size: x-large" ><b>Zakończenie:</b> </span>
                            <span style="font-size: large">  <fmt:formatDate value="${project.end}" pattern="yyyy-MM-dd" /></span>
                            <br/>
                            <hr>
                            <span style="font-size: x-large" ><b>STATUS:</b> </span>
                            <span style="font-size: large"> ${project.status}</span>
                            <br/>
                            <hr>
                            <span style="font-size: x-large" ><b>PROWADZĄCY:</b> </span>
                            <span style="font-size: large"> ${project.userName}</span>
                            <br/>
                            <hr>
                            <a style="line-height: 2cm" class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white inline-block" href="/project/save?projectId=${project.id}">
                                <i>Zapisz do pliku</i></a>

                        </label>
                    </div>
                </div>

            </form:form>
        </div>
    </div>
</div>


</body>
<%@include file="footer.jsp"%>
