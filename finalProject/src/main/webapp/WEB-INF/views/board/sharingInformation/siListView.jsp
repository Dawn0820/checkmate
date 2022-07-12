<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="/static/bootstrap.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
	integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
	crossorigin="anonymous"></script>
<link href="resources/css/sharingInformation.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<jsp:include page="../../common/header.jsp" />
	<div class="back-image">
		<br> <br> <br> <br> <br>
		<div class="item">
			<div class="row justify-content-center">
				<div class="col-12">
					<ul class="nav nav-tabs">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="list.si">정보공유</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							style="color: aliceblue;">취업정보공유</a></li>
					</ul>
					<table class="table table-light table-hover table-responsive">
						<thead class="thead-light">
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>아이디</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody class="text-dark">
							<tr>
								<td>아이디1</td>
								<td>타이틀1</td>
								<td>작성자1</td>
								<td>2022-02-02</td>
							</tr>
							<tr>
								<td>아이디1</td>
								<td>타이틀1</td>
								<td>작성자1</td>
								<td>2022-02-02</td>
							</tr>
							<tr>
								<td>아이디1</td>
								<td>타이틀1</td>
								<td>작성자1</td>
								<td>2022-02-02</td>
							</tr>
							<tr>
								<td>아이디1</td>
								<td>타이틀1</td>
								<td>작성자1</td>
								<td>2022-02-02</td>
							</tr>
							<tr>
								<td>아이디1</td>
								<td>타이틀1</td>
								<td>작성자1</td>
								<td>2022-02-02</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<form class="row g-3 justify-content-center">
				<div class="col-3" style="float: center;">
					<label for="inputPassword2" class="visually-hidden">Password</label>
					<input type="password" class="form-control" id="inputPassword2"
						placeholder="검색할 내용을 입력 해주세요.">
				</div>
				<div class="col-auto">
					<button type="submit" class="btn btn-secondary mb-3">검색</button>
				</div>
			</form>

			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link text-dark" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a class="page-link text-dark" href="#">1</a></li>
					<li class="page-item"><a class="page-link text-dark" href="#">2</a></li>
					<li class="page-item"><a class="page-link text-dark" href="#">3</a></li>
					<li class="page-item"><a class="page-link text-dark" href="#"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>

			<div class="btn-group">
				<a href="#" class="btn btn-secondary">글쓰기</a> <a href="#"
					class="btn btn-secondary">글수정</a> <a href="#"
					class="btn btn-secondary">글삭제</a>
			</div>
		</div>
	</div>

	<jsp:include page="../../common/footer.jsp" />
</body>
</html>