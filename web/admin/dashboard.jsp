<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.system.entities.Massage"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Dashboard</title>
  <!-- General CSS Files -->
  <link rel="stylesheet" href="./assets/css/app.min.css">
  <!-- Template CSS -->
  <link rel="stylesheet" href="./assets/css/style.css">
  <link rel="stylesheet" href="./assets/css/components.css">
  <!-- Custom style CSS -->
  <link rel="stylesheet" href="./assets/css/custom.css">
  <link rel='shortcut icon' type='image/x-icon' href='assets/img/favicon.ico' />
</head>

<body>
  <div class="loader"></div>
  <div id="app">
    <div class="main-wrapper main-wrapper-1">
      <div class="navbar-bg"></div>
      <%@ include file="includes/menu.jsp" %> 
      <%@ include file="includes/header.jsp" %> 
      
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-body">
              <!--Massage Display-->
        <%Massage m =(Massage) session.getAttribute("msg");
       if(m != null){%>
        <div class="alert <%= m.getCssClass() %> alert-dismissible show fade">
               <div class="alert-body">
                 <button class="close" data-dismiss="alert">
                   <span>&times;</span>
                 </button>
                 <%= m.getContent() %>
               </div>
             </div>
       <% session.removeAttribute("msg");}
      %>
            <!-- add content here -->
            <div class="row">
              <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="card card-statistic-1">
                  <div class="card-icon l-bg-purple">
                    <i class="fas fa-cart-plus"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="padding-20">
                      <div class="text-right">
                        <h3 class="font-light mb-0">
<%
    try
    {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/car_rental_db","root","");     
        Statement st=con.createStatement();
        String strQuery = "SELECT COUNT(*) FROM booking";
        ResultSet rs = st.executeQuery(strQuery);

        String Countrow="";
          while(rs.next()){
          Countrow = rs.getString(1);
          out.println("<i class="+"ti-arrow-up text-success"+"></i>"+Countrow);
           } 
        }
    catch (Exception e){
        e.printStackTrace();
      }
      %>
                           
                        </h3>
                        <span class="text-muted">Booking</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="card card-statistic-1">
                  <div class="card-icon l-bg-green">
                    <i class="fas fa-hiking"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="padding-20">
                      <div class="text-right">
                        <h3 class="font-light mb-0">
                          <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/car_rental_db","root","");     
        Statement st=con.createStatement();
        String strQuery = "SELECT COUNT(*) FROM users where role='customer'";
        ResultSet rs = st.executeQuery(strQuery);

        String Countrow="";
          while(rs.next()){
          Countrow = rs.getString(1);
          out.println("<i class="+"ti-arrow-up text-success"+"></i>"+Countrow);
           } 
        }
    catch (Exception e){
        e.printStackTrace();
      }
      %>
                        </h3>
                        <span class="text-muted">New Clients</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="card card-statistic-1">
                  <div class="card-icon l-bg-cyan">
                    <i class="fas fa-chart-line"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="padding-20">
                      <div class="text-right">
                        <h3 class="font-light mb-0">
                          <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/car_rental_db","root","");     
        Statement st=con.createStatement();
        String strQuery = "SELECT COUNT(*) FROM users where role='customer' and `status`='approved'";
        ResultSet rs = st.executeQuery(strQuery);

        String Countrow="";
          while(rs.next()){
          Countrow = rs.getString(1);
          out.println("<i class="+"ti-arrow-up text-success"+"></i>"+Countrow);
           } 
        }
    catch (Exception e){
        e.printStackTrace();
      }
      %>
                        </h3>
                        <span class="text-muted">Approved Clients</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="card card-statistic-1">
                  <div class="card-icon l-bg-orange">
                    <i class="fas fa-dollar-sign"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="padding-20">
                      <div class="text-right">
                        <h3 class="font-light mb-0">
                         <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/car_rental_db","root","");     
        Statement st=con.createStatement();
        String strQuery = "SELECT sum(`totalamount`) FROM `booking`";
        ResultSet rs = st.executeQuery(strQuery);

        String Countrow="";
          while(rs.next()){
          Countrow = rs.getString(1);
          out.println("<i class="+"ti-arrow-up text-success"+"></i>$"+Countrow);
           } 
        }
    catch (Exception e){
        e.printStackTrace();
      }
      %>
                        </h3>
                        <span class="text-muted">Total Income</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              
              <div class="col-md-6 col-lg-12">
              <div class="card">
                <div class="card-header">
                  <h4>Recent Payments</h4>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table table-hover mb-0">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>Client Name</th>
                          <th>Date</th>
                          <th>Payment Method</th>
                          <th>Amount</th>
                        </tr>
                      </thead>
                      <tbody>
                          <%
                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/car_rental_db","root","");     
                                Statement st=con.createStatement();
                                String strQuery = "SELECT * FROM `booking` as b , users as u WHERE b.`userid`=u.uid";
                                ResultSet rs = st.executeQuery(strQuery);
                                int i =0;
                                  while(rs.next()){
                                    out.println("<tr>");
                                    i++;
                                    out.println("<td>"+ i +"</td>");
                                    out.println("<td>"+rs.getString("fname")+"</td>");
                                    out.println("<td>"+rs.getString("dated_at")+"</td>");
                                    out.println("<td>"+rs.getString("paymentDetail")+"</td>");
                                    out.println("<td>$"+rs.getInt("totalamount")+"</td>");
                                    out.println("</tr>");
                                   } 
                                }
                            catch (Exception e){
                                e.printStackTrace();
                              }
                              %>
                        
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            </div>
            
          </div>
        </section>
        
      </div>
      <%@ include file="includes/footer.jsp" %> 
    </div>
  </div>
  <%@ include file="includes/script.jsp" %>
</body>


<!-- blank.html  21 Nov 2019 03:54:41 GMT -->
</html>