<%--  Created by IntelliJ IDEA.--%>
<%--  User: shubh--%>
<%--  Date: 4/15/2019--%>
<%--  Time: 5:30 PM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>


<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>

    </ol>
    <div >
        <img  src="<c:url value="/resources/images/a.jpg"/>" style="width: 700px" >
<%--        <img  src="<c:url value="/resources/images/c.jpg" />">--%>


    </div>

</div><!-- /.carousel -->



    <%@include file="/WEB-INF/views/template/footer.jsp"%>
