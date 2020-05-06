<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../layout/header3.jsp"></jsp:include>
<script>
	function changeTrColor(trObj, oldColor, newColor) {
		//행 마우스 올리면 색변환
		trObj.style.backgroundColor = newColor;
		trObj.onmouseout = function() {
			trObj.style.backgroundColor = oldColor;
		}
	}
	function clickTrEvent(trObj) {
		// 행 클릭시 변경 창 보이기
		$(".edit_row").show();

	}
	function edit_close(trObj) {
		// 변경 창 닫기
		$(".edit_row").hide();
	}
	function pt_modal() {
		// 		if($('#name').val()=='')
		// 		{
		// 		alert("이름을 입력해주세요");
		// 		}else if($('#address').val()=='')
		// 		{
		// 		alert("주소를 입력해주세요");

		// $.ajax({
		// //select.php 로 가서
		// url:"select.php",
		// method:"POST",
		// //위에서 클릭한 employee_id 데이터를 url로 넘겨주고
		// data:{employee_id:employee_id},
		// success:function(data){
		// //성공하면 select.php에서 뿌린 데이터를 data 변수에 담아 모달-바디에 붙여라
		// $('#employee_detail').html(data);
		// $('#dataModal').modal("show");
		// }
		// });
		// });

		$("#pt_modal").modal("show");
	}
	function creditor_modal() {
		$("#creditor_modal").modal("show");
	}
	function center_modal() {
		$("#center_modal").modal("show");
	}
	function add_check() {
		var result = confirm("단가를 등록하겠습니까?");
		return result;
	}
</script>
<section>
	<article class="contents">
		<div class="form_header">
			<form action="">
				<div class="contents_header">
					<span class="material-icons"> assignment </span> <a> 단가조회</a>
				</div>
				<div id="button">
					<button type="button" onclick="javascript:clickTrEvent(this)">
						<span class="material-icons"> add </span> 신규
					</button>
					<button type="submit">
						<span class="material-icons"> post_add </span>저장
					</button>
					<button type="button">
						<span class="material-icons"> search </span> 조회
					</button>
				</div>
				<div class="formbox">
					<label for=""> <a id="point-star">*</a> <span>상품명/코드</span>
						<input type="text" />
					</label> <label for=""> <span>구매처명/코드</span> <input type="text" />
					</label> <label for=""> <span>위치</span> <input type="text" />
					</label>

				</div>
			</form>
		</div>

		<!--본문박스 / 스크롤 없애려면 hidden -->
		<div class="contentbox" style="overflow: scroll;">
			<div id="contentbox_header">
				<div class="table">
					<table>
						<tr>
							<th>선택</th>
							<th>센터</th>
							<th>상품</th>
							<th>단위</th>
							<th>원산지</th>
							<th>보관방법</th>
							<th>면/과세</th>
							<th>매입단가</th>
							<th>구매처</th>
							<th>구매처명</th>
							<th>카테고리</th>
							<th>MD</th>
						</tr>

						<tr
							onmouseover="javascript:changeTrColor(this, '#FFFFFF', '#F4FFFD')">
							<td><input type="checkbox" /></td>
							<td>1000</td>
							<td>흙당근(상품 130~200g/개 20Kg/BOX)</td>
							<td>BOX</td>
							<td>KR</td>
							<td>상온</td>
							<td>면세</td>
							<td><input type="text" /></td>
							<td>6008112345</td>
							<td>스타벅스</td>
							<td>당근</td>
							<td>홍길동</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</article>
</section>
<div class="edit_row">
	<div class="contents_header">
		<span class="material-icons"> add_box </span> <a> 단가 등록 </a>
	</div>
	<form id="add_price" action="/purchase/add_price" method="post"
		onsubmit="return add_check();">
		<div class="button">
			<button type="submit">등록</button>
			<button type="reset">다시입력</button>
			<button type="reset" onclick="javascript:edit_close()">닫기</button>
		</div>
		<table style="">
			<tr>
				<td>상품코드</td>
				<td><input id="pt_cd" type="text" style="" name="pt_cd"
					onclick="javascript:pt_modal()" /></td>
				<td>상 품 명</td>
				<td colspan="3"><input id="pt_NM" type="text" style=""
					name="pt_NM" readonly /></td>
			</tr>
			<tr>
				<td>구매처코드</td>
				<td><input id="creditor_cd" type="text" style=""
					name="creditor_NM" onclick="javascript:creditor_modal()" /></td>
				<td>구매처명</td>
				<td colspan="3"><input id="creditor_NM" type="text" style=""
					name="creditor_NM" readonly /></td>
			</tr>
			<tr>
				<td>위 치</td>
				<td><input id="center_NM" type="text" style="" name="center_NM"
					onclick="javascript:center_modal()" /></td>
				<td>마 감 일</td>
				<td><input id="exp_D" type="text" style="" name="exp_D"
					value="1" /></td>
				<td>마감시간</td>
				<td><input id="exp_T" type="text" style="" name="exp_T"
					value="17" /></td>
			</tr>
			<tr>
				<td>매 익 률</td>
				<td><input id="purchase_rate" type="text" style=""
					name="purchase_rate" readonly /></td>
				<td>매입단가</td>
				<td><input id="purchase_cost" type="text" style=""
					name="purchase_cost" /></td>
				<td>매출단가</td>
				<td><input id="sale_cost" type="text" style="" name="sale_cost" /></td>
			</tr>
		</table>
	</form>
</div>

<!--------------       Modal ----------------------------->
<!-- 상품 모달 -->
<div class="modal fade" id="pt_modal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<div style="font-size: 18px; color: #186dbf; font-weight: bold;">
					<a> 상 품 검 색</a>
				</div>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="modal_searchbox">
					<div style="background-color: #cacaca; padding: 5px 15px">
						<select style="height: 26px;">
							<option value="pt_cd">상품코드</option>
							<option value="pt_nm">상품명</option>
						</select> <input id="search_value" name="search_value"
							style="height: 26px; width: 70%" /> <span class="material-icons"
							onclick="javascript:pt_search()" style="vertical-align: middle">
							search</span>
					</div>
				</div>
				<form action="">
					<div class="contentbox" style="overflow: scroll;">
						<!-- 					검색 결과 넣는 곳 -->

					</div>
				</form>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">저장</button>
				<button type="reset" class="btn btn-default">다시입력</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<!-- 구매처 모달 -->
<div class="modal fade" id="creditor_modal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<div style="font-size: 18px; color: #186dbf; font-weight: bold;">
					<a> 구 매 처 검 색</a>
				</div>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div style="background-color: #cacaca; padding: 5px 15px">
					<select style="height: 26px;">
						<option value="creditor_cd">구매처코드</option>
						<option value="creditor_nm">구매처명</option>
					</select> <input id="search_value" name="search_value"
						style="height: 26px; width: 70%" /> <span class="material-icons"
						onclick="javascript:pt_search()" style="vertical-align: middle">
						search</span>
				</div>
				<form action="">
					<div class="contentbox" style="overflow: scroll;">
						<!-- 					검색 결과 넣는 곳 -->

					</div>
				</form>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">저장</button>
				<button type="reset" class="btn btn-default">다시입력</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
<!-- 위치 모달 -->
<div class="modal fade" id="center_modal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<div style="font-size: 18px; color: #186dbf; font-weight: bold;">
					<a>위 치 검 색</a>
				</div>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div style="background-color: #cacaca; padding: 5px 15px">
					<select style="height: 26px;">
						<option value="center_cd">센터코드</option>
						<option value="center_nm">센터명</option>
					</select> <input id="search_value" name="search_value"
						style="height: 26px; width: 70%" /> <span class="material-icons"
						onclick="javascript:pt_search()" style="vertical-align: middle">
						search</span>
				</div>
			</div>
			<form action="">
				<div class="contentbox" style="overflow: scroll;">
					<!-- 					검색 결과 넣는 곳 -->

				</div>
			</form>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">저장</button>
				<button type="reset" class="btn btn-default">다시입력</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../layout/footer.jsp"></jsp:include>