<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add to cart</title>
</head>
<body>
<%@ page import="java.sql.*, java.util.Random"%>

<%
    int selectedID=0;
    try	{
    		selectedID=Integer.parseInt(request.getParameter("p"));
        }
    	catch(NumberFormatException ex)
    		{
    			System.err.println("Ilegal input");
    		}
	try	{
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinefood","root","dips@20101999");
			Statement statement = connection.createStatement();
   			ResultSet resultSet;
   			PreparedStatement preparedStatement;
   			Integer order_id;
   			String order_id_key = new String("order id");

   			if (session.getAttribute("order_id_key") == null) {
  				order_id = new Random().ints(1, 100).findFirst().getAsInt();
  				session.setAttribute("order_id_key", order_id);
	  		}

   			order_id = (Integer)session.getAttribute("order_id_key");

			if ( ( selectedID >= 1 ) && ( selectedID <= 9 ) ) {
   			    resultSet = statement.executeQuery("select * from food where food_id='"+selectedID+"'");
   				resultSet.next();
   				int food_id = resultSet.getInt(1);
   				String food_name = resultSet.getString(2);
   				int food_price = resultSet.getInt(3);
   				session.setAttribute("food_id_key", food_id);
   				session.setAttribute("food_name_key", food_name);
   				session.setAttribute("food_price_key", food_price);
   				preparedStatement = connection.prepareStatement("insert into foodorder values(?,?,?,?)");
   				int totalPrice = food_price;
   				preparedStatement.setInt(1, order_id);
   				preparedStatement.setInt(2, food_id);
   				preparedStatement.setInt(3, 1);
   				preparedStatement.setInt(4, totalPrice);
   				preparedStatement.executeUpdate();
	   			response.sendRedirect("Welcome.jsp");
			}

   			Statement statement2 = connection.createStatement();
			ResultSet resultSet2 = statement2.executeQuery("select count(*) as foodno from foodorder where order_id='"+order_id+"'");
			resultSet2.next();

			int fno = resultSet2.getInt("foodno");
			int no_of_items = fno;
			session.setAttribute("no_of_items_key", no_of_items);
   			connection.close();
	} catch(Exception e) {
		e.printStackTrace();
		}
   %>
</body>
</html>
