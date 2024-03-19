<!doctype html>
<html lang="en">
<head>

<%@include file="./base.jsp"%>
</head>
<body style="background-color: #e2e2e2;">



	<div class="container ">
		<div class="row">
			<div class="col-md-6 offset-3" style="background-color: white">
				<h1>edit product</h1>

				<div>
					<label for="productName">productId</label> <input type="text"
						class="form-control" value="${product.productId }"
						disabled="disabled">
				</div>


				<form method="post"
					action="${pageContext.request.contextPath }/processEdit">
					<div class="form-group">

						<!-- Hidden field -->
						<input type="hidden" name="productId"
							value="${product.productId }"> <label for="productName">productName</label>
						<input type="text" class="form-control" id="productName"
							name="productName" value="${product.productName }"> <label
							for="productPrice">productPrice</label> <input type="text"
							class="form-control" id="productPrice" name="productPrice"
							value="${product.productPrice }"> <label
							for="description">Description</label>
						<textarea class="form-control" id="description" name="description"
							rows="3">${product.description}</textarea>


					</div>
					<button type="submit" class="btn btn-primary">Edit</button>
				</form>


			</div>
		</div>
	</div>

</body>
</html>