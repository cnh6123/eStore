<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container-wrapper">
	<div class="container">
		<h3>Product Detail</h3>
		<div>Here is the detail information of the product!!!</div>
		<br>

		<div class="row">
			<div class="col-md-4">
				<%-- <c:set var="imageFilename"
				value="/resources/images/${product.id}.jpg" /> --%>
				<img
					src="<c:url value="/resources/images/${product.id}.jpg" />"
					alt="image" style="width: 60%" />
			</div>
			<div class="col-md-4">
				<h3>${product.name}</h3>
				<p>${product.description}</p>
				<p>Manufacturer : ${product.manufacture}</p>
				<p>Category : ${product.category}</p>
				<h5>${product.price}</h5>
				<a href="<c:url value="/products"/>" class="btn btn-primary">Back Page</a>
			</div>
		</div>
	</div>
</div>