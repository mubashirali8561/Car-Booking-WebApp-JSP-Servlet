<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Forgot Password</title>
  <!-- General CSS Files -->
  <link rel="stylesheet" href="assets/css/app.min.css">
  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/components.css">
  <!-- Custom style CSS -->
  <link rel="stylesheet" href="assets/css/custom.css">
  <link rel='shortcut icon' type='image/x-icon' href='assets/img/favicon.ico' />
</head>

<body>
  <div class="loader"></div>
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
            <div class="card card-primary">
              <div class="card-header">
                <h4>Forgot Password</h4>
              </div>
              <%
                  if (request.getParameter("submit") != null) {
                     

                    //Creating a result for getting status that messsage is delivered or not!

                    String result;

                    // recipient's email-ID, message & subject-line
                    
                    final String to = request.getParameter("email");//get email from user field

                    final String subject = "Forgot Password Link";

                    final String messg = "Link: http://localhost:8080/CarBook/customer/UpdatePassword.jsp";



                    // Sender's email ID and password needs to be mentioned

                    final String from = "citycarrentalproject@gmail.com";//your email

                    final String pass = "CityCarRental1!";//put your password



                    // Defining the gmail host

                    String host = "smtp.gmail.com";



                    // Creating Properties object

                    Properties props = new Properties();



                    // Defining properties by library you dont need to learn that 

                    props.put("mail.smtp.host", host);

                    props.put("mail.transport.protocol", "smtp");

                    props.put("mail.smtp.auth", "true");

                    props.put("mail.smtp.starttls.enable", "true");

                    props.put("mail.user", from);

                    props.put("mail.password", pass);

                    props.put("mail.port", "587");



                    // Authorized the Session object.

                    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

                        @Override

                        protected PasswordAuthentication getPasswordAuthentication() {

                            return new PasswordAuthentication(from, pass);

                        }

                    });



                    try {

                        // Create a default MimeMessage object.

                        MimeMessage message = new MimeMessage(mailSession);

                        // Set From: header field of the header.

                        message.setFrom(new InternetAddress(from));

                        // Set To: header field of the header.

                        message.addRecipient(Message.RecipientType.TO,

                                new InternetAddress(to));

                        // Set Subject: header field

                        message.setSubject(subject);

                        // Now set the actual message

                        message.setText(messg);//pass the massage 

                        // Send message

                        Transport.send(message);

                        result = "Your mail sent successfully.";

                    } catch (MessagingException mex) {

                        mex.printStackTrace();

                        result = "Error: unable to send mail.";

                    }
                    if(result.equals("Your mail sent successfully."))
                    {//if massage send it shows your mail send successfully in green color other condition is in case any error it shows Error: unable to send mail. in red color
                        %><b><center><font color="Green"><% out.println(result);%></b><%
                    }else{%><b><center><font color="red"><% out.println(result);%></b><%}
                    }
              %>
              
              <div class="card-body">
                <p class="text-muted">We will send a link to reset your password</p>
                <form method="POST" acrion="">
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" type="email" class="form-control" name="email" tabindex="1" required autofocus>
                  </div>
                  <div class="form-group">
                      <button type="submit" name="submit" value="submit" class="btn btn-primary btn-lg btn-block" tabindex="4">
                      Forgot Password
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- General JS Scripts -->
  <script src="assets/js/app.min.js"></script>
  <!-- JS Libraies -->
  <!-- Page Specific JS File -->
  <!-- Template JS File -->
  <script src="assets/js/scripts.js"></script>
  <!-- Custom JS File -->
  <script src="assets/js/custom.js"></script>
</body>
</html>


