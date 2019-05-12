<%--
  Created by IntelliJ IDEA.
  User: Paweł
  Date: 12.05.2019
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    private int add(int a, int b) {
        return a + b;
    }
    private String hello = "hi";
%>

<%= hello%><br>

<%= add(1, 4)%><br>
<%= add(47, 6)%><br>

<%
    for (int i = 0; i < 8; i++) {
        out.println(i);%>
        <br><%
    }
%><br>

<% out.print("Hello World!");%><br>
<% out.print("Today is: ");%><br>
<% out.print(new java.util.Date());%><br>

<br>
<%--cwiczenie--%>
<%!
    private int[] createArray(int a, int b) {
        int[] array = new int[b - a + 1];
        for (int i = 0; i < array.length; i++) {
            array[i] = a + i;
        }
        return array;
    }
    private String textToAdd = " time";
%>
<%
    int[] sampleArray = createArray(1, 5);
%>
<ol>
    <%
        for (int i = 0; i < sampleArray.length; i++) {
    %>
            <li><%= sampleArray[i] + " " + textToAdd + (sampleArray[i] != 1 ? "s" : "")%></li>
    <%
        }
    %>
</ol><br>

</body>
</html>
