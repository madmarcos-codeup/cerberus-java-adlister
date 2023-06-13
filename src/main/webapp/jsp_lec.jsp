<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int counter = 0; %>
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

<%--show EL accessing request param--%>
<%--show EL Scope example--%>

<%--explain jstl--%>
<%--load jstl via maven--%>
<%--point at the taglib directive--%>

<%--show and explain c:choose when/otherwise using a query parameter--%>
<%--can't show too much right now cause interesting objects will be passed through from a servlet--%>

<%--show the c:if example--%>

<%--show a foreach example--%>
<%--using the numbers array example--%>


</body>
</html>
