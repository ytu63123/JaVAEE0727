<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="my" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <my:barchart fish="銷售數量"
                    one="18" 
                    two="32" 
                    three="26" 
                    four="46" 
                    five="30">                     
            作者: 王小明
        </my:barchart>
    </body>
</html>
