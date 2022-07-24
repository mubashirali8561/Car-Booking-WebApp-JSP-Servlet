<%@page import="com.system.entities.Car"%>
<%@page import="com.system.dao.CarDao"%>
<%@page import="java.util.ArrayList"%>
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
                    <h4>Car Details</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped table-hover" style="width:100%;">
                        <thead>
                          <tr>
                             <th>Image</th>
                            <th>Title</th>
                            <th>Discription</th>
                            <th>Mileage</th>
                            <th>Fuel</th>
                            <th>Luggage</th>
                            <th>Seats</th>
                            <th>Rent</th>
                            <th>Transmission</th>
                            <th colspan="2">Action</th>
                          </tr>
                        </thead>
                        <tbody>
                            <%
                        CarDao cardao = new CarDao(ConnectionProvider.getConnection());
                        ArrayList<Car> list = cardao.getallCars();
                        int i = 0;
                        for(Car c:list)
                        {    
                        %>
                          <tr>
                            <td><image src="../images/<%= c.getCarimg()%>" width="80px" height="60px"/></td>
                            <td><%= c.getTitle() %></td>
                            <td><%= c.getDiscription()%></td>
                            <td><%= c.getMileage()%></td>
                            <td><%= c.getFuel()%></td>
                            <td><%= c.getLuggage()%></td>
                            <td><%= c.getSeats()%></td>
                            <td>&euro;<%= c.getRent()%>/Hour</td>
                            <td><%= c.getTransmission()%></td>
                            <td><a href="updateCar.jsp?cid=<%= c.getCarid() %>" class="btn btn-warning"><i class="fas fa-pencil-ruler"></i></a></td>
                            <td><a href="../DeleteCar?deleteid=<%= c.getCarid() %>" class="btn btn-danger"><i class="fas fa-trash-alt"></i></a></td>
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


<!-- blank.html  21 Nov 2019 03:54:41 GMT -->
</html>