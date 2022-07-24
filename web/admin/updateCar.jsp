<%@page import="java.util.ArrayList"%>
<%@page import="com.system.entities.Car"%>
<%@page import="com.system.dao.CarDao"%>
<%@page import="com.system.helper.ConnectionProvider"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Dashboard</title>
  <!-- General CSS Files -->
  <link rel="stylesheet" href="./assets/css/app.min.css">
  <link rel="stylesheet" href="./assets/bundles/summernote/summernote-bs4.css">
  <link rel="stylesheet" href="./assets/bundles/jquery-selectric/selectric.css">
  <link rel="stylesheet" href="./assets/bundles/bootstrap-tagsinput/dist/bootstrap-tagsinput.css">
  <link rel="stylesheet" href="./assets/bundles/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
  <link rel="stylesheet" href="./assets/bundles/pretty-checkbox/pretty-checkbox.min.css">
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
            <!-- add content here -->
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>Update Car</h4>
                  </div>
                    <form action="../UpdateCar" method="POST" >
                        <%
                int cid = Integer.parseInt(request.getParameter("cid"));
                CarDao orderdao = new CarDao(ConnectionProvider.getConnection());
                ArrayList<Car> list = orderdao.getallCars(cid);
                for(Car c:list)
                {    
                %>
                
                  <div class="card-body">
                      <div class="form-group row mb-4">
                      <div class="col-sm-12 col-md-7">
                          <input type="text" name="cid" value="<%= c.getCarid() %>" class="form-control" hidden>
                      </div>
                    </div>
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Title</label>
                      <div class="col-sm-12 col-md-7">
                          <input type="text" name="title" value="<%= c.getTitle() %>" class="form-control">
                      </div>
                    </div>
                    
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Discription</label>
                      <div class="col-sm-12 col-md-7">
                          <textarea name="discription" class="summernote-simple"><%= c.getDiscription()%></textarea>
                      </div>
                    </div>
                      <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Rent</label>
                      <div class="col-sm-12 col-md-7">
                          <input type="text" name="rent" value="<%= c.getRent() %>" class="form-control">
                      </div>
                    </div>

                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Mileage</label>
                      <div class="col-sm-12 col-md-7">
                          <input type="text" name="mileage" value="<%= c.getMileage()%>" class="form-control">
                      </div>
                    </div>
                      <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Transmission</label>
                      <div class="col-sm-12 col-md-7">
                          <input type="text" name="transmission" value="<%= c.getTransmission()%>" class="form-control">
                      </div>
                    </div>
                      <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Seats</label>
                      <div class="col-sm-12 col-md-7">
                          <input type="text" name="seats" value="<%= c.getSeats()%>" class="form-control">
                      </div>
                    </div>
                      <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Luggage</label>
                      <div class="col-sm-12 col-md-7">
                          <input type="text" name="luggage" value="<%= c.getLuggage()%>" class="form-control">
                      </div>
                    </div>
                       <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Fuel</label>
                      <div class="col-sm-12 col-md-7">
                          <input type="text" name="fuel" value="<%= c.getFuel()%>" class="form-control">
                      </div>
                    </div>
                      <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Features</label>
                      <div class="col-sm-12 col-md-7">
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Airconditions" <% if(c.getAirconditions().equals("1") ){%>checked=""<%}else{} %>>
                      <div class="state p-success-o">
                        <label> Air Condition</label>
                      </div>
                    </div>
                          <div class="pretty p-default p-round p-smooth p-plain">
                              <input type="checkbox" name="ChildSeat" <% if(c.getChildSeat().equals("1") ){%>checked=""<%}else{} %>>
                      <div class="state p-success-o">
                        <label> Child Seat</label>
                      </div>
                    </div>
                          <div class="pretty p-default p-round p-smooth p-plain">
                              <input type="checkbox" name="GPS" <% if(c.getGPS().equals("1") ){%>checked=""<%}else{} %>>
                      <div class="state p-success-o">
                        <label> GPS</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Luggage_tick" <% if(c.getLuggage_tick().equals("1") ){%>checked=""<%}else{} %>>
                      <div class="state p-success-o">
                        <label> Luggage</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Music" <% if(c.getMusic().equals("1") ){%>checked=""<%}else{} %>>
                      <div class="state p-success-o">
                        <label> Music</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="SeatBelt" <% if(c.getSeatBelt().equals("1") ){%>checked=""<%}else{} %>>
                      <div class="state p-success-o">
                        <label> Seat Belt</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="SleepingBed" <% if(c.getSleepingBed().equals("1") ){%>checked=""<%}else{} %>>
                      <div class="state p-success-o">
                        <label> Sleeping Bed</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Water" <% if(c.getWater().equals("1") ){%>checked=""<%}else{} %>>
                      <div class="state p-success-o">
                        <label> Water</label>
                      </div>
                    </div><br>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Bluetooth" <% if(c.getBluetooth().equals("1") ){%>checked=""<%}else{} %>>
                      <div class="state p-success-o">
                        <label> Bluetooth</label>
                      </div>
                    </div>
                          <div class="pretty p-default p-round p-smooth p-plain">
                              <input type="checkbox" name="Onboardcomputer" <% if(c.getOnboardcomputer().equals("1") ){%>checked=""<%}else{} %>>
                      <div class="state p-success-o">
                        <label> On board computer</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Audioinput" <% if(c.getAudioinput().equals("1") ){%>checked=""<%}else{} %>>
                      <div class="state p-success-o">
                        <label> Audio input</label>
                      </div>
                    </div>
                        <br><div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Long_Term_Trips" <% if(c.getLong_Term_Trips().equals("1") ){%>checked=""<%}else{} %>>
                      <div class="state p-success-o">
                        <label> Long Term Trips</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="CarKit" <% if(c.getCarKit().equals("1") ){%>checked=""<%}else{} %>>
                      <div class="state p-success-o">
                        <label> Car Kit</label>
                      </div>
                    </div>
                          <div class="pretty p-default p-round p-smooth p-plain">
                              <input type="checkbox" name="Remote_central_locking" <% if(c.getRemote_central_locking().equals("1") ){%>checked=""<%}else{} %>>
                      <div class="state p-success-o">
                        <label> Remote central locking</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Climatecontrol" <% if(c.getClimatecontrol().equals("1") ){%>checked=""<%}else{} %>>
                      <div class="state p-success-o">
                        <label> Climate control</label>
                      </div>
                    </div>
                      </div>
                    </div><%}%>
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                      <div class="col-sm-12 col-md-7">
                          <button type="Submit" class="btn btn-primary">Update Car</button>
                        <button class="btn btn-warning">Cancel</button>
                      </div>
                    </div>
                  </div></form>
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