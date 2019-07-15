
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Products Details</h1>

            <p class="lead"> Detail information of all products</p>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <img src="#" alt="image" style="width: 450px; height: 300px"/>
                </div>

                <div class="col-md-5">
                    <h3> ${product.productName}</h3>
                    <p> ${product.productDetails}</p>
                    <p> ${product.productManufacturere}</p>
                    <p> ${product.productCategory}</p>
                    <p> ${product.productPrice}</p>

                </div>
            </div>

        </div>

    <%@include file="/WEB-INF/views/template/footer.jsp"%>