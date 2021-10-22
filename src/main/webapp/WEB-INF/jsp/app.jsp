<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="headsection.jsp"%>

<body>

<!--Container -->
<div class="mx-auto bg-grey-400">
    <!--Screen-->
    <div class="min-h-screen flex flex-col">
        <!--Header Section Starts Here-->
        <%@include file="header.jsp"%>
<div class="flex flex-1" >
    <!--Sidebar-->
    <aside id="sidebar" class="bg-side-nav w-1/2 md:w-1/6 lg:w-1/6 border-r border-side-nav hidden md:block lg:block" >

        <ul class="list-reset flex flex-col">
            <li class=" w-full h-full py-3 px-2 border-b border-light-border bg-white">
                <a href="/app"
                   class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                    <i class="fas fa-tachometer-alt float-left mx-2"></i>
                    Strona główna
                    <span><i class="fas fa-angle-right float-right"></i></span>
                </a>
            </li>
            <li class="w-full h-full py-3 px-2 border-b border-light-border">
                <a href="/project/list"
                   class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                    <i class="fab fa-wpforms float-left mx-2"></i>
                    Projekty
                    <span><i class="fa fa-angle-right float-right"></i></span>
                </a>
            </li>
            <li class="w-full h-full py-3 px-2 border-b border-light-border">
                <a href="/candidate/list"
                   class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                    <i class="fas fa-grip-horizontal float-left mx-2"></i>
                    Kandydaci
                    <span><i class="fa fa-angle-right float-right"></i></span>
                </a>
            </li>
            <li class="w-full h-full py-3 px-2 border-b border-light-border">
                <a href="/logout"
                   class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                    <i class="fas fa-table float-left mx-2"></i>
                    Wyloguj
                    <span><i class="fa fa-angle-right float-right"></i></span>
                </a>
            </li>

                </ul>
            </li>
        </ul>

    </aside>
    <!--/Sidebar-->
    <!--Main-->
    <main class="bg-white-300 flex-1 p-3 overflow-hidden">

        <div class="flex flex-col">
            <!-- Stats Row Starts Here -->
            <div class="flex flex-1 flex-col md:flex-row lg:flex-row mx-2">
                <div class="shadow-lg bg-red-vibrant border-l-8 hover:bg-red-vibrant-dark border-red-vibrant-dark mb-2 p-2 md:w-1/4 mx-2">
                    <div class="p-4 flex flex-col">
                        <a href="#" class="no-underline text-white text-2xl">
                     ${inProgress}

                        </a></br>
                        <a href="#" class="no-underline text-white text-lg">
                            Projekty w toku
                        </a>
                    </div>
                </div>

                <div class="shadow bg-info border-l-8 hover:bg-info-dark border-info-dark mb-2 p-2 md:w-1/4 mx-2">
                    <div class="p-4 flex flex-col">
                        <a href="#" class="no-underline text-white text-2xl">
                            ${stopped}

                        </a></br>
                        <a href="#" class="no-underline text-white text-lg">
                            Zakończone projekty
                        </a>
                    </div>
                </div>

                <div class="shadow bg-warning border-l-8 hover:bg-warning-dark border-warning-dark mb-2 p-2 md:w-1/4 mx-2">
                    <div class="p-4 flex flex-col">
                        <a href="#" class="no-underline text-white text-2xl">
                           ${candidate}
                        </a></br>
                        <a href="#" class="no-underline text-white text-lg">
                            Ilość kandydatów
                        </a>
                    </div>
                </div>

            </div>

            <!-- /Stats Row Ends Here -->

            <!-- Card Sextion Starts Here -->
            <div class="flex flex-1 flex-col md:flex-row lg:flex-row mx-2">

                <!-- card -->

                <div class="rounded overflow-hidden shadow bg-white mx-2 w-full">
                    <div class="px-6 py-2 border-b border-light-grey">
                        <div class="font-bold text-xl">Ostatnie projekty</div>
                    </div>
                    <div class="table-responsive">
                        <table class="table text-grey-darkest">
<%--                            <form:form method="get" modelAttribute="projectSeven"/>--%>
                            <thead class="bg-grey-dark text-white text-normal">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Nazwa</th>
                                <th scope="col">Firma</th>
                                <th scope="col">Data rozpoczęcia</th>
                                <th scope="col">Status</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${projectSeven}" var="project">
                            <tr>

                                <td scope="row">
                                  ${project.id}
                                </td>
                                <td>
                                    <button class="bg-blue-500 hover:bg-blue-800 text-white font-light py-1 px-2 rounded-full">
                                        <a href="/project/view?projectId=${project.id}"/>
                                    ${project.name}
                                    </button>
                                </td>
                                <td>
                                    ${project.company}
                                </td>
                                <td>
                                    <fmt:formatDate value="${project.start}" pattern="yyyy-MM-dd" />
                                </td>
                                <td>
                                    ${project.status}
                                </td>

                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /card -->

            </div>
            <!-- /Cards Section Ends Here -->



            <!--/Profile Tabs-->
        </div>
    </main>
    <!--/Main-->
</div>
    </div>

</div>
<script src="js/main.js"></script>
</body>
<%@include file="footer.jsp"%>
