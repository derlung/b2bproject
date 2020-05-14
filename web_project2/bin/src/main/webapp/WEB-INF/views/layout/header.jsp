<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<title>홈</title>
<script>
	$(function() {
		let tab = '${tab}';
		
		if (tab === '') {
			tab = 'standartize';
		}
		console.log(tab);
		//페이지 로드시 첫 메뉴에 해당하는 것 보여주기
		$('#myList a[href="#' + tab + '"]').tab('show');
		let error = '${error}';
		if (error !== '') {
			alert(error);
		}
	});
</script>
<style>
</style>
 <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap"
      rel="stylesheet"
    />
    <!--ICON-->
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
   <link rel="stylesheet" href="resources/dist/css/style2.css" />
</head>
<body>
   <div id="wrap">
      <!--헤더-->
      <header>
        <div class="header1">
          OOO님 환영합니다.
          <button
            type="submit"
            style="
              font-size: 10px;
              color: white;
              width: auto;
              border: 1px solid white;
              border-radius: 50px;
              background-color: #0079b4;
            "
          >
            LOGOUT
          </button>
          최종 접속시간 : 2020-04-22 16:00:42
        </div>

        <div class="header2 list-group " id="myList" role="tablist">
          <ul>
            <li><a href="" id="logo" ><img src="resources/img/logo.png" width="100px" height="auto"/></a></li>
            <li><a data-toggle="list" href="#standartize" role="tab">기준정보</a> </li>
            <li><a data-toggle="list" href="#purchase" role="tab">구매</a></li>
            <li><a data-toggle="list" href="#sales" role="tab">판매</a></li>
            <li><a data-toggle="list" href="#stock" role="tab">재고</a></li>
            <li> <a	data-toggle="list" href="#accounting" role="tab">결산</a></li>
          </ul>
        </div>
<div class="row">
	<div class="tab-content primary col-xl-12 header3 row smallMenu" id="nav-tabContent">
			<div class="  tab-pane fade"  id="standartize" role="tabpanel">
			<div class="list-group" id="standartize1" role="tablist">
          <ul>
            <li><a data-toggle="list" href="#product_view" role="tab">상품</a></li>
            <li><a data-toggle="list" href="#creditor_view" role="tab">협력사</a></li>
            <li><a data-toggle="list" href="#customer_view" role="tab">고객사</a></li>
          </ul>
			</div>
			</div>
			<div class=" tab-pane fade"  id="purchase" role="tabpanel">
			<div class="list-group" id="standartize2" role="tablist">
          <ul>
            <li><a data-toggle="list" href="#product_view" role="tab">단가관리</a></li>
            <li><a data-toggle="list" href="#creditor_view" role="tab">매입처리</a></li>
            <li><a data-toggle="list" href="#customer_view" role="tab">매입원장</a></li>
            <li><a data-toggle="list" href="#customer_view" role="tab">미지급금</a></li>
          </ul>
			</div>	
				</div>		
				<div class=" tab-pane fade"  id="sales" role="tabpanel">
				<div class="list-group" id="standartize3" role="tablist">
          <ul>
            <li><a data-toggle="list" href="#product_view" role="tab">매출등록</a></li>
            <li><a data-toggle="list" href="#creditor_view" role="tab">매출조회</a></li>
            <li><a data-toggle="list" href="#customer_view" role="tab">판가관리</a></li>
            <li><a data-toggle="list" href="#customer_view" role="tab">미수금</a></li>
          </ul>
			</div>
				</div>
		<div class=" tab-pane fade"  id="stock" role="tabpanel">
		<div class="list-group" id="standartize4" role="tablist">
          <ul>
            <li><a data-toggle="list" href="#product_view" role="tab">재고조회</a></li>
            <li><a data-toggle="list" href="#creditor_view" role="tab">창고관리</a></li>
          </ul>
			</div>	</div>
		<div class="  tab-pane fade"  id="accounting" role="tabpanel">
		<div class="list-group" id="standartize5" role="tablist">
          <ul>
            <li><a data-toggle="list" href="#product_view" role="tab">채권관리</a></li>
            <li><a data-toggle="list" href="#creditor_view" role="tab">채무관리</a></li>
            <li><a data-toggle="list" href="#customer_view" role="tab">계산서</a></li>
          </ul>
			</div>
				</div>
				</div>
			</div>
      </header>
      <!--footer-->
      <footer>
        푸터
      </footer>
    </div>
	<!-- href의 값과 id 값 일치시켜야 움직임 -->
	<div class="container-fluid">
			<div class="row">
				<div class="col-xl-12 in">
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade" id="standartize" role="tabpanel">
						<a data-toggle="list" href="#product_view" role="tab">상품조회</a> 
						<a data-toggle="list" href="#product_creation" role="tab">신규상품등록</a>
						<a data-toggle="list" href="#creditor_view" role="tab">구매처조회</a>
						<a data-toggle="list" href="#creditor_creation" role="tab">구매처등록</a>
						<a data-toggle="list" href="#customer_view" role="tab">고객조회</a>
						<a data-toggle="list" href="#customer_creation" role="tab">고객등록</a>
						</div>
						</div>
						<div class="tab-pane fade" id="search" role="tabpanel">
							<div class="list-group" id="sub2" role="tablist">
								<a data-toggle="list" href="#product_view" role="tab">상품보기</a> 
						<a data-toggle="list" href="#product_creation" role="tab">상품생성</a></div>

						</div>
						<div class="tab-pane fade active" id="modify" role="tabpanel">
							<div class="list-group" id="sub3" role="tablist">
								<a data-toggle="list" href="#product_view" role="tab">매출등록보기</a> 
						<a data-toggle="list" href="#product_creation" role="tab">매출원장</a></div>
						</div>
						<div class="tab-pane fade " id="insert" role="tabpanel">
							<div class="list-group" id="sub4" role="tablist">
								<a data-toggle="list" href="#product_view" role="tab">재고조회</a> 
						<a data-toggle="list" href="#product_creation" role="tab">창고관리</a></div>
						</div>
					</div>
					</div>
				<div class="col-xl-8 in">
					<div class="tab-content" id="nav-tabContent2">
						<div class="tab-pane fade " id="product_view" role="tabpanel">
							<jsp:include page="../standartize/product_view.jsp" />
						</div>
						<div class="tab-pane fade " id="product_creation" role="tabpanel">
							<jsp:include page="../purchase/price_view.jsp" />
						</div>
						<div class="tab-pane fade " id="" role="tabpanel">
							<jsp:include page="../sales/sales_creation.jsp" />
						</div>
						<div class="tab-pane fade " id="" role="tabpanel">
							<jsp:include page="../stock/stock_view.jsp" />
						</div>
					</div>
				</div>
	</div>