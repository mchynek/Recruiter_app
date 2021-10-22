

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <header class="bg-nav">
            <div class="flex justify-between">
                <div class="p-1 mx-3 inline-flex items-center">
<%--                    <i class="fas fa-bars pr-2 text-white" onclick="sidebarToggle()"></i>--%>
                        <i class="fas fa-bars pr-2 text-white" ><a href="/app"/>
                            Powrót do strony głównej</i>

<%--                    <h1 class="text-white p-2">Logo</h1>--%>
<%--                    <button class="bg-transparent hover:bg-blue-500 text-blue-dark font-semibold hover:text-white py-2 px-4 border border-blue hover:border-transparent rounded">--%>
<%--                        <a href="/app"/>--%>
<%--                        Powrót do strony głównej--%>
<%--                    </button>--%>


                </div>

                <div class="p-1 flex flex-row items-center">
                    <a href="https://github.com/tailwindadmin/admin" class="text-white p-2 mr-2 no-underline hidden md:block lg:block">Github</a>
                    <img class="inline-block h-8 w-8 rounded-full" src="resources/files/user.png" alt="">
                    <button onclick="profileToggle()" class="text-white p-2 no-underline hidden md:block lg:block">User</button>
                    <div id="ProfileDropDown" class="rounded hidden shadow-md bg-white absolute pin-t mt-12 mr-1 pin-r">
                        <ul class="list-reset">
                            <li><a href="#" class="no-underline px-4 py-2 block text-black hover:bg-grey-light">My account</a></li>
                            <li><a href="#" class="no-underline px-4 py-2 block text-black hover:bg-grey-light">Notifications</a></li>
                            <li><hr class="border-t mx-2 border-grey-light"></li>
                            <li><a href="" class="no-underline px-4 py-2 block text-black hover:bg-grey-light">Logout</a></li>
                        </ul>
                    </div>
                </div>

            </div>



        </header>
