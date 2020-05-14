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
                <a> 미수금</a>
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
                  <span>일자</span>
                  <input type="text" />
                </label>
                <label for="">
                  <a id="point-star">*</a>
                  <span>고객코드/명</span>
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
                    <th>MA</th>
                    <th>고객코드</th>
                    <th>고객명</th>
                    <th>기초잔고</th>
                    <th>순매출</th>
                    <th>부가세</th>
                    <th>총매출</th>
                    <th>입금액</th>
                    <th>기말잔고</th>
                    <th>주문가능액</th>
                  </tr>

                  <tr>
                    <td>1</td>
                    <td>홍길동</td>
                    <td>10111</td>
                    <td>스파클 1호점</td>
                    <td>0</td>
                    <td>190,000</td>
                    <td>19,000</td>
                    <td>209,000</td>
                    <td>209,000</td>
                    <td>0</td>
                    <td>5,000,000</td>
                  </tr>
                </table>
              </div>
            </div>
          </div>
        </article>
      </section>
<jsp:include page="../layout/footer.jsp"></jsp:include>