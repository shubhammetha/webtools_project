
<%@include file="/WEB-INF/views/template/header.jsp"%>

<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <br>
            <h1>Administrator page</h1>

            <p class="lead">This is the administrator page!</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name !=null}">
            <h3>
                Hi.. Welcome ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout"/> ">Logout</a>
            </h3>
        </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory" />" >Product Inventory</a>
        </h3>

        <p>Here you can view, check and modify the product inventory!</p>



<%@include file="/WEB-INF/views/template/footer.jsp"%>