<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored ="false" %> 
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <jsp:include page="../layout/header3.jsp"></jsp:include>  
    <!--FONT-->
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
      rel="stylesheet"
    />
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&display=swap" rel="stylesheet">
    <!--ICON-->
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
        <script src="http://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/js/select2.min.js"type="text/javascript">
  </script>
   <style>
      .main-1 {
        width: 100%;
        height: 100%;
        margin: 10px 5px;
   
        /* display: flex; */
      }
      
      .main-1 {
        display: flex;
        justify-content: space-evenly;
      }
      .main-card{
        height: 100%;
        width: 25%;
        margin: 10px;
        border: 5px solid #cacaca;
        border-left: 10px solid #0083db !important;
        padding-bottom:20px;
        padding-top: 20px;
        position: relative;
        display: flex;
        flex-direction: column;
        min-width: 0;
        word-wrap: break-word;
        background-color: #fff;
        background-clip: border-box;
        border: 1px solid #e3e6f0;
        border-radius: 0.35rem; 
      }


      .main-card-left{
        float: left;

      }

      .main-card-right{
        float: right;
        margin-right: 15px;
        align-items: center;
      }


      .card-header{
        font-family: "Nanum Gothic", sans-serif;
        font-size: small;
        font-weight: bolder;
        color: #4e73df;
        padding-left: 20px;
      }


      .card-content{
        font-family: "Nanum Gothic", sans-serif;
        font-size: 30px;
        font-weight: bold;
        color: #4e4e4e;
        margin-top: 5px;
        padding-left: 20px;
      }


      .main-2 {
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: space-evenly;
      }


      #card-icon{
        size: 100%;
        color: #cacaca;
      }


      #chart1,
      #chart2 {
    
        text-align: center;
        height: 100%;
     
      }

      .main-2-1{
        width: 60%;
        padding: 5 px;
        margin: 10px;
        border: 1px solid #cacaca;
        border-radius: 0.35rem; 
        border-top: 0.25em solid #efefef  !important;
      }

      .main-2-2{
        width: 40%;
        padding: 5 px;
        margin: 10px;
        border: 1px solid #cacaca;
        border-radius: 0.35rem; 
        border-top: 0.25em solid #efefef  !important;
      }
      
   

      .chart-header{
        font-family: "Nanum Gothic", sans-serif;
        font-size: 15px;
        color: #4e4e4e;
        font-weight: 600;
        background-color: #efefef ;
        padding: 10px;
        text-align: left;
      }



         .main-3 {
        
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: space-evenly;
      }

      .main-3-1,
      .main-3-2{
        width: 50%;
        padding: 5 px;
        margin: 10px;
        border: 1px solid #cacaca;
         border-top-left-radius: 0.35rem; 
        border-top-right-radius: 0.35rem; 
      }


      .main-board-header{
        font-family: "Nanum Gothic", sans-serif;
        font-size: 15px;
        color: #4e4e4e;
        font-weight: 600;
        background-color: #efefef ;
        padding: 10px;
        text-align: left;
      }
 

      .board-table > table{
        width: 100%;
        
      }
   
      
    </style>



 
  </head>
  <body>
       <section>
        <!--본문영역-->
        <article class="contents">
          <div class="main-1">           
              <!-- <h class="main-card-header">4월30일 현황</h> -->
              <div class="main-card">
                <div class="main-card-1">
                   <div class="main-card-left">
                      <div class="card-header">
                        일 매출 (팀별)
                      </div>
                     
                      <div class="card-content">
                          <c:out value="${getDayTeam}" default="0" />
                      </div>    
                    </div> 
                    <div class="main-card-right">     
                      <span id="card-icon">            
                      <i class="far fa-calendar-check fa-4x" ></i>
                    </span>       
                    </div>
                  </div>
              </div> 


              <!--///////////////////////////////////////-->
              <div class="main-card">
                <div class="main-card-1">
                   <div class="main-card-left">
                      <div class="card-header">
                        월 매출 (팀별)
                      </div>
                     
                      <div class="card-content">
                         <c:out value="${getMonthTeam}" default="0" />
                      </div>    
                    </div> 
                    <div class="main-card-right">     
                      <span id="card-icon">            
                      <i class="fas fa-calendar-alt fa-4x" ></i>
                    </span>       
                    </div>
                  </div>
              </div> 

              <!--///////////////////////////////////////-->
              <div class="main-card">
                <div class="main-card-1">
                   <div class="main-card-left">
                      <div class="card-header">
                        전체 일 매출
                      </div>
                     
                      <div class="card-content">
                     
                        <c:out value="${getDaySum}" default="0" />
                        
                      </div>    	
                    </div> 
                    <div class="main-card-right">     
                      <span id="card-icon">            
                      <i class="far fa-building fa-4x" ></i>
                    </span>       
                    </div>
                  </div>
              </div> 

              <!--///////////////////////////////////////-->
              <div class="main-card">
                <div class="main-card-1">
                   <div class="main-card-left">
                      <div class="card-header">
                        전체 월 매출
                      </div>
                     
                      <div class="card-content">
                        <c:out value="${getMonthSum}" />
                        
                        
                      </div>    
                    </div> 
                    <div class="main-card-right">     
                      <span id="card-icon">            
                      <i class="fas fa-building fa-4x" ></i>
                    </span>       
                    </div>
                  </div>
              </div> 


          </div>

          


            <div class="main-2">
            
              	<div class="main-2-1">
                  <div class="chart-header">
                    월 매출 현황
                  </div>

                  <div id="chart1">         
                  <jsp:include page="../main_view/chart1.jsp"></jsp:include>
                </div>
              </div>
              
      
              
                <div class="main-2-2">
               	 <div class="chart-header">
                    팀별 매출 현황
                </div> 
                <div id="chart2">
                    <jsp:include page="../main_view/chart2.jsp"></jsp:include>
        		
                </div>
              </div>       
          </div>
          
          
  
     <div class="main-3">
        

            <div class="main-3-1">
              <div id="main-board-1">
                <div class="main-board-header">
                  커뮤니티
                  
                </div>
                <div class="board-table">
                  <table>
                    <tr>
                      <th>No</th>
                      <th>글제목</th>
                      <th>작성자</th>
                      <th>작성일</th>
                     
                    </tr>
  
                    <tr>
                    
                      <td></td>
                    </tr>

                  </table>
                </div>
            </div>
            </div>

            <div class="main-3-1">
              <div id="main-board-1">
                <div class="main-board-header">
                  <a href="#" style="text-decoration: none;">알뜰장터</a>
                  
                </div>
                <div class="board-table">
                  <table>
                    <tr>
                      <th>No</th>
                      <th>글제목</th>
                      <th>작성자</th>
                      <th>작성일</th>
                      <th>조회수</th>
                     
                    </tr>
  
                    <tr>
                      <td>1</td>
                      <td>닌텐도 스위치 팔아요~ </td>
                      <td>홍길동</td>
                      <td>2020.05.01</td>
                      <td>321</td>
                    </tr>
                    <tr>     
                      <td>2</td>
                      <td>평창 콘도 숙박권 양도합니다. </td>
                      <td>김미미</td>
                      <td>2020.05.04</td>
                      <td>151</td>
                    </tr>
                  </table>
                </div>
            </div>
            </div>
            </div>
            
            
            
            
        </article>
      </section>

      <!--footer-->
<jsp:include page="../layout/footer.jsp"></jsp:include>
