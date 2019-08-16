<%--
  Created by IntelliJ IDEA.
  User: manhdung98
  Date: 7/28/2019
  Time: 8:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tag" uri="/WEB-INF/views/admin/customTaglib.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<%--    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
    <title>Title</title>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"><script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script><script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script><script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
          crossorigin="anonymous">
    <style>
        .container {
            width: 900px;
            height: auto;
            padding-top:10px;
            margin-top:20px;
            box-shadow: 0 0 50px #676767;
            border-radius: 15px;
        }
        .form-group {
            padding: 5px;
        }
        .title {
            padding-bottom: 30px;
        }
        .container > .form-group > .table > thead > tr > th {
            text-align: center;
        }
        .container > .form-group > .table > tbody > tr > td {
            text-align: center;
        }
        .btn-search{
            margin-top: 35px;
            margin-left: 50px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="form-group">'
        <h4 class="title">Dictionary management</h4>
        <a href="${pageContext.request.contextPath}/admin2" class="btn btn-sm btn-primary"><i class="fas fa-plus">Add new</i></a>
    </div>
    <div class="form-group">
        <form action="${pageContext.request.contextPath}/word-list" method="post">
            <div class="row">
                <div class="form-group form-check col-sm-4">
                    <label>Type</label>
                    <select class="form-control" id="select-type" name="type">
                        <option value="1">English - Vietnamese</option>
                        <option value="2">Vietnamese - English</option>
                    </select>
                </div>
                <div class="form-group form-check col-sm-4">
                    <label>Key word</label>
                    <input name="key" class="form-control" />
                </div>
                <div class="form-group form-check col-sm-4">
                    <button class="btn btn-search btn-sm btn-primary" type="submit" ><i class="fas fa-search">Search</i></button>
                </div>
            </div>
        </form>
        <div class="form-group form-check col-sm-4">
            <a href="${pageContext.request.contextPath}/logout"><button class="btn btn-sm btn-danger" type="submit" ><i class="fas fa-search">Logout</i></button></a>
        </div>
    </div>
    <div class="form-group">
        <table class="table">
            <thead>
            <tr>
                <th>STT</th>
                <th>Key</th>
                <th>Meanning</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="word" items="${word}">
                <tr>
                    <td>${word.id}</td>
                    <td>${word.word}</td>
                    <td>${word.mean}</td>
                    <td>
                        <a class="btn btn-sm btn-success" href="${pageContext.request.contextPath}/admin2?id=${word.id}">Detail</a>
                        <a class="btn btn-sm btn-danger " href="word-delete?id=${word.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <tag:paginate max="5" offset="${offset}" count="${count}" uri="${pageContext.request.contextPath}/admin1" next="&raquo;" previous="&laquo;"/>
    </div>
</div>
</body>
</html>
