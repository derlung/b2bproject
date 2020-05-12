
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/header3.jsp"></jsp:include>
<script src="http://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/js/select2.min.js"></script>
<link	href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/css/select2.min.css"	rel="stylesheet" />
<script>
	function update_edit_close(trObj) {
		$(".update_edit").hide();
	}
	function add_edit_close(trObj) {
		$(".add_edit").hide();
	}
	function changeTrColor(trObj, oldColor, newColor) {
		trObj.style.backgroundColor = newColor;
		trObj.onmouseout = function() {
			trObj.style.backgroundColor = oldColor;
		}
	}

	function check() {
		var result = confirm("변경사항을 저장하겠습니까?");
		if (result) {
			pt_update();
		} else {
			return;
		}
		//	return result;
	}

	function check2() {
		var result = confirm("상품 입력을 저장하겠습니까?");
		if (result) {
			pt_add();
		} else {
			return;
		}
		//	return result;
	}

	function clickTrEvent(trObj) {
		var str = "";
		var tr = $(trObj);
		var td = tr.children();

		var no = td.eq(0).text();
		var cd = td.eq(1).text();
		var nm = td.eq(2).text();
		var unit = td.eq(3).text();
		var tax = td.eq(4).text();
		var original = td.eq(5).text();
		var storage = td.eq(6).text();
		var exp = td.eq(7).text();
		var cate_cd = td.eq(8).text();
		var cate_nm = td.eq(9).text();
		var emp = td.eq(10).text();

		$(".add_edit").hide();
		$(".update_edit").show();
		document.getElementById("pt_NM").value = nm;
		document.getElementById("unit").value = unit;
		document.getElementById("origin").value = original;
		document.getElementById("exp_D").value = exp;
		document.getElementById("emp").value = emp;
		document.getElementById("cd").value = cd;

		//면/과세 값 가져오기
		var tax_s = document.getElementById("tax");
		for (var i = 0; i < tax_s.options.length; i++) {
			var t = tax_s.options[i].text;
			if (t === tax) {
				tax_s.selectedIndex = i;
			}
		}

		//보관방법 값 가져오기
		var storage_s = document.getElementById("storage");
		for (var i = 0; i < storage_s.options.length; i++) {
			var s = storage_s.options[i].text;
			if (s === storage) {
				storage_s.selectedIndex = i;
			}
		}
		var origin_s = document.getElementById("origin");
		for (var i = 0; i < origin_s.options.length; i++) {
			var o = origin_s.options[i].text;
			if (o === original) {
				$('#origin').val(origin_s.options[i].value).trigger('change');
			}
		}
		//카테고리 값 가져오기
		//보관방법 값 가져오기
		$('#cate').val(cate_cd).trigger('change');
	}
	function add_edit() {
		$(".add_edit").show();
		$(".update_edit").hide();
	}

	function pt_update() {
		$.ajax({
			url : "update_product",
			method : "POST",
			data : $('#pt_update').serialize(),
			success : function(data) {
				if (data === true) {
					alert("성공적으로 변경되었습니다.");
				} else {
					alert("변경이 실패하였습니다.");
				}
			},
			error : function(data) {
				alert("오류");
			}
		});
	}

	function pt_add() {
		console.log($('#pt_add').serialize());
		$.ajax({
			url : "add_product",
			method : "POST",
			data : $('#pt_add').serialize(),
			success : function(data) {
				console.log("서버 " + data);
				/* if(data===true){
					alert("성공적으로 변경되었습니다.");	
				}else{
					alert("변경이 실패하였습니다.");
				} */
			},
			error : function(data) {
				alert("오류");
			}
		});
	}
	
	//검색버튼 클릭시
	function search(){
		//$("#searchbtn").click(function(){
			let searchForm = $("#search");
			
			//입력값 확인 후 타입 넣어주기
			let keyword=searchForm.find("input[name='keyword']").val();
			let category=searchForm.find("input[name='category']").val();
			
			
			//가져온 값이 숫자가 아닌 경우 타입 변환
			if(isNaN(keyword)){
				searchForm.find("input[name='type']").val("S");
			}else if(keyword==''){
				
			}else{				
				searchForm.find("input[name='type']").val("N");
			}
			
			var type = searchForm.find("input[name='type']").val();
			
			if(category!==''){
				type +="C";				
				searchForm.find("input[name='type']").val(type);
				console.log(type);
			}
			
			
			searchForm.submit();
	//	})
	
	}
</script>
<section>
	<!--본문영역-->
	<article class="contents">
		<div class="form_header">
			<form id="search" action="" method="get">
				<div class="contents_header">
					<span class="material-icons"> assignment </span> <a> 상품관리</a>
				</div>
				<div id="button">
					<button type="button" onclick="javascript:add_edit();">
						<span class="material-icons"> post_add </span>신규
					</button>
					<button type="button" onclick="search();">
						<span class="material-icons"> search </span> 조회
					</button>
				</div>
				<div class="formbox">
					<label for=""> <a id="point-star">*</a> <span>상품명/코드</span>
						<input type="text" name="keyword" value="${cri.keyword}"/>
					</label> <label for=""> <span>카테고리</span> <input type="text" name="category" value="${cri.category}"/>
					</label>
				</div>
				<input type="hidden" name="type" value="${cri.type}"/>
			</form>
		</div>

		<!--본문박스 / 스크롤 없애려면 hidden -->
		<div class="contentbox" style="overflow: scroll;">
			<div id="contentbox_header">
				<div class="table" style="margin-bottom: 0">
					<table>
						<tr>
							<th style="padding: .4rem;">No</th>
							<th style="padding: .4rem;">상품코드</th>
							<th style="padding: .4rem;">상품명</th>
							<th style="padding: .4rem;">단위</th>
							<th style="padding: .4rem;">면/과세</th>
							<th style="padding: .4rem;">원산지</th>
							<th style="padding: .4rem;">보관방법</th>
							<th style="padding: .4rem;">유통기한</th>
							<th style="padding: .4rem;">카테고리</th>
							<th style="padding: .4rem;">카테고리명</th>
							<th style="padding: .4rem;">담당MD</th>
						</tr>
						<c:forEach var="vo" items="${list}">
							<tr onclick="javascript:clickTrEvent(this)"
								onmouseover="javascript:changeTrColor(this, '#FFFFFF', '#F4FFFD')">
								<td style="padding: .4rem;">${vo.rn}</td>
								<td style="padding: .4rem;">${vo.pt_cd}</td>
								<td style="padding: .4rem;">${vo.pt_NM}</td>
								<td style="padding: .4rem;">${vo.unit}</td>
								<td style="padding: .4rem;">${vo.tax_NM}</td>
								<td style="padding: .4rem;">${vo.origin_NM}</td>
								<td style="padding: .4rem;">${vo.storage_NM}</td>
								<td style="padding: .4rem;">${vo.exp_D}</td>
								<td style="padding: .4rem;">${vo.category_fk}</td>
								<td style="padding: .4rem;">${vo.cate_NM}</td>
								<td style="padding: .4rem;">${vo.emp_NM}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
		<!-- start Pagination -->
		<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
       <div class="text-center">
        	<ul class="pagination">
        		<c:if test="${pageVO.prev}">
        			<li class="paginate_button previous"><a href="${pageVO.startPage-1}">Previous</a></li>
        		</c:if>
        		<c:forEach var="idx" begin="${pageVO.startPage}" end="${pageVO.endPage}">
        			<li class="paginate_button ${cri.pageNum==idx?'active':''}"><a href="${idx}">${idx}</a></li>
        		</c:forEach>
        		<c:if test="${pageVO.next}">
        			<li class="paginate_button next"><a href="${pageVO.endPage+1}">Next</a></li>
        		</c:if>
        	</ul>
       </div>
	</article>
</section>



<!-- -------------------------------------      업데이트 창 ------------------------------------------------>
<div class="edit_row update_edit">
	<div class="contents_header">
		<a> 상품관리</a>
	</div>
	<div class="button">
		<button type="button" onclick="return check();">저장</button>
		<button type="reset" onclick="javascript:update_edit_close();">닫기</button>
	</div>
	<form id="pt_update" action="update_product" method="post">
		<!--   -->
		<table>
			<tr>
				<td>상 품 명</td>
				<td colspan="3"><input id="pt_NM" type="text"
					style="width: 80%" name="pt_NM" /></td>
				<td>카테고리</td>
				<td><select id="cate" class="form-control" name="category_fk"
					style="width: 80%">
						<c:forEach var="c" items="${cate}" varStatus="i">
							<option value="${c.cate_cd}">${c.cate_nm}</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td>단 위</td>
				<td><input id="unit" type="text" style="width: 80%" name="unit" />
				</td>
				<td>면/과세</td>
				<td><select name="tax_cd" id="tax">
						<option value="0">면세</option>
						<option value="1">과세</option>
				</select></td>
				<td>보관방법</td>
				<td><select name="storage_cd" id="storage">
						<option value="0">상온</option>
						<option value="1">냉장</option>
						<option value="2">냉동</option>
				</select></td>
			</tr>
			<tr>
				<td>원 산 지</td>
				<td><select id="origin" class="form-control" name="origin_nm"
					style="width: 80%">
						<c:forEach var="c" items="${origin}" varStatus="i">
							<option value="${c.origin_cd}">${c.origin_nm}</option>
						</c:forEach>
				</select></td>
				<td>유통기한</td>
				<td><input id="exp_D" type="text" name="exp_D" /></td>
				<td>M D</td>
				<td><input type="text" id="emp"
					style="background-color: #e0e0e0;" name="emp_NM" readonly /> <input
					type="hidden" id="cd" name="pt_cd" /></td>
			</tr>
		</table>
	</form>
</div>
<!-- -------------------------------------      신규 창 ------------------------------------------------>
<div class="edit_row add_edit">
	<div class="contents_header">
		<span class="material-icons"> add_box </span> <a> 상품추가</a>
	</div>
	<div class="button">
		<button type="button" onclick="return check2();">저장</button>
		<button type="reset" onclick="javascript:add_edit_close()">닫기</button>
	</div>
	<form id="pt_add" action="add_product" method="post">
		<table>
			<tr>
				<td>상 품 명</td>
				<td colspan="3"><input id="pt_NM_a" type="text"
					style="width: 80%" name="pt_NM" /></td>
				<td>카테고리</td>
				<td><select id="cate_a" class="form-control"
					name="category_fk" style="width: 80%">
						<c:forEach var="c" items="${cate}" varStatus="i">
							<option value="${c.cate_cd}">${c.cate_nm}</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td>단 위</td>
				<td><input id="unit_a" type="text" style="width: 80%"
					name="unit" /></td>
				<td>면/과세</td>
				<td><select name="tax_cd" id="tax_a">
						<option value="0">면세</option>
						<option value="1">과세</option>
				</select></td>
				<td>보관방법</td>
				<td><select name="storage_cd" id="storage_a">
						<option value="0">상온</option>
						<option value="1">냉장</option>
						<option value="2">냉동</option>
				</select></td>
			</tr>
			<tr>
				<td>원 산 지</td>
							<td><select id="origin_a" class="form-control"
								name="origin_CD" style="width: 80%">
									<c:forEach var="c" items="${origin}" varStatus="i">
										<option value="${c.origin_cd}">${c.origin_nm}</option>
									</c:forEach>
							</select></td>
				<td>유통기한</td>
				<td><input id="exp_D_a" type="text" name="exp_D" /></td>
				<td>M D</td>
				<td><input type="text" id="emp_a"
					style="background-color: #e0e0e0;" name="emp_NM" readonly /> <!--  <input type="hidden" id="cd_a" name="pt_cd" /> -->
				</td>
			</tr>
		</table>
	</form>
</div>

<%-------------------------------- 페이지 나누기 폼--%>
<form action="product_view" id="myform">
	<input type="hidden" name="keyword" value="${cri.keyword}" />
	<input type="hidden" name="category" value="${cri.category}" />
	<input type="hidden" name="type" value="${cri.type}" />
	<input type="hidden" name="pageNum" value="${cri.pageNum}" />
	<input type="hidden" name="amount" value="${cri.amount}" />
</form>
<%-------------------------------- 페이지 나누기 폼--%>
<script>

$(".paginate_button a").click(function(e){
	e.preventDefault();
	
	let myform = $("#myform");
	myform.find("input[name='pageNum']").val($(this).attr("href"));
	myform.submit();	
})

	
</script>



<script>
	$("#cate").select2();
	$("#origin").select2();
	$("#cate_a").select2();
	$("#origin_a").select2();
</script>

<jsp:include page="../layout/footer.jsp"></jsp:include>