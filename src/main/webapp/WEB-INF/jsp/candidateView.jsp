
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
            <form:form modelAttribute="ccandidate" class="w-full" >

                <div class="flex flex-wrap -mx-3 mb-6">

                        <label class=" block uppercase tracking-wide text-gray-700 text-xs font-light mb-1" style="line-height: 1cm">
                        <span style="font-size: x-large" ><b>ID:</b> </span>
                            <span style="font-size: large"> ${candidate.id}</span>
                            <br/>
                            <hr>
                            <span style="font-size: x-large" ><b>IMIĘ:</b> </span>
                            <span style="font-size: large"> ${candidate.firstName}</span>
                            <br/>
                            <hr>
                            <span style="font-size: x-large" ><b>NAZWISKO:</b> </span>
                            <span style="font-size: large"> ${candidate.lastName}</span>
                            <br/>
                            <hr>
                            <span style="font-size: x-large" ><b>DATA URODZENIA:</b> </span>
                            <span style="font-size: large">  <fmt:formatDate value="${candidate.birthDate}" pattern="yyyy-MM-dd" /></span>
                            <br/>
                            <hr>
                            <span style="font-size: x-large" ><b>EMAIL:</b> </span>
                            <span style="font-size: large">  <fmt:formatDate value="${candidate.email}" pattern="yyyy-MM-dd" /></span>
                            <br/>
                            <hr>
                            <span style="font-size: x-large" ><b>NUMER TELEFONU:</b> </span>
                            <span style="font-size: large"> ${candidate.phone}</span>
                            <br/>
                            <hr>
                            <span style="font-size: x-large" ><b>STATUS:</b> </span>
                            <span style="font-size: large"> ${candidate.status}</span>
                            <br/>
                            <hr>

                            <a style="line-height: 2cm" class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white inline-block" href="/candidate/save?candidateId=${candidate.id}">
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
