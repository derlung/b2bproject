<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/header3.jsp"></jsp:include>
 <section>
        <article class="contents">
          <div class="form_header">
            <form action="">
              <div class="contents_header">
                <span class="material-icons">
                  assignment
                </span>
                <a> 협력사 관리</a>
              </div>
              <div id="button">
                <button
                  type="button"
                  onclick="window.open('creditor_creation.html')"
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
                  <span>사업자등록번호</span>
                  <input type="text" />
                </label>

                <label for="">
                  <span>사업자명</span>
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
                    <th>사업자번호</th>
                    <th>상호</th>
                    <th>대표자명</th>
                    <th>사업자주소</th>
                    <th>업태</th>
                    <th>종목</th>
                    <th>연락처</th>
                    <th>이메일</th>
                    <th>담당MD</th>
                  </tr>
				  <c:forEach var="vo" items="${list_cr}">				  
                  <tr>
                    <td>${vo.rn}</td>
                    <td><a href="#">${vo.creditor_cd}</a></td>
                    <td>${vo.creditor_NM}</td>
                    <td>${vo.pre_NM}</td>
                    <td>${vo.address}</td>
                    <td>${vo.business}</td>
                    <td>${vo.issues}</td>
                    <td>${vo.contact}</td>
                    <td>${vo.email}</td>
                    <td>${vo.emp_NM}</td>
                  </tr>
                  </c:forEach>
                </table>
              </div>
            </div>
          </div>
        </article>
      </section>
<jsp:include page="../layout/footer.jsp"></jsp:include>