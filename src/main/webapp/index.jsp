<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Demo application</title>
    </head>
    <style type="text/css">
        body{
        font-family:Arial,Helvetica,sans-serif;
        font-size:1em;
        vertical-align:middle;
        font-weight:normal;
	    background: #f2e7ca;
		padding-top:150px;
		}      
		h2{
			text-align:center;
		}
		p{
			text-align:left;
		}
		div{
			margin:0 auto;
			width:400px
		}
    </style>
    <body> 
        <h2>Simple demo application with Java EE 6 Servlet (3.0) and JSP</h2>
        <div><p><a href="hello">See greetings from servlet</a></p></div>
        <div><p><a href="form">Fill a form</a></p></div>
        <div><p><a href="getPersonData.jsp">Fill a Person form</a></p></div>
    </body>
</html>
