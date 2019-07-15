<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: shubh
  Date: 4/23/2019
  Time: 9:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <section>
            <div >
                <div class="container">
                    <br><br><br>
                    <h3> Your Cart</h3>

                    <p>Below are your shopping cart items</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">
            <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">
                <div>
                    <a class="btn pull-left">Clear Cart</a>
                </div>

                <table class="table">
                    <tr>
                        <th>Product</th>
                        <th>Net Price</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>

                    <tr ng-repeat="item in cart.cartItems">
                        <td>{{item.product.productName}}</td>
                        <td>{{item.product.productPrice}}</td>
                        <td>{{item.quantity}}</td>
                        <td>{{item.totalPrice}}</td>
                        <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">Remove</a> </td>
                    </tr>

                    <tr >
                        <th></th>
                        <th></th>
                        <th>Amount Total</th>
                        <th>{{cart.grandTotal}}</th>
                        <th></th>
                    </tr>
                </table>

                <a href="<spring:url value="/productList"/>" class="btn btn-default">Oops, need something more</a>
            </div>
        </section>
    </div>
</div>

<script src="<c:url value="/resources/js/controller.js" />"></script>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
