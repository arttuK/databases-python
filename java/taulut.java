import java.sql.*;

public class Testi {
    public static void main(String[] args) throws SQLException {
        Connection db = DriverManager.getConnection("jdbc:sqlite:testi.db");
        Statement s = db.createStatement();
        s.execute("CREATE TABLE Tuotteet (id INTEGER PRIMARY KEY, nimi TEXT, hinta INTEGER)");
        s.execute("INSERT INTO Tuotteet (nimi,hinta) VALUES ('retiisi',7)");
        s.execute("INSERT INTO Tuotteet (nimi,hinta) VALUES ('porkkana',5)");
        s.execute("INSERT INTO Tuotteet (nimi,hinta) VALUES ('nauris',4)");
        s.execute("INSERT INTO Tuotteet (nimi,hinta) VALUES ('lanttu',8)");
        s.execute("INSERT INTO Tuotteet (nimi,hinta) VALUES ('selleri',4)");

        ResultSet r = s.executeQuery("SELECT * FROM Tuotteet");
        while (r.next()) {
            System.out.println(r.getInt("id")+" "+r.getString("nimi")+" "+r.getInt("hinta"));
        }
    }
}