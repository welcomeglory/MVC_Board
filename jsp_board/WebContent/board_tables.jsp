<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>게시판</title>

<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">게시판 프로젝트</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>번호</th>
											<th>이름</th>
											<th>제목</th>
											<th>날짜</th>
											<th>조회수</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="board" items="${boards}">
											<tr>
												<td>${board.bid}</td>
												<td>${board.bname}</td>
												<td><c:forEach begin="1" end="${board.bindent}">[Re]</c:forEach>
													<a href="content_view.do?bid=${board.bid}">${board.btitle}</a>
												</td>
												<td>${board.bdate}</td>
												<td>${board.bhit}</td>
											</tr>
										</c:forEach>
										</tbody>
										</table>
										
											<div class="col-sm-12 col-md-5"></div>
                                    <a href="write_view.do" class="btn btn-success btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-check"></i>
                                        </span>
                                        <span class="text">글작성</span>
                                    </a>
                                  
							</div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			
			
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/datatables-demo.js"></script>

</body>

</html>