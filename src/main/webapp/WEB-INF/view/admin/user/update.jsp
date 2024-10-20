<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>Manage Users</title>
    <link href="/css/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
<jsp:include page="../layout/header.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp"/>
    <div id="layoutSidenav_content" class="bg-light">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Manage Users</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active"><a href="/admin">Dashboard</a></li>
                    <li class="breadcrumb-item active">User</li>
                </ol>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-6 col-12 mx-auto">
                            <a href="/admin/user" class="btn btn-outline-secondary"><i
                                    class="fa-solid fa-caret-left fa-xl"></i></a>
                            <h1 class="text-center">Update information</h1>
                            <%--@elvariable id="currentUser" type="" --%>
                            <form:form action="/admin/user/update" method="post"
                                       modelAttribute="currentUser">
                                <div class="mb-3 d-none">
                                    <label class="form-label">ID:</label>
                                    <form:input type="text" class="form-control" path="id"/>
                                </div>
                                <div class="mb-3 d-none">
                                    <label class="form-label">Password:</label>
                                    <form:input type="password" class="form-control" path="password"/>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Email:</label>
                                    <form:input type="email" class="form-control" cssStyle="background-color: #e9ecef"
                                                path="email"
                                                readonly="true"/>
                                </div>
                                <div class="mb-3">
                                    <c:set var="fullNameError">
                                        <form:errors path="fullName" cssClass="invalid-feedback"/>
                                    </c:set>
                                    <label class="form-label">Full Name:</label>
                                    <form:input type="text"
                                                class="form-control ${not empty fullNameError ? 'is-invalid' : '' }"
                                                path="fullName"/>
                                        ${fullNameError}
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Phone number:</label>
                                    <form:input type="text" class="form-control" path="phone"/>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Address:</label>
                                    <form:input type="text" class="form-control" path="address"/>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Role:</label>
                                    <form:select class="form-select" path="role.name">
                                        <c:choose>
                                            <c:when test="${currentUser.role.name == 'Admin'}">
                                                <option selected="selected" value="Admin">Admin
                                                </option>
                                                <option value="User">User</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="Admin">Admin</option>
                                                <option selected="selected" value="User">User
                                                </option>
                                            </c:otherwise>
                                        </c:choose>
                                    </form:select>
                                </div>
                                <button type="submit"
                                        class="btn btn-warning form-control">Save
                                </button>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="../layout/footer.jsp"/>

    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="/js/scripts.js"></script>
</body>

</html>