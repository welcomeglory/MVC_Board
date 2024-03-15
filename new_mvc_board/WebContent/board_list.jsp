<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게임</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<style>
#game {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	height: 100vh;
}
</style>
</head>
<body class="d-flex flex-column justify-content-between vh-100">
	<header>
		<nav class="navbar navbar-expand-lg bg-body-tertiary"
			data-bs-theme="dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">놀이터</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page"
							href="${pageContext.request.contextPath}/lotto/list.do">로또</a></li>
						<li class="nav-item"><a class="nav-link active"
							href="${pageContext.request.contextPath}/rsp_game.jsp">가위바위보</a>
						</li>
						<li class="nav-item"><a class="nav-link active"
							href="${pageContext.request.contextPath}/board/list.do">게시판</a></li>
					</ul>
					<form class="d-flex" role="search">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</div>
			</div>
		</nav>
	</header>
	<main>
		<!-- Begin Page Content -->
		<div class="container">
			<!-- DataTales Example -->
			<h1 class="text-center">게시판</h1>
			<div class="card-header py-3"></div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered text-center" id="dataTable" 	width="100%" cellspacing="0">
						<thead>
							<tr>
								<th>번호</th>
								<th>이름</th>
								<th>제목</th>
								<th>날짜</th>
								<th>조회수</th>
								<th>삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="board" items="${boards}">
								<tr>
									<td>${board.bid}</td>
									<td>${board.bname}</td>
									<td>
									<c:forEach begin="1" end="${board.bindent}">[Re]</c:forEach>
										<a href="${pageContext.request.contextPath}/board/update_view.do?bid=${board.bid}">${board.btitle}</a>
									</td>
									<td>${board.bdate}</td>
									<td>${board.bhit}</td>
									<td>
									<button class="btn btn-success">
									<a class="nav-link active" href="${pageContext.request.contextPath}/board/delete.do?bid=${board.bid}">삭제</a></button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<div class="col-sm-12 col-md-5"></div>
					<a href="write_view.do" class="btn btn-success btn-icon-split">
						<span class="icon text-white-50"> <i class="fas fa-check"></i>
					</span> <span class="text">글작성</span>
					</a>

				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</main>
	<footer class="text-center">
		<hr>
		<p>© Company 2022-2023</p>
	</footer>
</body>
</html>