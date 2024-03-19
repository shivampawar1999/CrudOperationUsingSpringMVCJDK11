<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>


	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">List Of Products</h1>

				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">product Id</th>
							<th scope="col">Product Name</th>
							<th scope="col">Product Price</th>
							<th scope="col">Product Description</th>
							<th scope="col">Actions</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${allProducts }" var="product">
							<tr>
								<th scope="row">${product.productId }</th>
								<td>${product.productName}</td>
								<td class="font-weight-bold">&#x20B9;
									${product.productPrice }</td>
								<td>${product.description }</td>
								<td><a href="delete/${product.productId }"><i
										class="fa-solid fa-trash text-danger" style="font-size: 30px;"></i></a>
									<a href="edit/${product.productId }"><i
										class="fa-solid fa-pen-nib" style="font-size: 30px;"></i></a></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>

				<div class="container text-center">
					<a href="form" class="btn btn-outline-success">Create Product</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>