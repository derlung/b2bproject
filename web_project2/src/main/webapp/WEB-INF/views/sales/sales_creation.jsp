<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../layout/header3.jsp"></jsp:include>
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
                <label for="">
                  <a id="point-star">*</a>
                  <span>인수일자</span>
                  <input type="text" />
                </label>

                <label for="">
                  <a id="point-star">*</a>
                  <span>출고처</span>
                  <input type="text" />
                </label>

                <label for="">
                  <span>상품코드/명</span>
                  <input type="text" />
                </label>

                <label for="">
                    <span>총 주문금액</span>
                    <input type="text"/>
                  </label>
              </div>
            </form>
          </div>


       

          <!--본문박스 / 스크롤 없애려면 hidden -->
          <div class="contentbox_order" style="overflow: scroll;">
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

                  <td><input type="checkbox" /></td>
                  <td>1000</td>
                  <td>10001</td>
                  <td>흙당근(상품 130~200g/개 20Kg/BOX)</td>
                  <td>BOX</td>
                  <td>KR</td>
                  <td>상온</td>
                  <td>면세</td>
                                  <td>1500</td>
                  <td>150</td>
                  <td>1650</td>
                  <td>D-1</td>
                  <td>14:00</td>
                  <tr></tr>
                </table>
              </div>
            </div>
            </div>

            <div class="order_icon">
              <span class="material-icons">
                keyboard_arrow_down
              </span>
   
              <span class="material-icons">
                keyboard_arrow_up
                </span>
            </div>

            <div class="contentbox_order" style="overflow: scroll;">
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
                  
                    <tr></tr>
                  </table>
                </div>
              </div>
  
      
              </div>
          </div>
        </article>
      </section>

<jsp:include page="../layout/footer.jsp"></jsp:include>