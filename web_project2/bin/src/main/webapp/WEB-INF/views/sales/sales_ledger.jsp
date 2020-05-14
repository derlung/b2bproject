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
                <a> 매출원장</a>
              </div>
              <div id="button">
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
                  <span>기간</span>
                  <input type="text" style="width: 75px;" /> ~
                  <input type="text" style="width: 75px;" />
                </label>

                <label for="">
                  <span>사업자번호/명</span>
                  <input type="text" />
                </label>

                <label for="">
                  <span>고객코드/명</span>
                  <input type="text" />
                </label>

                <label for="">
                  <span>상품코드</span>
                  <input type="text" style="width: 75px;" />
                  <input type="text" />
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
                    <th>No</th>
                    <th>일자</th>
                    <th>주문번호</th>
                    <th>고객코드</th>
                    <th>고객명</th>
                    <th>센터</th>
                    <th>상품코드</th>
                    <th>상품명</th>
                    <th>단위</th>
                    <th>면/과세</th>
                    <th>수량</th>
                    <th>매입단가</th>
                    <th>매출단가</th>
                    <th>매출액</th>
                    <th>부가세</th>
                    <th>총 매출액</th>
                    <th>매익률</th>
                    <th>카테고리</th>
                    <th>카테고리명</th>
                    <th>MD</th>
                    <th>MA</th>
                  </tr>

                  <tr>
                    <td>1</td>
                    <td>2020.04.01</td>
                    <td>20200425-1000001</td>
                    <td>11001</td>
                    <td>스파클 1호점</td>
                    <td>1000</td>
                    <td>100000</td>
                    <td>서울우유 플레인요구르트(1.8L_무가당 1.8Kg/EA)</td>
                    <td>EA</td>
                    <td>과세</td>
                    <td>50</td>
                    <td>345</td>
                    <td>480</td>
                    <td>24000</td>
                    <td>2400</td>
                    <td>26400</td>
                    <td>39%</td>
                    <td>106</td>
                    <td>우유</td>
                    <td>홍길동</td>
                    <td>김인형</td>
                  </tr>

                  <tr>
                    <th></th>
                    <th></th>
                    <th colspan="11">총 금액</th>
                    <th>매출액합</th>
                    <th>부가세합</th>
                    <th>총 합계</th>
                    <th colspan="5"></th>
                  </tr>
                </table>
              </div>
            </div>
          </div>
        </article>
      </section>

<jsp:include page="../layout/footer.jsp"></jsp:include>