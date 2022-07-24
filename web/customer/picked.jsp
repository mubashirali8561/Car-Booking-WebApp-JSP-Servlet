
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
            if(id != null)
            {
            Connection con = null;
            PreparedStatement ps = null;
            int personID = Integer.parseInt(id);
            try
            {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car_rental_db","root","");
            String sql="UPDATE `booking` SET `status`=?,`dated_at`=NOW() WHERE `Bid`="+personID;
            ps = con.prepareStatement(sql);
            ps.setString(1,"Picked");
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
