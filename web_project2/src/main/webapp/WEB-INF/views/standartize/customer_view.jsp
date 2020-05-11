<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><jsp:include page="../layout/header3.jsp"></jsp:include>

<script src="http://code.jquery.com/jquery-1.11.1.min.js"
	type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/js/select2.min.js"
	type="text/javascript">
</script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/css/select2.min.css"
	rel="stylesheet" />
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
		var result = confirm("신규 입력을 저장하겠습니까?");
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

	
		var customer_cd = td.eq(1).text();
		var pre_NM = td.eq(2).text();
		var customer_rcd = td.eq(3).text();
		var customer_NM = td.eq(4).text();
		var address = td.eq(5).text();
		var center_FK = td.eq(6).text();
		var emp_NM = td.eq(7).text();
		var password = td.eq(8).text();

		
		

		$(".add_edit").hide();
		$(".update_edit").show();
		document.getElementById("customer_cd").value = customer_cd;
		document.getElementById("pre_NM").value = pre_NM;
		document.getElementById("customer_rcd").value = customer_rcd;
		document.getElementById("customer_NM").value = customer_NM;
		document.getElementById("address").value = address;
		document.getElementById("center_FK").value = center_FK;
		document.getElementById("emp_NM").value = emp_NM;
		document.getElementById("password").value = password;

		
		
		
		
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
</script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/css/select2.min.css"
	rel="stylesheet" />
	
	
	
	






<section>
               <article class="contents">
          <div class="form_header">
            <form action="">
              <div class="contents_header">
                <span class="material-icons">
                  assignment
                </span>
                <a> 고객사 관리</a>
              </div>
              <div id="button">
                <button
                  type="button"
                  onclick="javascript:add_edit();"
                >
                  <span class="material-icons"> post_add </span>신규
                </button>
                <button type="submit">
                  <span class="material-icons">
                    search
                  </span>
                  조회
                </button>
              </div>
              <div class="formbox">
                <label for="">
                  <a id="point-star">*</a>
                  <span>고객코드/명</span>
                  <input type="text" />
                </label>

                <label for="">
                  <span>사업자등록번호</span>
                  <input type="text" />
                </label>
              </div>
            </form>
          </div>

          <!--본문박스 / 스크롤 없애려면 hidden -->
          <div class="contentbox" style="overflow: scroll;">
            <div id="contentbox_header">
              <div class="table" style="margin-bottom: 0">
                <table>
                  <tr>
                    <th style="padding: .4rem;">No</th>
                    <th style="padding: .4rem;">고객코드</th>
                    <th style="padding: .4rem;">고객명</th>
                    <th style="padding: .4rem;">사업자번호</th>
                    <th style="padding: .4rem;">사업자명</th>
                    <th style="padding: .4rem;">배송주소</th>
                    <th style="padding: .4rem;">센터</th>
                    <th style="padding: .4rem;">담당MA</th>
                  </tr>
				  <c:forEach var="vo" items="${list_c}">	
                 <tr onclick="javascript:clickTrEvent(this)"
								onmouseover="javascript:changeTrColor(this, '#FFFFFF', '#F4FFFD')">
                     <td style="padding: .4rem;">1</td>
                     <td style="padding: .4rem;">${vo.customer_cd}</td>
                     <td style="padding: .4rem;">${vo.pre_NM}</td>
                     <td style="padding: .4rem;">${vo.customer_rcd}</td>
                     <td style="padding: .4rem;">${vo.customer_NM}</td>
                     <td style="padding: .4rem;">${vo.address}</td>
                     <td style="padding: .4rem;">${vo.center_FK}</td>
                     <td style="padding: .4rem;">${vo.emp_NM}</td>
                  </tr>
                  </c:forEach>
                </table>
              </div>
            </div>
          </div>
        </article>
      </section>
      
      
      
<!-- -------------------------------------      업데이트 창 ------------------------------------------------>
<div class="edit_row update_edit">
	<div class="contents_header">
		<a> 고객사 정보 수정</a>
	</div>
	<div class="button">
		<button type="button" onclick="return check();">저장</button>
		<button type="reset" onclick="javascript:update_edit_close();">닫기</button>
	</div>
	<form id="pt_update" action="update_product" method="post">
		<!--   -->
		<table>
			<tr>
				<td>고객코드</td>
				<td colspan="2">
				<input type="text" id="customer_cd"
					style="background-color: #e0e0e0;width: 100%" name="customer_cd" readonly />
				</td>
					
					
				<td>고객명</td>
				<td colspan="2">
				<input id="pre_NM" type="text" style="width: 100%" name="pre_NM" />
				</td>
			</tr>
			
			<tr>
				<td>사업자번호</td>
				<td><input id="customer_rcd" type="text" style="width: 100%" name="customer_rcd" />
				</td>
				<td>사업자명</td>
				<td><input id="customer_NM" type="text" style="width: 100%" name="customer_NM" /></td>
				<td>대표자명</td>
				<td><input id="unit" type="text" style="width: 100%" name="unit" /></td>
			</tr>
			
			<tr>
				<td>배송주소</td>
				<td colspan="3"><input id="address" type="text" style="width: 100%" name="address" /></td>	
				<td>담당MA</td>
				<td><input id="emp_NM" type="text" style="width: 100%" name="emp_NM" /></td>

			</tr>
			
			
			<tr>
				<td>로그인ID</td>
				<td><input id="customer_cd" type="text" style="width: 100%" name="customer_cd" readonly/></td>
				<td>PW</td>
				<td><input id="password" type="text" style="width: 100%" name="password" /></td>
				
				<td>이용센터</td>
				<td><input type="text" id="center_FK"
					style="background-color: #e0e0e0;width: 100%" name="center_FK"  /> <input
					type="hidden" id="cd" name="pt_cd" /></td>
			</tr>
		</table>
	</form>
</div>
<!-- -------------------------------------      신규 창 ------------------------------------------------>
<div class="edit_row add_edit">
	<div class="contents_header">
		<span class="material-icons"> add_box </span> <a> 신규 고객생성</a>
	</div>
	<div class="button">
		<button type="button" onclick="return check2();">저장</button>
		<button type="reset" onclick="javascript:add_edit_close()">닫기</button>
	</div>
	<form id="pt_add" action="add_product" method="post">
		<table>
			<tr>
				<td>고객코드</td>
				<td colspan="2">
				<input type="text" id="customer_cd_a"
					style="background-color: #e0e0e0;width: 100% " name="customer_cd" readonly />
					${vo.customer_cd}</td>
					
					
				<td>고객명</td>
				<td colspan="2">
				<input type="text" id="pre_NM_a"
					style="background-color: #e0e0e0;width: 100% " name="pre_NM" />
					</td>
			</tr>
			
			<tr>
				<td>사업자번호</td>
				<td><input id="customer_rcd_a" type="text" style="width: 100%" name="customer_rcd" />
				</td>
				<td>사업자명</td>
				<td><input id="customer_NM_a" type="text" style="width: 100%" name="customer_NM" /></td>
				<td>대표자명</td>
				<td><input id="unit" type="text" style="width: 100%" name="unit" /></td>
			</tr>
			
			<tr>
				<td>배송주소</td>
				<td colspan="3"><input id="address_a" type="text" style="width: 100%" name="address" /></td>	
				<td>담당MA</td>
				<td><input id="emp_NM_a" type="text" style="width: 100%" name="emp_NM" /></td>

			</tr>
			
			
			<tr>
				<td>로그인ID</td>
				<td><input id="customer_cd" type="text" style="width: 100%" name="customer_cd" readonly/></td>
				<td>PW</td>
				<td><input id="password_a" type="text" style="width: 100%" name="password" /></td>
				
				<td>이용센터</td>
				<td><input type="text" id="center_FK_a"
					style="background-color: #e0e0e0;width: 100%" name="center_FK" /> <input
					type="hidden" id="cd" name="pt_cd" /></td>
			</tr>
		</table>
	</form>
</div>
<script>
	$("#cate").select2();
	$("#origin").select2();
	$("#cate_a").select2();
	$("#origin_a").select2();
</script>
<jsp:include page="../layout/footer.jsp"></jsp:include>