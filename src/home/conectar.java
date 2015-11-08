package home;
import java.sql.*;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.*;

public class conectar {
Connection conect = null;
  static String bd="cafeteria";
    static String login="root";
    static String password="209149422";
    static String url="jdbc:mysql://localhost/"+conectar.bd;
    
   public Connection conexion()
    {
      try {
           
           //Cargamos el Driver MySQL
           Class.forName("org.gjt.mm.mysql.Driver");
           //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           conect = DriverManager.getConnection(url,login,password);
           System.out.print("Se ha establecido una conexión a la Base de Datos "+url+" "+login +" \n");
           //Cargamos el Driver Access
           
           //Conectar en red base 
           //String strConect = "jdbc:odbc:Driver=Microsoft Access Driver (*.mdb);DBQ=//servidor/bd_cw/cw.mdb";
           //Conectar Localmente
           //String strConect = "jdbc:odbc:Driver=Microsoft Access Driver (*.mdb);DBQ=D:/cwnetbeans/cw.mdb";
          //conect = DriverManager.getConnection(strConect,"",""); 
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Error "+e);
        }
        return conect;
      }
   public void cerrar(){
    try {
        conect.close();
        System.out.print("La Base de Datos esta cerrada \n");
    } catch (SQLException ex) {
       JOptionPane.showMessageDialog(null,"Error "+ex);
    }
   }

    Connection getConn() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
