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
                    <h4>User Details</h4>
                  </div>
                 <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Mobile</th>
                            <th>Licence Number</th>
                            <th>Licence Expiry</th>
                            <th>Licence Image</th>
                            <th>Country</th>
                            <th>Address</th>
                            <th>Payment Detail</th>
                            <th>Status</th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tbody>
                            <%
                        UserDao userdao = new UserDao(ConnectionProvider.getConnection());
                        ArrayList<Users> list = userdao.getallUsers();
                        int i = 0;
                        for(Users c:list)
                        {    
                        %>
                          <tr>
                            <td><%= c.getFname() %> <%= c.getLname()%></td>
                            <td><%= c.getEmail() %></td>
                            <td><%= c.getMobile()%></td>
                            <td><%= c.getLicenceNumber()%></td>
                            <td><%= c.getLicenceExpiry()%></td>
                            <td><image src="../images/<%= c.getLicenceImage()%>" width="80px" height="80px" /></td>
                            <td><%= c.getCountryOfLicence()%></td>
                            <td><%= c.getAddress()%></td>
                            <td><%= c.getPaymentDetail() %></td>
                            <td><%= c.getStatus() %></td>
                            <td><a href="../UpdateStatus?uid=<%= c.getUid() %>" class="btn tn-warning"><i class="fas fa-user-check"></i></a></td>
                          </tr>
                          <%}
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

</html>