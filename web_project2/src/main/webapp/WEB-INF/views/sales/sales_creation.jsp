<%@page import="java.util.List"%>
<%@page import="com.spring.domain.SalesVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../layout/header3.jsp"></jsp:include>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"
	type="text/javascript"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
	type="text/javascript"></script>
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	rel="Stylesheet" type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
<script>
function customer_modal() {
	$("#customer_modal").modal("show");
}
function customer_modal_close() {
    $("#customer_modal").modal("hide");
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
	    	  var pt_NM = data[i].;
	    	  var cate_NM = data[i].center;	     
	    	  table += "<div style='width:100%;border:1px solid #cacaca;' onclick='javascript:pt_search_click(this)'>";
	      table+="<div style='float:left;height:40px;line-height:40px;background:#FFFFFF';padding:5px; class='cd'' >"+pt_cd+" </div>"+
	      			"<div style='height:20px;line-height:20px;background:#F4FFFD' >"+pt_NM+"</div>"+
	      			"<div style='height:20px;line-height:20px;display:inline-flex;justify-content:space-around;'><div>"+cate_NM+"</div><div>"+origin_NM+"</div></div>";
	      table+="</div>";
		}
	      $('#pt_result').html(table);
	      }
	      });
	      };
function customer_search_click(obj){

	var cd=$(obj).children().eq(0).text();
	var nm=$(obj).children().eq(1).text();
	document.getElementById("customer_cd").value = cd;
	document.getElementById("customer_NM").value = nm;
    $("#customer_modal").modal("hide");
	
	}
</script>
<script>
	$(function() {
		$('#datePicker	').datepicker({
			dateFormat : 'yy-mm-dd', //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
			startDate : '-10d', //달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
			endDate : '+10d', //달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
			autoclose : true, //사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
			calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
			clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
			datesDisabled : [ '2019-06-24', '2019-06-26' ],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
			daysOfWeekDisabled : [ 0, 6 ], //선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
			daysOfWeekHighlighted : [ 3 ], //강조 되어야 하는 요일 설정
			disableTouchKeyboard : false, //모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
			immediateUpdates : false, //사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
			multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
			multidateSeparator : ",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
			templates : {
				leftArrow : '&laquo;',
				rightArrow : '&raquo;'
			}, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
			showWeekDays : true,// 위에 요일 보여주는 옵션 기본값 : true
			title : "테스트", //캘린더 상단에 보여주는 타이틀
			todayHighlight : true, //오늘 날짜에 하이라이팅 기능 기본값 :false 
			toggleActive : true, //이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
			weekStart : 0,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
			language : "ko" //달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
		});//datepicker end
	});//ready end
</script>
      <section>
        <article class="contents">
          <div class="form_header">
            <form action="">
              <div class="contents_header">
                <span class="material-icons">
                  assignment
                </span>
                <a> 주문하기</a>
              </div>
              <div id="button">
                <button
                  type="button"
                  onclick="window.open('customer_creation.html')"
                >
                  <span class="material-icons"> post_add </span>저장
                </button>
                <button type="submit">
                  <span class="material-icons">
                    search
                  </span>
                  조회
                </button>
              </div>
              <div class="formbox">
              <div>
              	<label for="" style="padding:0 5px 0 20px;">업체코드</label>
              	<input  onclick="javascript:customer_modal()">
              	<label for="" style="padding:0 5px 0 20px;">업 체 명</label> 
              	<input  readonly>
                <label for="" style="padding:0 5px 0 20px;">
                  <a id="point-star">*</a>
                  <span style="padding:0 ">인수일자</span>
                  <input type="text" id="datePicker" class="form-control"
						value="2020-05-06" style="display: inline; width: 300px">
                </label>
              </div>

                <label for="" style="padding:0 5px 0 20px;">
                  <a id="point-star">*</a>
                  <span style="padding:0 ">출 고 처</span>
                  <input  />
                </label>

                <label for="" style="padding:0 5px 0 20px;">
                  <span style="padding:0 ">상품코드/명</span>
                  <input  />
                </label>

                <label for="" style="padding:0 5px 0 20px;">
                    <span style="padding:0 ">총 주문금액</span>
                    <input />
                  </label>
              </div>
            </form>
          </div>

          <!--본문박스 / 스크롤 없애려면 hidden -->
          <div class="contentbox" style="overflow: scroll ;height:300px;">
            <div>
              <div class="table">
                <table>
                  <tr>
                    <th>선택</th>
                    <th>센터</th> 
                    <th>상품코드</th>
                    <th>상품명</th>
                    <th>단위</th>
                    <th>원산지</th>
                    <th>보관방법</th>
                    <th>면/과세</th>
                             
                    <th>공급가</th>
                    <th>부가세</th>
                    <th>합계</th>
                    <th>마감일</th>
                    <th>마감시간</th>
                  </tr>
                  <c:forEach var="vo" items="${list2}">
  <tr>
                  <td><input type="checkbox" /></td>
                  <td>${vo.center_FK}</td>
                  <td>${vo.pt_FK}</td>
                  <td>${vo.pt_NM}</td>
                  <td>${vo.unit}</td>
                  <td>${vo.origin_NM}</td>
                  <td>${vo.storage_NM}</td>
                  <td>${vo.tax_NM}</td>
                  <td>1500</td>
                  <td>150</td>
                  <td>${vo.tax_NM}</td>
                  <td>${vo.exp_D}</td>
                  <td>${vo.exp_T}</td>
                </tr>
                </c:forEach>
                </table>
              </div>
            </div>
            </div>

            <div class="order_icon" style="margin:11px">
              <span class="material-icons" style="border:1px solid #cacaca;">
                keyboard_arrow_down
              </span>
   
              <span class="material-icons"style="border:1px solid #cacaca;">
                keyboard_arrow_up
                </span>
            </div>

            <div class="contentbox" style="overflow: scroll ;height:300px;"> 
              <div>
                <div class="table">
                  <table>
                    <tr>
                      <th>선택</th>
                      <th>센터</th>
                      <th>상품코드</th>
                      <th>상품명</th>
                      <th>단위</th>
                      <th>원산지</th>
                      <th>보관방법</th>
                      <th>면/과세</th>
                    
                      <th>단가</th>
                      <th>주문수량</th>
                      <th>공급가</th>
                      <th>부가세</th>
                      <th>합계</th>
            
                    </tr>
                    <tr>
  
                    <td><input type="checkbox" /></td>
                    <td>1000</td>
                    <td>10001</td>
                    <td>흙당근(상품 130~200g/개 20Kg/BOX)</td>
                    <td>BOX</td>
                    <td>KR</td>
                    <td>상온</td>
                    <td>면세</td>
               
                    <td>1500</td>                    <td><input type="text" id="table_input"></td>
                    
                    <td>1500</td>
                    <td>150</td>
                    <td>1650</td>
                  </tr>
                  </table>
                </div>
              </div>
              </div>
        </article>
        <table
			style="width: calc(100% - 20px); margin: 0 10px; boder: 1px solid #cacaca; padding: 5px; padding-left: 20px; color: white;">
			<tbody style="width:100%;background: #456786;">
				<tr style="width: 100%	">
					<th colspan="3" style="background-color:#456786;"><label style="padding-left: 20px">[1]개
							선택</label></th>
					<th colspan="2"style="background-color:#456786;"></th>
					<th colspan="3"style="background-color:#456786;"><label style="padding-left: 20px;">총
							수량</label><input value="20" /></th>
					<th colspan="2"style="background-color:#456786;"></th>
					<th colspan="3"style="background-color:#456786;"><label style="padding-left: 20px;">총
							금액</label><input value="200000" /></th>
				</tr>
			</tbody>
		</table>
      </section>
<!-- 구매처 모달 -->
<div class="modal fade" id="customer_modal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<div style="font-size: 18px; color: #186dbf; font-weight: bold;">
					<a> 고 객 사 검 색</a>
				</div>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div style="background-color: #cacaca; padding: 5px 15px">
					<select style="height: 26px;" id="customer_critieria" name="customer_criteria">
						<option value="customer_cd">고객사코드</option>
						<option value="customer_nm">고객사명</option>
					</select> <input id="customer_key" name="customer_key"
						style="height: 26px; width: 70%" /> <span class="material-icons"
						onclick="javascript:pt_search()" style="vertical-align: middle">
						search</span>
						<input id="center" name="center" type="hidden">
				</div>
				<form action="">
					<div id="customer_result"class="contentbox" style="overflow: scroll;height:500px;">
						<!-- 					검색 결과 넣는 곳 							-->
						
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