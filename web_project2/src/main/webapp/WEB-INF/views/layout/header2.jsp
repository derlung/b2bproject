<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
<title>홈</title>
<script>

</script>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap"
	rel="stylesheet" />
<!--ICON-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" />
<link rel="stylesheet" href="resources/dist/css/style2.css?1" />
</head>
<body>
	<div id="wrap">
		<header>
			<div class="header1">
				OOO님 환영합니다.
				<button type="submit"
					style="font-size: 10px; color: white; width: auto; border: 1px solid white; border-radius: 50px; background-color: #0079b4;">
					LOGOUT</button>
				최종 접속시간 : 2020-04-22 16:00:42
			</div>
			<!-- href의 값과 id 값 일치시켜야 움직임 -->
			<div class="list-group flex-md-row header2 " id="myList" role="tablist">
				<a href="" id="logo"><img src="resources/img/logo.png" width="100px" height="auto" /></a>
				<a data-toggle="list" href="#standartize" role="tab">기준정보</a> 
				<a data-toggle="list" href="#purchase" role="tab">구매</a> 
				<a data-toggle="list" href="#sales" role="tab">판매</a> 
				<a data-toggle="list" href="#stock"	role="tab">재고</a>
				<a data-toggle="list" href="#accounting" role="tab">결산</a>
			</div>
			<div class="tab-content smallMenu">				
				<div class="tab-pane fade" id="standartize" role="tabpanel">
					<div class="list-group flex-md-row" id="standartize_sub" role="tablist">
						<a data-toggle="tab" href="#product_view" role="tab">상품</a>
						<a data-toggle="tab" href="#creditor_view" role="tab">협력사</a>
						<a data-toggle="tab" href="#customer_view" role="tab">고객사</a>
					</div>
					<div class="tab-content">
			          <div class="tab-pane fade" id="product_view" role="tabpanel">
			          	<jsp:include page="../standartize/product_view.jsp" />
			          </div>
			          <div class="tab-pane fade" id="creditor_view" role="tabpanel">
			          	<jsp:include page="../standartize/creditor_view.jsp" />
			          </div>
			          <div class="tab-pane fade" id="customer_view" role="tabpanel">
			          	<jsp:include page="../standartize/customer_view.jsp" />
			          </div>
			        </div>
				</div>
				<div class="tab-pane fade" id="purchase" role="tabpanel">
					<div class="list-group flex-md-row" id="purchase_sub" role="tablist">
						<a data-toggle="tab" href="#price_view" role="tab">단가관리</a>
						<a data-toggle="tab" href="#purchase_view" role="tab">매입처리</a> 
						<a data-toggle="tab" href="#purchase_ledger" role="tab">매입원장</a> 
						<a data-toggle="tab" href="#amount_outstanding" role="tab">미지급금</a>
					</div>
					<div class="tab-content">
			          <div class="tab-pane fade" id="price_view" role="tabpanel">
			          	<jsp:include page="../purchase/price_view.jsp" />
			          </div>
			          <div class="tab-pane fade" id="purchase_view" role="tabpanel">
			          	<jsp:include page="../purchase/purchase_view.jsp" />
			          </div>
			          <div class="tab-pane fade" id="purchase_ledger" role="tabpanel">
			          	<jsp:include page="../purchase/purchase_ledger.jsp" />
			          </div>
			          <div class="tab-pane fade" id="amount_outstanding" role="tabpanel">
			          	<jsp:include page="../purchase/amount_outstanding.jsp" />
			          </div>
			        </div>
				</div>
				<div class="tab-pane fade" id="sales" role="tabpanel">
					<div class="list-group flex-md-row" id="sales_sub" role="tablist">
						<a data-toggle="tab" href="#sales_creation" role="tab">매출등록</a>
						<a data-toggle="tab" href="#sales_ledger" role="tab">매출조회</a>
						<a data-toggle="tab" href="#sales_exception_price" role="tab">판가관리</a>
						<a data-toggle="tab" href="#accounts_payable" role="tab">미수금</a>
					</div>
				</div>
				<div class="tab-pane fade " id="stock" role="tabpanel">
					<div class="list-group flex-md-row" id="stock_sub" role="tablist">
						<a data-toggle="tab" href="#stock_view" role="tab">재고조회</a> 
						<a data-toggle="tab" href="#storage_view" role="tab">창고관리</a>
					</div>
				</div>
				<div class="tab-pane fade " id="accounting" role="tabpanel">
					<div class="list-group flex-md-row" id="accounting_sub"	role="tablist">
						<a data-toggle="tab" href="#product_view" role="tab">채권관리</a> 
						<a data-toggle="tab" href="#creditor_view" role="tab">채무관리</a>
						<a data-toggle="tab" href="#customer_view" role="tab">계산서</a>
					</div>
				</div>				
			</div>
		</header>		
	</div>