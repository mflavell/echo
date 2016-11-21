<%-- 
    Document   : read
    Created on : Nov 18, 2016, 10:13:35 PM
    Author     : matt
--%>

<%@page import="java.net.URLDecoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //read URL
    String querystring = URLDecoder.decode(request.getQueryString(), "UTF-8");

    //copy URL to cookie
    Cookie added = null;
    added = new Cookie("temp",querystring);
    response.addCookie(added);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Read</title>
    </head>
    <body>
        One moment please...
        <meta http-equiv="refresh" content="0; url=index.html"> 
    </body>
</html>
