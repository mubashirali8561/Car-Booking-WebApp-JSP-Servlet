<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.UUID"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.system.entities.Users"%>
<%@page import="com.system.entities.BookingData"%>
<%@page import="com.system.dao.BookDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.system.helper.ConnectionProvider"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>City Car Rental | Booking</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
     <script src="https://randojs.com/1.0.0.js"></script>
        <script>
            function showRandomNumber(){
                document.getElementById("myNumber").innerHTML = Math.floor(100000 + Math.random() * 900000);
            }
        </script>
  </head>
  <body onload="showRandomNumber();">
    
	  <%@include file="includes/nav.jsp" %>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/image_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Booking <i class="ion-ios-arrow-forward"></i></span></p>
                <h1 class="mb-3 bread">Booking</h1>
          </div>
        </div>
      </div>
    </section>
    
    <section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="car-list">
	    				<table class="table">
						    <thead class="thead-primary">
                                                        
						    </thead>
						    <tbody>
                                                        <%
                                                            BookDao bookdao = new BookDao(ConnectionProvider.getConnection());
                                                            HttpSession s = request.getSession();
                                                            Users user = (Users)s.getAttribute("currentUser");
                                                            int userid = user.getUid(); //current loged in user id
                                                            ArrayList<BookingData> list = bookdao.getBookedCarByUser(userid);//main method responsible to get data from database
                                                            int i = 0;
                                                            for(BookingData c:list)
                                                            {    
                                                            %>
						      <tr class="">
                                                          <td><% i++; %></td>
						      	<td class="car-image"><div class="img" style="background-image:url(../images/<%= c.getCarimg() %>);"></div></td>
						        <td class="product-name">
						        	<h3><%= c.getTitle() %></h3>
                                                                <span><%= c.getDiscription()%></span>
                                                                <br/><button class="btn btn-info">&euro;<%= c.getRent()%> /Hour</button>
						        </td>
                                                        
						        <td>
						        	<p class="btn btn-primary">Pick Up: <%= c.getPickUp() %></p>
                                                                <p class="btn btn-primary">Drop: <%= c.getDropOff() %></p>
                                                                                                                               
						        </td>
                                                        
                                                        <td>
                                                                
                                                                <p class="btn btn-progress">Discount: &euro;<%= c.getDiscount()%></p>
                                                                <p class="btn btn-progress">Status: <%= c.getStatus()%></p>
                                                                <p class="btn btn-progress">Total: &euro;<%= (int)c.getTotalamount() - (int)c.getDiscount() %></p>
                                                                <%
                                                                    try
                                                                    {
                                                                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                                                                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/car_rental_db","root","");     
                                                                        Statement st=con.createStatement();
                                                                        String strQuery = "SELECT TIMESTAMPDIFF(hour,`dated_at`,`return_date_time`) AS Hours from booking WHERE Bid="+c.getBookid()+"";
                                                                        ResultSet rs = st.executeQuery(strQuery);

                                                                        String Hours="";
                                                                          while(rs.next()){
                                                                          Hours = rs.getString(1);
                                                                          if(Hours != null)
                                                                          {
                                                                              out.println("<p class="+"btn btn-progress"+">Renting Hours:&nbsp;"+Hours+"</p>");
                                                                          }else
                                                                          {
                                                                              out.println("<p class="+"btn btn-progress"+">Renting Hours: 0</p>");
                                                                          }
                                                                          
                                                                           } 
                                                                        }
                                                                    catch (Exception e){
                                                                        e.printStackTrace();
                                                                      }
                                                                      %>
                                                                
						        </td>
                                                        <td style="width:250px">
                                                            <% if(c.getStatus().equals("Booked")){%>
                                                            <div class="form-group">
                                                                <div class="input-group">
                                                                  <div class="input-group-append">
                                                                    <a href="picked.jsp?id=<%= c.getBookid()%>" class="btn btn-dark">Picked</a>
                                                                  </div>
                                                                </div>
                                                              </div><%}else if(c.getStatus().equals("Picked")){%>
                                                                  <form action="return.jsp?id=<%= c.getBookid() %>" method="post">  
                                                            <div class="form-group">
                                                                <div class="input-group">
                                                                    <select class="custom-select" name="returndays" id="inputGroupSelect04">
                                                                    <option value="0" selected>Choose...</option>
                                                                    <option value="2">2 Day</option>
                                                                    <option value="3">3 Day</option>
                                                                    <option value="4">4 Day</option>
                                                                    <option value="5">5 Day</option>
                                                                    <option value="6">6 Day</option>
                                                                    <option value="7">7 Day</option>
                                                                    <option value="8">8 Day</option>
                                                                    <option value="8">9 Day</option>
                                                                    <option value="10">10 Day</option>
                                                                    <option value="11">11 Day</option>
                                                                    <option value="12">12 Day</option>
                                                                    <option value="13">13 Day</option>
                                                                    <option value="14">14 Day</option>
                                                                    <option value="15">15 Day</option>
                                                                    <option value="16">16 Day</option>
                                                                    <option value="17">17 Day</option>
                                                                    <option value="18">18 Day</option>
                                                                    <option value="19">19 Day</option>
                                                                    <option value="20">20 Day</option>
                                                                    <option value="21">21 Day</option>
                                                                    <option value="22">22 Day</option>
                                                                    <option value="23">23 Day</option>
                                                                    <option value="24">24 Day</option>
                                                                    <option value="24">25 Day</option>
                                                                    <option value="24">26 Day</option>
                                                                    <option value="24">27 Day</option>
                                                                    <option value="24">28 Day</option>
                                                                    <option value="24">29 Day</option>
                                                                    <option value="24">30 Day</option>
                                                                    <option value="24">31 Day</option>
                                                                  </select>
                                                                    <select class="custom-select" name="returntime" id="inputGroupSelect04">
                                                                    <option selected>Choose...</option>
                                                                    <option value="1">1 Hour</option>
                                                                    <option value="2">2 Hour</option>
                                                                    <option value="3">3 Hour</option>
                                                                    <option value="4">4 Hour</option>
                                                                    <option value="5">5 Hour</option>
                                                                    <option value="6">6 Hour</option>
                                                                    <option value="7">7 Hour</option>
                                                                    <option value="8">8 Hour</option>
                                                                    <option value="8">9 Hour</option>
                                                                    <option value="10">10 Hour</option>
                                                                    <option value="11">11 Hour</option>
                                                                    <option value="12">12 Hour</option>
                                                                    <option value="13">13 Hour</option>
                                                                    <option value="14">14 Hour</option>
                                                                    <option value="15">15 Hour</option>
                                                                    <option value="16">16 Hour</option>
                                                                    <option value="17">17 Hour</option>
                                                                    <option value="18">18 Hour</option>
                                                                    <option value="19">19 Hour</option>
                                                                    <option value="20">20 Hour</option>
                                                                    <option value="21">21 Hour</option>
                                                                    <option value="22">22 Hour</option>
                                                                    <option value="23">23 Hour</option>
                                                                    <option value="24">24 Hour</option>
                                                                  </select>
                                                                  
                                                                  <div class="input-group-append">
                                                                    <button class="btn btn-dark" type="submit">Return</button>
                                                                  </div>
                                                                </div>
                                                              </div></form><%}else{%><p>You Successfully Returned The Car. Thank You For Choosing Us.</p><%}%>
						        </td>
						        
						        
						        
						        

						        
						      </tr><%}%><!-- END TR-->

						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
			</div>
		</section>
           


     <%@include file="includes/footer.jsp" %>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>