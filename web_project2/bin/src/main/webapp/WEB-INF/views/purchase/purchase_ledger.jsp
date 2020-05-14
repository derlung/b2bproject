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
                <a> 매입원장</a>
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
                  <span>구매처명/코드</span>
                  <input type="text" />
                </label>

                <label for="">
                  <span>일자</span>
                  <input type="text" />
                </label>

                <label for="">
                  <span>상품명/코드</span>
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
                    <th>매입일자</th>
                    <th>구매처코드</th>
                    <th>구매처명</th>
                    <th>센터</th>
                    <th>상품코드</th>
                    <th>상품명</th>
                    <th>단위</th>
                    <th>면/과세</th>
                    <th>수량</th>
                    <th>매입단가</th>
                    <th>매입액</th>

                    <th>카테고리</th>

                    <th>MD</th>
                  </tr>

                  <tr>
                    <td>1</td>
                    <td>2020.04.01</td>
                    <td>1130112345</td>
                    <td>스파클 1호점</td>
                    <td>1000</td>
                    <td>100000</td>
                    <td>서울우유 플레인요구르트(1.8L_무가당 1.8Kg/EA)</td>
                    <td>EA</td>
                    <td>과세</td>
                    <td>50</td>
                    <td>345</td>
                    <td>480,000</td>
                    <td>우유</td>
                    <td>홍길동</td>
                  </tr>

                  <tr>
                    <td>2</td>
                    <td>2020.04.05</td>
                    <td>1130112345</td>
                    <td>스파클 1호점</td>
                    <td>1000</td>
                    <td>100000</td>
                    <td>서울우유 플레인요구르트(1.8L_무가당 1.8Kg/EA)</td>
                    <td>EA</td>
                    <td>과세</td>
                    <td>50</td>
                    <td>345</td>
                    <td>120,000</td>
                    <td>우유</td>
                    <td>홍길동</td>
                  </tr>
                  <tr>
                    <th></th>
                    <th></th>
                    <th>1130112345</th>
                    <th colspan="8">총 금액</th>
                    <th>600,000</th>
                    <th colspan="5"></th>
                  </tr>
                </table>
              </div>
            </div>
          </div>
        </article>
      </section>
<jsp:include page="../layout/footer.jsp"></jsp:include>