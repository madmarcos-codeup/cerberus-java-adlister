<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% request.setAttribute("numbers", new int[]{1, 2, 3, 4, 5, 6, 7}); %>

<%! int counter = 0; %>
<%! int [] nums = {1, 2, 3, 4, 5, 6, 7}; %>

<% counter += 1; %>
<html>
<head>
    <title>JSP/JSTL Demo</title>

</head>
<body>

<%@ include file="partials/navbar.jsp" %>


<%--plug in the code from the textbook --%>
<%--explain what is going on with JSP--%>
<%--    and how the jsp_lec.jsp page is working--%>

<h1>The current count is <%= counter + 100 %>.</h1>

View the page source!

<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->



<%--explain page directives--%>
<%--explain instance variable declarations--%>
<%--explain java statement lines--%>
<%--explain expression and output lines--%>
<%--point at comment lines--%>

<%--make a navbar partial and include it--%>

<%--implicit objects--%>
<%--show the request stuff. also shows off the jsp expression lines--%>
<h3> <%= request.getParameter("age") %> </h3>

<hr>

<h2>EL Stuff</h2>
<%--show EL accessing request param--%>
<h3> ${param.age} </h3>
<%--show EL Scope example--%>
<h3>This does not work: ${counter} </h3>
<h3>This does not work: <%= counter %> </h3>



<%--explain jstl--%>
<%--load jstl via maven--%>
<%--point at the taglib directive--%>

<%--show the c:if example--%>
<c:if test="${param.howdy.equals('yall')}">
    <p>Howdy back at you</p>
</c:if>
<c:if test="<%= counter == 1 %>">
    <p>Counter is 1</p>
    <meta http-equiv="Refresh" content="0; url='https://www.w3docs.com'" />
</c:if>

<hr>
<h2>JSTL choose</h2>

<%--show and explain c:choose when/otherwise using a query parameter--%>
<%--can't show too much right now cause interesting objects will be passed through from a servlet--%>
<c:choose>
    <c:when test="<%= counter == 1 %>">
        <p>Inside the choose, counter is 1</p>
    </c:when>
    <c:otherwise>
        <p>Inside the choose, counter IS NOT 1</p>
    </c:otherwise>
</c:choose>

<hr>
<h2>foreach example</h2>
<%--show a foreach example--%>
<%--using the numbers array example--%>
<c:forEach items="${numbers}" var="n">
    <p>Current element in numbers is ${n}</p>
</c:forEach>

<ul>
    <c:forEach items="<%= nums %>" var="aNum">
        <li>aNum is ${aNum}</li>
    </c:forEach>
</ul>

<p>You submitted a book title of ${param.book_title} </p>

<form method="POST" action="jsp_lec.jsp">
    <label for="book_title">Book title: </label>
    <input type="text" name="book_title" id="book_title">
    <br>
    <button type="submit">Submit</button>
</form>


</body>
</html>
