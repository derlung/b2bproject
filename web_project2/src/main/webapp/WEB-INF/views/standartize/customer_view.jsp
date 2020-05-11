<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><jsp:include page="../layout/header3.jsp"></jsp:include>
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
                  onclick="window.open('customer_creation.html')"
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
              <div class="table">
                <table>
                  <tr>
                    <th>No</th>
                    <th>고갴코드</th>
                    <th>고객명</th>
                    <th>사업자번호</th>
                    <th>사업자명</th>
                    <th>배송주소</th>
                    <th>센터</th>
                    <th>담당MA</th>
                  </tr>
				  <c:forEach var="vo" items="${list_c}">	
                  <tr>
                    <td>${vo.rn}</td>
                    <td><a href="#">${vo.customer_cd}</a></td>
                    <td>${vo.pre_NM}</td>
                    <td>${vo.customer_rcd}</td>
                    <td>${vo.customer_NM}</td>
                    <td>${vo.address}</td>
                    <td>${vo.center_FK}</td>
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