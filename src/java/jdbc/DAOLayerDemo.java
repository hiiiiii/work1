
package jdbc;
import java.sql.*;

public class DAOLayerDemo {
   private static Connection con;  // to make con secure preventing to set null
    //public DAOLayerDemo()
    static
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/login";
            String un="root";
            String p="nihal123";
            con=DriverManager.getConnection(url,un,p);
        }
        catch(Exception e){
            System.out.println("Connection Error: "+e.getMessage());
        }
    }
    public static Connection getCon(){
        return con;
    }
    
    public static int updateData(String dmlquery){
        try{
            Statement st=con.createStatement();
            int ur = st.executeUpdate(dmlquery);
            return ur;
        }
        catch(Exception e){
            System.out.println("Updation error: "+e.getMessage());
            return -1;
        }
    }
    public static ResultSet selectData(String projectionquery)
    {
     try{
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery(projectionquery);
         return rs;
     }   
     catch(Exception e){
         System.out.println("Select error: "+e.getMessage());
         return null;
     }
    }
}
