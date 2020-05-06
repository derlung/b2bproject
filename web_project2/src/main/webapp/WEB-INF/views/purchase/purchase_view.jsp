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
                <a> 매입처리</a>
              </div>
              <div id="button">
                <button
                  type="button"
                  onclick="window.open('creditor_creation.html')"
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
                  <span>구매처명/코드</span>
                  <input type="text" />
                </label>

                <label for="">
                  <a id="point-star">*</a>
                  <span>입고일자</span>
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
                    <th>선택</th>
                    <th>센터</th>
                    <th>상품코드</th>
                    <th>상품</th>
                    <th>단위</th>
                    <th>원산지</th>
                    <th>보관방법</th>
                    <th>면/과세</th>
                    <th>수량</th>
                    <th>구매처</th>
                    <th>구매처명</th>
                    <th>카테고리</th>
                    <th>MD</th>
                  </tr>

                  <tr>
                    <td><input type="checkbox" /></td>
                    <td>1000</td>
                    <td>101000</td>
                    <td>
                      <a href="price_change_view.html">
                        흙당근(상품 130~200g/개 20Kg/BOX)</a
                      >
                    </td>
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
<jsp:include page="../layout/footer.jsp"></jsp:include>