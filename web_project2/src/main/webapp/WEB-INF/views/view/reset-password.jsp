<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="resources/dist/css/style_login.css?121" />
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
<!-- validation 사용자 작성 코드 삽입-->
<script src="/resources/js/register.js"></script>
<script>
	function reset_pw() {
		var pwdetail = $("form[id='pw_detail']").serialize();
		$.ajax({
			url : "reset_pw",
			method : "POST",
			data : pwdetail,
			success : function(data) {
				//성공하면 select.php에서 뿌린 데이터를 data 변수에 담아 모달-바디에 붙여라
				if (data.result === "success") {
					alert("비밀번호가 성공적으로 변경되었습니다.");
					 $('#content').html("이 페이지는 더이상 유효하지 않습니다.");
				} else {
					alert(data.msg);
				}
			}
		});
	}
</script>
<title>비밀번호 찾기</title>
</head>
<body class="bg-gradient-primary">
	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-6 col-lg-6 col-md-6">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg-12">
								<div class="p-5" id="content">
									<c:if test="${!timeover}">
										<div class="text-center">
											<h1 class="h4 text-gray-900 mb-2">비밀번호 변경</h1>
										</div>
										<form id="pw_detail" class="user">
											<div class="form-group">
												<input type="text" class="form-control form-control-user"
													id="id" name="id" placeholder="사용자 아이디 또는 코드"> <small
													id="id" class="text-info"></small> <input type="password"
													class="form-control form-control-user" id="pw" name="pw"
													placeholder="암호 입력"> <small id="pw"
													class="text-info"></small> <input type="password"
													class="form-control form-control-user" id="pw_confirm"
													name="pw_confirm" placeholder="암호 재입력"> <small
													id="pw_confirm" class="text-info"></small> <input
													type="hidden" name="key"
													value='<%=request.getParameter("key")%>'> <input
													type="hidden" name="group_GB"
													value='<%=request.getParameter("u")%>'>
											</div>
										</form>
										<button class="btn btn-primary btn-user btn-block"
											onclick="javascript:reset_pw()">암호변경</button>
										<hr>
										<div class="text-center">
											<p class="mb-4">문제 발생시, 담당 관리자에게 문의해주세요</p>
										</div>
									</c:if>
									<c:if test="${timeover}">
										<h1>요청하신 페이지를 불러 올 수 없습니다.</h1>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>