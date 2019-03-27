<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container-wrapper">
	<div class="container">
		<h1>Add Product</h1>
		<p class="lead">Fill the blow information to add a product</p>

		<sf:form method="post"
			action="${pageContext.request.contextPath}/admin/productInventory/updateProduct"
			modelAttribute="product">
			
			<sf:hidden path="id"/>
			
			<div class="form-group">
				<label for="name">Name</label>
				<sf:input path="name" id="name" class="form-control" />
				<sf:errors path="name" cssStyle="color:#ff0000;"/>
			</div>

			<div class="form-group">
				<label for="category">Category</label>
				<sf:radiobutton path="category" id="category" value="컴퓨터" />
				컴퓨터
				<sf:radiobutton path="category" id="category" value="가전" />
				가전
				<sf:radiobutton path="category" id="category" value="잡화" />
				잡화
			</div>

			<div class="form-group">
				<label for="description">Description</label>
				<sf:textarea path="description" id="description"
					class="form-control" />
			</div>

			<div class="form-group">
				<label for="price">Price</label>
				<sf:input path="price" id="price" class="form-control" />
				<sf:errors path="price" cssStyle="color:#ff0000;"/>
			</div>

			<div class="form-group">
				<label for="unitInStock">Unit In Stock</label>
				<sf:input path="unitInStock" id="unitInStock" class="form-control" />
				<sf:errors path="unitInStock" cssStyle="color:#ff0000;"/>
			</div>

			<div class="form-group">
				<label for="manufacture">Manufacture</label>
				<sf:input path="manufacture" id="manufacture" class="form-control" />
				<sf:errors path="manufacture" cssStyle="color:#ff0000;"/>
			</div>

			<input type="submit" value="submit" class="btn btn-success">
			<a href="<c:url value="/admin/productInventory"/>">Cancel</a>

		</sf:form>
		<br />
	</div>
</div>

