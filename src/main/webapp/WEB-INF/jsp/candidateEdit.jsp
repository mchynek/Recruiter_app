<%--
  Created by IntelliJ IDEA.
  User: marta
  Date: 08/10/2021
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@include file="headsection.jsp" %>

<body>
<%@include file="header.jsp" %>

<div class=" mx-auto flex flex-1  flex-col md:flex-row lg:flex-row mx-2">
    <div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">

        <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b">
        </div>

        <form:form method="post" modelAttribute="candidate" class="w-full">

        <div class="p-3">

            <h1 class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                Informacje personalne
                <br/>
            </h1>
            <form:hidden path="id"/>

            <div class="flex flex-wrap -mx-3 mb-6">
                <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                           for="firstName">
                        Imię
                    </label>
                    <form:input
                            class="appearance-none block w-full bg-gray-200 text-gray-700 border border-red-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white-500"
                            path="firstName" type="text"/>
                </div>
                <div class="w-full md:w-1/2 px-3">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                           for="lastName">
                        Nazwisko
                    </label>
                    <form:input
                            class="appearance-none block w-full bg-gray-200 text-gray-700 border border-red-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white-500"
                            path="lastName" type="text"/>
                </div>
                <div class="w-full md:w-1/2 px-3">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                           for="email">
                        e-mail
                    </label>
                    <form:input
                            class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                            path="email" type="email"/>
                </div>

                <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                           for="phone">
                        Numer telefonu
                    </label>
                    <form:input
                            class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                            path="phone" type="text"/>
                </div>
                <div class="w-full md:w-1/2 px-3">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                           for="birthDate">
                        Data urodzenia
                    </label>
                    <form:input
                            class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                            path="birthDate" type="date"/>
                </div>
            </div>
        </div>
        <div class="p-3">
                <h1 class="w-full md:w-1/2 px-3 mb-6 md:mb-0">

                    Informacje zawodowe
                    <br/>
                </h1>
                <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                           for="education">
                        Wykształcenie
                    </label>
                    <form:input
                            class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                            path="education" type="text"/>
                </div>
            <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                       for="language">
                    Języki obce
                </label>
                <form:select
                        class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                        path="language" items="${languagesList}" itemValue="id" itemLabel="name"/>
            </div>
                <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                           for="company">
                        Firma
                    </label>
                    <form:input
                            class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                            path="company" type="text"/>
                </div>
                <div class="w-full md:w-1/2 px-3">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                           for="position">
                        Zajmowane stanowisko
                    </label>
                    <form:input
                            class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                            path="position" type="text"/>
                </div>
        </div>
        <div class="p-3">
                <h1 class="w-full md:w-1/2 px-3 mb-6 md:mb-0">

                    Zgody

                </h1>
                <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                        <%--@declare id="consentproject"--%><label
                        class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                        for="consentProject">
                    Zgoda na udział w projekcie
                </label>
                    tak : <form:radiobutton
                        class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                        path="consentProject" value="true"/>
                    nie : <form:radiobutton
                        class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                        path="consentProject" value="false"/>
<%--                </div>--%>
<%--                <div class="w-full md:w-1/2 px-3">--%>
                        <%--@declare id="consentfuture"--%><label
                        class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                        for="consentFuture">
                            <br/>
                    Zgoda na udział w przyszłych projektach
                </label>
                    tak : <form:radiobutton
                        class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                        path="consentFuture" value="true"/>
                    nie : <form:radiobutton
                        class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                        path="consentFuture" value="false"/>
                </div>
            <div class="w-full md:w-1/2 px-3">
                <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                       for="status">
                    <br/>
                    Status
                </label>
            <form:select
                    class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                         path="status" type="text">

                <form:option value="Niezainteresowany"/>
                <form:option value="Zainteresowany"/>
                <form:option value="Brak kontaktu"/>
                <form:option value="Przedstawiony klientowi"/>
                <form:option value="Wysłano ofertę"/>
            </form:select>

            </div>

                <div class="mt-4 items-center justify-between">
                    <button class="px-4 py-1 text-white font-light tracking-wider bg-gray-900 rounded" type="submit">
                        Akceptuj
                    </button>

                </div>
            </div>
            <div class="flex flex-wrap -mx-3 mb-2">


            </div>

        </div>
        </form:form>
    </div>
</div>
</div>
<script src="js/main.js"></script>
</div>

</body>
<%@include file="footer.jsp" %>


