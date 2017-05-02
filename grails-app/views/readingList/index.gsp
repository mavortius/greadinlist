<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Reading List</title>
</head>
<body>
<div class="panel panel-default">
    <div class="panel-heading">
        <p class="panel-title">Your Reading List</p>
    </div>
    <div class="panel-body">
        <g:if test="${bookList && !bookList.isEmpty()}">
            <div class="list-group">
                <g:each in="${bookList}" var="book">
                    <div class="list-group-item">
                        <div class="list-group-item-heading">
                            <b>${book.title} by ${book.author}
                            (ISBN: ${book.isbn})</b>
                        </div>
                        <div class="list-group-item-text">
                            <g:if test="${book.description}">
                                ${book.description}
                            </g:if>
                            <g:else>
                                No description available
                            </g:else>
                        </div>
                    </div>
                </g:each>
            </div>
        </g:if>
        <g:else>
            <p>You have no books in your book list</p>
        </g:else>
        <g:if test="${flash.message}">
            <div class="alert alert-info" role="alert">${flash.message}</div>
        </g:if>
        <g:if test="${errors}">
            <div class="alert alert-danger" role="alert">${message}</div>
        </g:if>
        <div class="panel panel-default">
            <div class="panel-heading">
                <p class="panel-title">Add a book</p>
            </div>
            <div class="panel-body">
                <g:form action="save" class="form-horizontal">
                    <div class="form-group">
                        <label for="title" class="col-sm-2 control-label">Title:</label>
                        <div class="col-sm-10">
                            <g:field type="text" class="form-control" name="title" value="${book?.title}"/><br/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="author" class="col-sm-2 control-label">Author:</label>
                        <div class="col-sm-10">
                            <g:field type="text" class="form-control" name="author" value="${book?.author}"/><br/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="isbn" class="col-sm-2 control-label">ISBN:</label>
                        <div class="col-sm-10">
                            <g:field type="text" class="form-control" name="isbn" value="${book?.isbn}"/><br/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-2 control-label">Description:</label>
                        <div class="col-sm-10">
                            <g:textArea name="description" class="form-control" value="${book?.description}"
                                        rows="5" cols="80" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">
                                Create
                            </button>
                        </div>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
</body>
</html>