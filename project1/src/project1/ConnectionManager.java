package project1;

import java.sql.*;
import java.util.*;

@SuppressWarnings("unused")
public class ConnectionManager {

   static Connection con;
   static String url;
         
   public static Connection getConnection()
   {
     
      try
      {
    	 //Get Connection info
    	 ConnectionBean conbean = new ConnectionBean();
         String url = conbean.getURL(); 
         String uname = conbean.getUsername();
         String pass = conbean.getPassword();

         Class.forName(conbean.getDriver());
         
         try
         {            	
            con = DriverManager.getConnection(url,uname,pass);     
         }
         
         catch (SQLException ex)
         {
            ex.printStackTrace();
         }
      }

      catch(ClassNotFoundException e)
      {
         System.out.println(e);
      }

   return con;
}
}