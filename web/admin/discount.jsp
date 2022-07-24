<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.system.entities.Users"%>
<%@page import="com.system.dao.UserDao"%>
<%@page import="com.system.helper.ConnectionProvider"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Dashboard</title>
  <!-- General CSS Files -->
  <link rel="stylesheet" href="./assets/css/app.min.css">
  <!-- Template CSS -->
  <link rel="stylesheet" href="./assets/bundles/datatables/datatables.min.css">
  <link rel="stylesheet" href="./assets/bundles/datatables/DataTables-1.10.16/css/dataTables.bootstrap4.min.css">
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
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>Booking Details</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped table-hover" id="tableExport" style="width:100%;">
                        <thead>
                          <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Mobile</th>
                            <th>Licence Number</th>
                            <th>Licence Expiry</th>
                            <th>Country</th>
                            <th>Address</th>
                            <th>Pick Up Location</th>
                            <th>Drop Off Location</th>
                            <th>Pick Up Date</th>
                            <th>Drop Off Date</th>
                            <th>Time</th>
                            <th>Total Amount</th>
                            <th>Discount</th>
                            <th colspan="2">Action</th>
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
                                
                                  while(rs.next()){
                                    out.println("<tr>");
                                    out.println("<td>"+rs.getString("fname")+" "+rs.getString("lname")+"</td>");
                                    out.println("<td>"+rs.getString("email")+"</td>");
                                    out.println("<td>"+rs.getString("mobile")+"</td>");
                                    out.println("<td>"+rs.getString("licenceNumber")+"</td>");
                                    out.println("<td>"+rs.getString("licenceExpiry")+"</td>");
                                    out.println("<td>"+rs.getString("countryOfLicence")+"</td>");
                                    out.println("<td>"+rs.getString("address")+"</td>");
                                    out.println("<td>"+rs.getString("PickUp")+"</td>");
                                    out.println("<td>"+rs.getString("DropOff")+"</td>");
                                    out.println("<td>"+rs.getString("PickUpDate")+"</td>");
                                    out.println("<td>"+rs.getString("DropOffDate")+"</td>");
                                    out.println("<td>"+rs.getString("Time")+"</td>");
                                    out.println("<td>"+rs.getString("totalamount")+"</td>");
                                    out.println("<td>"+rs.getString("discount")+"</td>");
                            %>
                                    
                        <td><div class="card-body">
                            <form action="../Discount?id=<%= rs.getString("Bid") %>" method="POST">
                                <input type="number" name="discount" min="0" placeholder="Discount"/>
                                <Button type="submit" class="btn btn-primary">OK</Button>
                            </form>
                            </div></td></tr>
                            <%
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