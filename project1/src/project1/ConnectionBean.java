package project1;

public class ConnectionBean 
{
	private String driver, url, username, password;
	public ConnectionBean()
	{
		driver = "oracle.jdbc.driver.OracleDriver";
		url = "jdbc:oracle:thin:@localhost:1521:xe";
		username = "SYSTEM";
		password = "Tree0987!";
	}
	public String getDriver() { return driver; }
	public String getURL() { return url; }
	public String getUsername() { return username; }
	public String getPassword() { return password; }
}
