<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
	<link rel="stylesheet" href="resources/dist/css/style_login.css?121" />
  <title>Login</title>
</head>
<script>
	var login = '${login}';
	if(login==="fail"){
		alert("로그인에 실패하였습니다 계정과 비밀번호를 다시 확인해주세요");
	}
</script>
<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">
      <div class="col-xl-6 col-lg-6 col-md-6">
        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="logo">
                      <img src="resources/img/logo.png" width="100%" height="auto"/>
            </div>
            <div class="row">
              <div class="col-lg-12">
                <div class="p-1">    
                <div  class="menu">
   			 <div class="tabmenu">
        <input type="radio" name="tab" id="tab1" >
        <input type="radio" name="tab" id="tab2">
        <input type="radio" name="tab" id="tab3"   checked="checked">
        <input type="radio" name="tab" id="tab4">
        <div class="tab_menu">
	        <label for="tab1">협력사</label>
	        <label for="tab2">고객사</label>
	        <label for="tab3">임직원</label>
	        <label for="tab4">관리자</label>
	        </div>
        <div class="tab1_content tab_content">
           <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">CREDITOR LOGIN</h1>
                  </div>
           <form action="/main" method="POST">
            <div class="form-group">
                <input id="" class="form-control form-control-user" type="text" placeholder="회원 코드" name="id" required>
            </div>
            <div class="form-group">
                <input id="" class="form-control form-control-user" type="password" placeholder="패스워드" name="pw" required>
             </div>
                <button class="btn btn-primary btn-user btn-block" type="submit" >협력사 로그인</button>
                <input type="hidden" name="group_GB" value="cr">
           </form>
                 <hr>
                  <div class="text-center">
                   <a class="small" href="/forgot-password?u=cr">비밀번호 찾기</a>
                  </div>
        </div>
        <div class="tab2_content tab_content">
           <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">CUSTOMER LOGIN</h1>
                  </div>
             <form action="/main" method="POST">
            <div class="form-group">
                <input id="" class="form-control form-control-user" type="text" placeholder="회원 코드" name="id" required>
            </div>
            <div class="form-group">
                <input id="" class="form-control form-control-user" type="password" placeholder="패스워드" name="pw" required>
             </div>
                <button class="btn btn-primary btn-user btn-block" type="submit" >고객사 로그인</button>
                 <input type="hidden" name="group_GB" value="cu">
           </form>
                 <hr>
                  <div class="text-center">
                    <a class="small" href="/forgot-password?u=cu">비밀번호 찾기</a>
                  </div>
        </div>
        
        <div class="tab3_content tab_content">
           <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">EMPLOYEE LOGIN</h1>
                  </div>
                   <form action="/main" method="POST">
            <div class="form-group">
                <input id="" class="form-control form-control-user" type="text" placeholder="사원 아이디" name="id" required>
            </div>
            <div class="form-group">
                <input id="" class="form-control form-control-user" type="password" placeholder="패스워드" name="pw" required>
             </div>
                <button class="btn btn-primary btn-user btn-block" type="submit" >임직원 로그인</button>
                 <input type="hidden" name="group_GB" value="e">
           </form>
                 <hr>
                  <div class="text-center">
                    <a class="small" href="/forgot-password?u=e">비밀번호 찾기</a>
                  </div>
        </div>

        <div class="tab4_content tab_content">
           <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">ADMIN LOGIN</h1>
                  </div>
            <form action="/main" method="POST">
            <div class="form-group">
                <input id="" class="form-control form-control-user" type="text" placeholder="관리자 코드" name="id" required>
            </div>
            <div class="form-group">
                <input id="" class="form-control form-control-user" type="password" placeholder="패스워드" name="pw" required>
             </div>
                <button class="btn btn-primary btn-user btn-block" type="submit" >관리자 로그인</button>
                 <input type="hidden" name="group_GB" value="a">
           </form>
                 <hr>
                  <div class="text-center">
                    <a class="small" href="/forgot-password?u=a">비밀번호 찾기</a>
                  </div>
        </div>
</div>
</div>
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