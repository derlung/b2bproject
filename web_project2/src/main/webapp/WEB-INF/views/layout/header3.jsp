<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
	
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
  
  
<!-- 	    <script src="/path/to/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
 -->	    
		    
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous" ></script>
	

	
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
	


	

<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap"
	rel="stylesheet" />
<!--ICON-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" />
<link rel="stylesheet" href="/resources/dist/css/style2.css" />
<title>홈</title>
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
			<div class="list-group flex-md-row header2 " id="myList" 	role="tablist">
				<a href="" id="logo"><img src="/resources/img/logo.png"
					width="100px" height="auto" /></a><a data-toggle="list"
					href="#standartize" role="tab">기준정보</a> <a data-toggle="list"
					href="#purchase" role="tab">구매</a> <a data-toggle="list"
					href="#sales" role="tab">판매</a> <a data-toggle="list" href="#stock"
					role="tab">재고</a> <a data-toggle="list" href="#accounting"
					role="tab">결산</a>
			</div>
			<div class=" smallMenu">
				<div class=" tab-content" id="nav-tabContent">
					<div class="tab-pane fade" id="standartize" role="tabpanel">
					<div class="list-group flex-md-row" id="standartize_sub">
							<a href="/standartize/product_view" >상품</a> 
							<a href="/standartize/creditor_view" role="tab">협력사</a> 
							<a href="/standartize/customer_view" role="tab">고객사</a>
							</div>
					</div>
					<div class="tab-pane fade " id="purchase" role="tabpanel">
						<div class="list-group flex-md-row" id="purchase_sub">
							<a href="/purchase/price_view" >단가관리</a>
							<a href="/purchase/purchase_view" role="tab">매입처리</a> 
							<a href="/purchase/purchase_ledger" role="tab">매입원장</a> 
							<a href="/purchase/amount_outstanding" role="tab">미지급금</a>
							</div>
					</div>
					<div class="tab-pane fade" id="sales" role="tabpanel">
						<div class="list-group flex-md-row" id="sales_sub" >
							<a href="/sales/sales_creation" >매출등록</a>
							<a href="/sales/sales_ledger" >매출조회</a> 
							<a href="/sales/sales_exception_price">판가관리</a>
							<a href="/sales/accounts_payable">미수금</a>
						</div>
					</div>
					<div class="tab-pane fade " id="stock" role="tabpanel">
						<div class="list-group flex-md-row" id="stock_sub" >
							<a href="/stock/stock_view" >재고조회</a> 
							<a href="/stock/storage_view" >창고관리</a>
						</div>
					</div>
					<div class="tab-pane fade " id="accounting" role="tabpanel">
						<div class="list-group flex-md-row" id="accounting_sub">
							<a href="#product_view">채권관리</a> 
							<a href="#creditor_view">채무관리</a> 
							<a href="#customer_view">계산서</a>
						</div>
					</div>
				</div>
			</div>
		</header>
		<script>
			$('div#nav-tabContent a').on('shown.bs.tab', function(e) {
				var array = $('div#nav-tabContent a');
				console.log(e.target);
				$(e.target).removeClass('active');
				$(e.target).removeClass('show');

			})
		</script>
	</div>