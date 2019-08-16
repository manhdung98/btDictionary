<%--
  Created by IntelliJ IDEA.
  User: manhdung98
  Date: 7/29/2019
  Time: 11:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
            <form action="word-search" method="get">
                <div class="row">
                    <div class="col-sm-6 form-group">
                        <label>Type</label>
                        <select class="form-control" id="select-type" name="type">
                            <option value="1">English - Vietnamesse</option>
                            <option value="2">Vietnamesse - English</option>
                        </select>
                    </div>
                    <div class="col-sm-6 form-group">
                        <label>Key</label>
                        <input class="form-control" name="key" value="${word.word}"/>
                        <span id="message-error"></span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 form-group">
                        <span>Meaning of the word</span>
                        <textarea id="textsearch" class="form-control">${word.mean}</textarea>
                    </div>
                </div>
                <div class="form-group" style="text-align: right;">
                    <button class="btn btn-sm btn-primary" type="submit">Search</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
