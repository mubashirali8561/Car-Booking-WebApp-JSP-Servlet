
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            String id = request.getParameter("id");
            String returntime = request.getParameter("returntime");
            String returndays = request.getParameter("returndays");
            String NewDAYTime = returndays+" "+returntime;
            String Fare="";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/car_rental_db","root","");     
            Statement st=con.createStatement();
            String strQuery = "SELECT c.rent*TIMESTAMPDIFF(hour,`dated_at`,(select DATE_ADD(`dated_at`,interval '"+NewDAYTime+"' DAY_HOUR))) as Fare from booking as b ,cars as c WHERE b.carid = c.carid and Bid="+id+"";
            ResultSet rs = st.executeQuery(strQuery);
              while(rs.next()){
              Fare = rs.getString(1);
               }
              
            if(id != null)
            {
            PreparedStatement ps = null;
            int personID = Integer.parseInt(id);
            try
            {
            String sql="UPDATE `booking` SET `totalamount`=?,`status`='Returned',`return_date_time`=(select DATE_ADD(`dated_at`,interval '"+NewDAYTime+"' DAY_HOUR)) WHERE `Bid`="+personID;
            ps = con.prepareStatement(sql);
            ps.setString(1,Fare);
            int i = ps.executeUpdate();
            if(i > 0)
            {
                out.print("Record Updated Successfully");
                response.sendRedirect("booking.jsp");
            }else
            {
                out.print("There is a problem in updating Record.");
            } 
            }
            catch(SQLException sql)
            {
            request.setAttribute("error", sql);
            out.println(sql);
            }
            }
            %>
    </body>
</html>
