<%--
  Created by IntelliJ IDEA.
  User: manhdung98
  Date: 7/28/2019
  Time: 8:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
          crossorigin="anonymous">
    <style>
        .container > .card {
            margin: auto;
            margin-top: 100px;
            width: 50%;
            height: auto;
            box-shadow: 0 0 50px #676767;
            border-radius: 15px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="card ">
        <div class="card-header">
            <h4 style="text-align:center">Word</h4>
        </div>
        <div class="card-body">

            <c:choose>
                <c:when test="${isUpdate}">
                    <c:url value="word-update" var="wordUrl" />
                </c:when>
                <c:otherwise>
                    <c:url value="word-save" var="wordUrl" />
                </c:otherwise>
            </c:choose>

            <form:form action="${wordUrl}" method="post" modelAttribute="word">
                <form:input type="hidden" path="id"/>
                <div class="row">
                    <div class="col-sm-6 form-group">
                        <label>Type</label>
                        <select class="form-control" id="select-type" name="type">
                            <option value="1">English - Vietnamese</option>
                            <option value="2">Vietnamese - English</option>
                        </select>
                    </div>
                    <div class="col-sm-6 form-group">
                        <label>Key</label>
                        <form:input class="form-control" path="word" id="key"/>
                        <span id="message-error"></span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 form-group">
                        <span>Meaning of the word</span>
                        <form:textarea class="form-control" path="mean"/>
                    </div>
                </div>
                <div class="form-group" style="text-align: right;">
                    <a class="btn btn-sm btn-danger twitter" href="word-delete?id=${word.id}">Delete</a>
                    <button class="btn btn-sm btn-success" type="submit">Update</button>
                </div>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>
