<!doctype html>
<html lang="en">
<head>

	<%@include file="./base.jsp" %>
</head>
<body style="background-color: #e2e2e2;">



	<div class="container ">
		<div class="row">
			<div class="col-md-6 offset-3" style="background-color: white">
				<h1>create</h1>
				<form method="post" action="process">
					<div class="form-group">

						<label for="productName">productName</label> <input type="text"
							class="form-control" id="productName" name="productName">

						<label for="productPrice">productPrice</label> <input type="text"
							class="form-control" id="productPrice" name="productPrice">

						<label for="description">Description</label>
						<textarea class="form-control" id="description" name="description"
							rows="3"></textarea>


					</div>
					<button type="submit" class="btn btn-primary">Create Product</button>
				</form>


			</div>
		</div>
	</div>

</body>
</html>