<%@page import="java.util.List"%>
<%@page import="com.spring.domain.PriceVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../layout/header3.jsp"></jsp:include>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
$(function(){
	
$('#pt_modal').on('hide.bs.modal', function (e) {
	 $('#pt_result').html("");
     $('#pt_key').val('');
     $('#pt_criteria').val('pt_cd');
	})
$('#creditor_modal').on('hide.bs.modal', function (e) {
	 $('#creditor_result').html("");
     $('#creditor_key').val('');
     $('#creditor_criteria').val('creditor_cd');
	})
$('#center_modal').on('hide.bs.modal', function (e) {
	 $('#center_result').html("");
     $('#center_key').val('');
     $('#center_criteria').val('center_cd');
	})
}) ;
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
   function pt_modal_close() {
	      $("#pt_modal").modal("hide");
	   }
   function creditor_modal_close() {
	      $("#creditor_modal").modal("hide");
	   }
   function center_modal_close() {
	      $("#center_modal").modal("hide");
	   }
   function pt_modal() {
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
   function pt_search(){
	   if($('#pt_key').val()=='') {
	            alert("검색값을 입력해주세요");}
		
	   //값 가져오기
		var criteria =document.getElementById("pt_criteria").value;
		var keyword=	document.getElementById("pt_key").value;

	      $.ajax({
	      //select.php 로 가서
	      url:"pt_search",
	      method:"POST",
	      //위에서 클릭한 employee_id 데이터를 url로 넘겨주고
	      data:{'criteria':criteria,
				'keyword':keyword},
	      success:function(data){
	      //성공하면 select.php에서 뿌린 데이터를 data 변수에 담아 모달-바디에 붙여라
	      var table ="";
	      for (var i = 0; i < data.length; i++) {
	    	  var pt_cd = data[i].pt_cd;
	    	  var pt_NM = data[i].pt_NM;
	    	  var cate_NM = data[i].cate_NM;
	    	  var unit = data[i].unit;
	    	  var origin_NM = data[i].origin_NM;
	    	  var tax_NM = data[i].tax_NM;
	    	  var storage_NM = data[i].storage_NM;
	    	  var exp_D = data[i].exp_D;
	    	  var purchase_rate = data[i].purchase_rate;
	     
	    	  table += "<div style='width:100%;border:1px solid #cacaca;' onclick='javascript:pt_search_click(this)'>";
	      table+="<div style='float:left;height:40px;line-height:40px;background:#FFFFFF';padding:5px; class='cd'' >"+pt_cd+" </div>"+
	      			"<div style='height:20px;line-height:20px;background:#F4FFFD' >"+pt_NM+"</div>"+
	      			"<div style='height:20px;line-height:20px;display:inline-flex;justify-content:space-around;'><div>"+cate_NM+"</div><div>"+origin_NM+"</div></div>";
	      table+="<input type='hidden' value="+purchase_rate+"></div>";
		}
	      $('#pt_result').html(table);
	      }
	      });
	      };
function pt_search_click(obj){

	var cd=$(obj).children().eq(0).text();
	var nm=$(obj).children().eq(1).text();
	var pu=$(obj).children().eq(3).val();
	document.getElementById("pt_cd").value = cd;
	document.getElementById("pt_NM").value = nm;
	document.getElementById("purchase_rate").value=pu;
    $("#pt_modal").modal("hide");
	
	}
	
function creditor_search_click(obj){
	var cd=$(obj).children().eq(0).text();
	var nm=$(obj).children().eq(1).text();
	document.getElementById("creditor_cd").value = cd;
	document.getElementById("creditor_NM").value = nm;
    $("#creditor_modal").modal("hide");
	}
function center_search_click(obj){
	var cd=$(obj).children().eq(0).text();
	document.getElementById("center_cd").value = cd;
    $("#center_modal").modal("hide");
	}
function creditor_search(){
	   if($('#creditor_key').val()=='') {
	            alert("검색값을 입력해주세요");}
		
	   //값 가져오기
		var criteria =document.getElementById("creditor_criteria").value;
		var keyword=	document.getElementById("creditor_key").value;
	      $.ajax({
	      //select.php 로 가서
	      url:"creditor_search",
	      method:"POST",
	      //위에서 클릭한 employee_id 데이터를 url로 넘겨주고
	      data:{'criteria':criteria,
				'keyword':keyword},
	      success:function(data){
	      //성공하면 select.php에서 뿌린 데이터를 data 변수에 담아 모달-바디에 붙여라
	      var table ="";
	      for (var i = 0; i < data.length; i++) {
	    	  var creditor_cd = data[i].creditor_cd;
	    	  var creditor_NM = data[i].creditor_NM;
	    	  var pre_NM = data[i].pre_NM;
	    	  var address = data[i].address;
	      table += "<div style='width:100%;border:1px solid #cacaca;' onclick='javascript:creditor_search_click(this)'>";
	      table+="<div style='float:left;height:40px;line-height:40px;background:#FFFFFF';padding:5px; class='cd'' >"+creditor_cd+" </div>"+
	      			"<div style='height:20px;line-height:20px;background:#F4FFFD' >"+creditor_NM+"</div>"+
	      			"<div style='height:20px;line-height:20px;display:inline-flex;justify-content:space-around;'><div>"+pre_NM+"</div><div>"+address+"</div></div>";
	      table+="</div>";
	      
	      }
	      $('#creditor_result').html(table);
		}
	      });
	      }
	      
function center_search(){
	   if($('#center_key').val()=='') {
	            alert("검색값을 입력해주세요");}
		
	   //값 가져오기
		var criteria =document.getElementById("center_criteria").value;
		var keyword=	document.getElementById("center_key").value;
	      $.ajax({
	      //select.php 로 가서
	      url:"center_search",
	      method:"POST",
	      //위에서 클릭한 employee_id 데이터를 url로 넘겨주고
	      data:{'criteria':criteria,
				'keyword':keyword},
	      success:function(data){
	      //성공하면 select.php에서 뿌린 데이터를 data 변수에 담아 모달-바디에 붙여라
	      var table ="";
	      for (var i = 0; i < data.length; i++) {
	    	  var center_cd = data[i].cate_cd;
	    	  var center_NM = data[i].cate_nm;
	      table += "<div style='width:100%;border:1px solid #cacaca;display:inline-block;' onclick='javascript:center_search_click(this);' >";
	      table +="<div style='height:20px;line-height:20px;background:#F4FFFD' >"+center_cd+"</div>"+
	 			     "<div style='height:20px;line-height:20px;' >"+center_NM+"</div>";
	      table+="</div>";   
	      }
	      $('#center_result').html(table);
		}
	      });
	      }
</script>
<section>
	<article class="contents">
		<div class="form_header">
			<form action="">
				<div class="contents_header">
					<span class="material-icons"> assignment </span> <a> 단가관리</a>
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
					<div>
						<label for=""> <a id="point-star">*</a> <span>센터</span>
							<input />
						</label> 
						
						<!-- <label for="">대분류 </label><select>
							<option>가공식품</option>
							<option>농산물</option>
							<option>수산물</option>
							<option>축산물</option>
							<option>비식품</option>
						</select> <label for=""> <span>카테고리</span>
						</label> <select>
							<option>두부</option>
							<option>당근</option>
							<option>명태</option>
							<option>일회용품</option>
						</select> -->
						
				
						<label for=""> <span>상품코드/명</span> <input />
						</label> 
						
					<!-- 	<label for=""> <span>카테고리</span> <input />
						</label>
						<div style="display: inline-block">
							<input type="radio" name="fruit" value="사과" /> 저장품 <input
								type="radio" name="fruit" checked="checked" /> 협력사제품
						</div> -->
						
				</div>
				</div>
			</form>
		</div>

		<!--본문박스 / 스크롤 없애려면 hidden -->
		<div class="contentbox" style="overflow: scroll;">
			<div id="contentbox_header">
				<div class="table">
					<table>
						<tr>
							<th style="padding: .4rem;">선택</th>
							<th style="padding: .4rem;">센터</th>
							<th style="padding: .4rem;">상품</th>
							<th style="padding: .4rem;">단위</th>
							<th style="padding: .4rem;">원산지</th>
							<th style="padding: .4rem;">보관방법</th>
							<th style="padding: .4rem;">면/과세</th>
							<th style="padding: .4rem;">매입단가</th>
							<th style="padding: .4rem;">구매처</th>
							<th style="padding: .4rem;">구매처명</th>
							<th style="padding: .4rem;">카테고리</th>
							<th style="padding: .4rem;">MD</th>
						</tr>
						<c:forEach var="vo" items="${list}">
							<tr
								onmouseover="javascript:changeTrColor(this, '#FFFFFF', '#F4FFFD')"
								onclick="javascript:clickTrEvent(this)">
								<td style="padding: .4rem;"><input type="checkbox" /></td>
								<td style="padding: .4rem;">${vo.center_FK}</td>
								<td style="padding: .4rem;">${vo.pt_NM}</td>
								<td style="padding: .4rem;">${vo.unit}</td>
								<td style="padding: .4rem;">${vo.origin_FK}</td>
								<td style="padding: .4rem;">${vo.storage_NM}</td>
								<td style="padding: .4rem;">${vo.tax_NM}</td>
								<td style="padding: .4rem;"><input type="text" value="${vo. purchase_cost}" /></td>
								<td style="padding: .4rem;">${vo.creditor_FK}</td>
								<td style="padding: .4rem;">${vo.creditor_NM}</td>
								<td style="padding: .4rem;">${vo.cate_NM}</td>
								<td style="padding: .4rem;">홍길동</td>
							</tr>
						</c:forEach>
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
			<button type="button" onclick="javascript:edit_close()">닫기</button>
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
				<td><input id="center_cd" type="text" style="" name="center_cd"
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

<!---------------------------------------------------------       Modal -------------------------------------------------------------------------------------------------------->
<!----------------------------------------------------------      상품 모달 ------------------------------------------------------------------------------------------------------>
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
						<select style="height: 26px;" id="pt_criteria" name="pt_criteria">
							<option value="pt_cd">상품코드</option>
							<option value="pt_nm">상품명</option>
						</select> <input id="pt_key" name="pt_key" style="height: 26px; width: 70%" />
						<span class="material-icons" onclick="javascript:pt_search()"
							style="vertical-align: middle"> search</span>
					</div>
				</div>
				<form action="">
					<div id="pt_result"class="contentbox" style="overflow: scroll;height:500PX">
						<!--                검색 결과 넣는 곳 -->
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" onclick="javascript:pt_modal_close()">닫기</button>
			</div>
		</div>
	</div>
</div>

<!-------------------------------------------------------------------------------- 구매처 모달 ---------------------------------------------------------------->
<!-------------------------------------------------------------------------------- 구매처 모달 ---------------------------------------------------------------->

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
					<select style="height: 26px;" id="creditor_criteria">
						<option value="creditor_cd">구매처코드</option>
						<option value="creditor_NM">구매처명</option>
					</select> <input id="creditor_key" name="creditor_key"
						style="height: 26px; width: 70%" /> <span class="material-icons"
						onclick="javascript:creditor_search()" style="vertical-align: middle">
						search</span>
				</div>
				<form action="">
					<div class="contentbox" style="overflow: scroll;" id="creditor_result">
						<!--                검색 결과 넣는 곳 -->

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
<!-------------------------------------------------------------------------------- 위치 모달 ---------------------------------------------------------------->
<!-------------------------------------------------------------------------------- 위치 모달 ---------------------------------------------------------------->

<div class="modal fade" id="center_modal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<div style="font-size: 18px; color: #186dbf; font-weight: bold;">
					<a> 센 터 검 색</a>
				</div>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div style="background-color: #cacaca; padding: 5px 15px">
					<select style="height: 26px;" id="center_criteria">
						<option value="center_cd">센터코드</option>
						<option value="center_NM">센터명</option>
					</select> <input id="center_key" name="center_key"
						style="height: 26px; width: 70%" /> <span class="material-icons"
						onclick="javascript:center_search()" style="vertical-align: middle">
						search</span>
				</div>
				<form action="">
					<div class="contentbox" style="overflow: scroll;" id="center_result">
						<!--      검색 결과 넣는 곳 -->
					</div>	
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../layout/footer.jsp"></jsp:include>