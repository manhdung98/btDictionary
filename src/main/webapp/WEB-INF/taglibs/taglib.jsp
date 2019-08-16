<%--
  Created by IntelliJ IDEA.
  User: manhdung98
  Date: 7/31/2019
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="/css/font-awesome.min.css"/>
    <title>Persons</title>
</head>
<body>
<div class="container">
    <div class="well">
        <strong>List of Persons</strong>
    </div>
    <table class="table table-stripped">
        <tr>
            <th>STT</th>
            <th>Full name</th>
            <th>Address</th>
            <th>Phone</th>
        </tr>
        <c:forEach items="${listPersons}" var="person" varStatus="itr">
            <tr>
                <td>${offset + itr.index +1 }</td>
                <td>${person.fullname }</td>
                <td>${person.address }</td>
                <td>${person.phone }</td>
            </tr>
        </c:forEach>
    </table>
    <tag:paginate max="5" offset="${offset}" count="${count}" uri="/persons" next="&raquo;" previous="&laquo;"/>
</div>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
</body>
</html>
