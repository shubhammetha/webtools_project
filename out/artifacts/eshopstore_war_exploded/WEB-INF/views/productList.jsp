<%--<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1> All Products</h1>

            <p class="lead"> Checkout all the awesome Products we have! </p>

        </div>

        <table class="table table-striped table-hover">
            <thead>
                <tr class="bg-success">
                    <th>Photo Thumb</th>
                    <th>Product Name</th>
                    <th>Product Category</th>
                    <th>Product Details</th>
                    <th>Product Price</th>
                    <th></th>
                </tr>
            </thead>

            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="#" alt="image"/> </td>
                    <td> ${product.productName}</td>
                    <td> ${product.productCategory}</td>
                    <td> ${product.productDetails}</td>
                    <td> ${product.productPrice} USD</td>
                    <td><a href="<spring:url value="/productList/viewProduct/${product.productId}" /> "
                    > <span class="glyphicon glyphicon-info-sign"/></a></td>
                </tr>
            </c:forEach>
        </table>

        <%@include file="/WEB-INF/views/template/footer.jsp"%>