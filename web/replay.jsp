<%-- 
    Document   : replay
    Created on : Nov 18, 2016, 10:25:09 PM
    Author     : matt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
   Cookie cookie = null;
   Cookie[] cookies = null;
   //Get the temp cookie
   String query="";
   cookies = request.getCookies();
   if( cookies != null ){
      for (int i = 0; i < cookies.length; i++){
         cookie = cookies[i];
         if (cookie.getName().contentEquals("temp")) {
             query=cookie.getValue();
         }
      }
  }

//desroy the cookie for security
    Cookie added = null;
    added = new Cookie("temp","");
    response.addCookie(added);

%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Replay</title>
    </head>
    <body>
        <meta http-equiv="refresh" content="0; url=app.html?<%=query %>"> 
    </body>
</html>
