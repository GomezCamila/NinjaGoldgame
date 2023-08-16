<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
<title>Ninja Gold</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">

</head>

<body>

<div class="container p-2">

		<h1 class="text-decoration-underline">Ninja Gold</h1>

		<h2 class="mb-4">Your Gold: <span > <c:out value="${gold }"></c:out></span></h2>

		<div class="row text-center">
			<div class="card col mx-2">
				<form action="/gold" method="post">
					<h3>Farm</h3>
					<p>(earns 10-20 gold)</p>
					<input type="hidden" name="lugar" value="granja" />
					<button type="submit" class="btn btn-warning">GOLD!</button>
				</form>
			</div>


			<div class="card col mx-2">
				<form action="/gold" method="post">
					<h3>Cave</h3>
					<p>(earns 5-10 gold)</p>
					<input type="hidden" name="lugar" value="cueva" />
					<button type="submit" class="btn btn-warning">GOLD!</button>
				</form>


			</div>

			<div class="card col mx-2">
				<form action="/gold" method="post">
					<h3>House</h3>
					<p>(earns 2-5 gold)</p>
					<input type="hidden" name="lugar" value="casa" />
					<button type="submit" class="btn btn-warning">GOLD!</button>
				</form>

			</div>

			<div class="card col mx-2 p-1">
				<form action="/gold" method="post">
					<h3>Casino</h3>
					<p>(earns 0-50 gold)</p>
					<input type="hidden" name="lugar" value="casino" />
					<button type="submit" class="btn btn-warning">GOLD!</button>
				</form>

			</div>
		</div>

		<div>
			<h2 class="my-4">Activities</h2>

			<c:forEach items="${resultados }" var="resultado">
				<c:if test="${resultado.contains('aumentas') }">
					<p class="text-success"><c:out value="${resultado }"></c:out></p>
				</c:if>

				<c:if test="${resultado.contains('disminuye') }">
					<p class="text-danger"><c:out value="${resultado }"></c:out></p>
				</c:if>
			</c:forEach>

			<a class="btn btn-warning" href="/reset" role="button">RESET</a>
		</div>

	</div>


</body>
</html>