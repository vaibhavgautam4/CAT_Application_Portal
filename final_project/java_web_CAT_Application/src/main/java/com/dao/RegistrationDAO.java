package com.dao;



import com.Bean.Academics;
import com.Bean.Candidate;
import com.Bean.Registration;
import com.Bean.TestCity;
import com.Bean.WorkEx;
import com.Bean.dataFilled;
import com.Connection.dbConnection;

import javax.crypto.Cipher;

//import javax.crypto.KeyGenerator;

import javax.crypto.SecretKey;

import javax.crypto.spec.SecretKeySpec;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.sql.*;
import java.util.ArrayList;
import java.util.Base64;



public class RegistrationDAO {

  

 // AES key for encryption/decryption (in production, use a secure key management system)

 private static final String SECRET_KEY = "MySuperSecretKey"; // Keep it 16, 24, or 32 bytes for AES



 private static SecretKey generateSecretKey() {

  return new SecretKeySpec(SECRET_KEY.getBytes(), "AES");

 }



 private static String encrypt(String data) throws Exception {

  Cipher cipher = Cipher.getInstance("AES");

  cipher.init(Cipher.ENCRYPT_MODE, generateSecretKey());

  byte[] encryptedBytes = cipher.doFinal(data.getBytes());

  return Base64.getEncoder().encodeToString(encryptedBytes);

 }



 private static String decrypt(String encryptedData) throws Exception {

  Cipher cipher = Cipher.getInstance("AES");

  cipher.init(Cipher.DECRYPT_MODE, generateSecretKey());

  byte[] decryptedBytes = cipher.doFinal(Base64.getDecoder().decode(encryptedData));

  return new String(decryptedBytes);

 }



 public boolean RegistrationCandidate(Registration candidate) {

  try  {
	  dbConnection dbcon = new dbConnection();
	  Connection conn = dbcon.dbConnect();
	  System.out.println("registration page!");
	  PreparedStatement stmt = conn.prepareStatement("INSERT INTO Registration (name, email, phone, password) VALUES (?, ?, ?, ?)");
//	  stmt.setInt(1, candidate.getCid());
	  stmt.setString(1, candidate.getName());
	  stmt.setString(2, candidate.getEmail());
	  stmt.setLong(3, candidate.getPhone());
	  // Encrypt the password
	  String encryptedPassword = encrypt(candidate.getPassword());
	  stmt.setString(4, encryptedPassword);
	  stmt.executeUpdate();
	  conn.close();
   return true;

  } catch (Exception e) {
	  e.printStackTrace();
	  return false;
  }

 }



 public Registration login(int cid, String password) {
  try {
	  dbConnection dbcon = new dbConnection();
	  Connection conn = dbcon.dbConnect();
	  PreparedStatement stmt = conn.prepareStatement("SELECT * FROM Registration WHERE cid = ?"); 
	  stmt.setInt(1, cid);
	  ResultSet rs = stmt.executeQuery();



   if (rs.next()) {

    String encryptedPassword = rs.getString("password");



    // Decrypt the stored password

    String storedPassword = decrypt(encryptedPassword);



    if (password.equals(storedPassword)) {

     Registration candidate = new Registration();

     candidate.setCid(rs.getInt("cid"));

     candidate.setName(rs.getString("name"));

     candidate.setPhone(rs.getLong("phone"));

     candidate.setEmail(rs.getString("email"));

     return candidate;

    }

   }

  } catch (Exception e) {

   e.printStackTrace();

  }

  return null;

 }
 
public int personalDetails(Candidate e) {
	dbConnection dbcon = new dbConnection();
	String query3="insert into Candidate values(?,?,?,?,?,?,?,?,?,?,?)";
	int status=0;
	try {
	Connection con=dbcon.dbConnect();
//	System.out.println("Insert Values for Application Form Page : ");

	PreparedStatement pstat=con.prepareStatement(query3);
	
	pstat.setInt(1,e.getCid());
	pstat.setString(2,e.getTitle());
	pstat.setString(3,e.getFname());
	pstat.setString(4, e.getMname());
	pstat.setString(5,e.getLname());
	pstat.setString(6,e.getDob());
	pstat.setString(7, e.getGender());
	pstat.setString(8,e.getState());
	pstat.setString(9,e.getNationality());
	pstat.setString(10,e.getFather());
	pstat.setLong(11, e.getAadhar());
	
	status=pstat.executeUpdate();
	if(status>0) {
		System.out.println("Application Form details entered successfully..............!!!");
	}
	else {
		System.out.println("Error in Entering details in Application Form Section ... ");
	}
	con.close();
	}catch (Exception c) {
		// TODO: handle exception
		c.printStackTrace();
	}
	
	return status;
}


public int enterTestCity(TestCity e) {
	dbConnection dbcon = new dbConnection();
	String query3="insert into TestCity values(?,?,?,?)";
	int status=0;
	try {
	Connection con=dbcon.dbConnect();
//	System.out.println("Insert Values for Application Form Page : ");

	PreparedStatement pstat=con.prepareStatement(query3);
	
	pstat.setInt(1,e.getCid());
	pstat.setString(2,e.getCity1());
	pstat.setString(3,e.getCity2());
	pstat.setString(4, e.getCity3());
	
	status=pstat.executeUpdate();
	if(status>0) {
		System.out.println("Test City details entered successfully..............!!!");
	}
	else {
		System.out.println("Error in Entering details in Application Form Section ... ");
	}
	con.close();
	}catch (Exception c) {
		// TODO: handle exception
		c.printStackTrace();
	}
	
	return status;
}



public int workExDetails(WorkEx e) {
	// TODO Auto-generated method stub
	dbConnection dbcon = new dbConnection();
    int status = 0;
    String query5="insert into WorkEx values(?,?,?)";
    try {
    Connection con=dbcon.dbConnect();
    PreparedStatement pstat=con.prepareStatement(query5);
    pstat.setInt(1,e.getCid());
    pstat.setInt(2,e.getExperience());
    pstat.setString(3,e.getCompany());
    
     status=pstat.executeUpdate();
    if(status>0) {
        System.out.println("Work Experience details entered successfully..............!!!");
    }
    else {
        System.out.println("Error in Entering details in Work Experience Section ... ");
    }
    con.close();
    }catch (Exception f) {
        // TODO: handle exception
        f.printStackTrace();
    }
    return status;
}



public int academicDetails(Academics e) {
	// TODO Auto-generated method stub
//	return 0;
	dbConnection dbcon = new dbConnection();
    int status = 0;
    String query2="insert into Academics values(?,?,?,?,?,?,?,?,?,?,?)";
    try {
    Connection con=dbcon.dbConnect();

    PreparedStatement pstat2=con.prepareStatement(query2);
    pstat2.setInt(1,e.getCid());
    pstat2.setString(2,e.getSchoolName10());
    pstat2.setString(3,e.getSchoolBoard10());
    pstat2.setDouble(4, e.getPercentage10());
    pstat2.setString(5,e.getSchoolName12());
    pstat2.setString(6,e.getSchoolBoard12());
    pstat2.setDouble(7, e.getPercentage12());
    pstat2.setString(8,e.getCollegeName());
    pstat2.setString(9,e.getCollegeCourse());
    pstat2.setString(10,e.getCollegeSpecialization());
    pstat2.setDouble(11, e.getCollegeCGPA());
    
    status=pstat2.executeUpdate();
    if(status>0) {
        System.out.println("Academics details entered successfully..............!!!");
    }
    else {
        System.out.println("Error in Entering details in Academics Section ... ");
    }
    con.close();
    }catch (Exception f) {
        // TODO: handle exception
        f.printStackTrace();
    }
    return status;
}



public Candidate getPersonalDetails(int cid) {
	// TODO Auto-generated method stub
	Candidate details = null;
	
	dbConnection dbcon = new dbConnection();

    try {
    	
    	Connection con=dbcon.dbConnect();

      String query = "SELECT * FROM Candidate WHERE cid = ?";

      PreparedStatement stmt = con.prepareStatement(query);

      stmt.setInt(1, cid);

      ResultSet rs = stmt.executeQuery();



      if (rs.next()) {

        details = new Candidate(
        		
        		rs.getInt("cid"),

          rs.getString("title"),

          rs.getString("fname"),

          rs.getString("mname"),

          rs.getString("lname"),

          rs.getString("DOB"),

          rs.getString("gender"),

          rs.getString("state"),

          rs.getString("nationality"),

          rs.getString("father"),

          rs.getLong("aadhaar")

        );

      }
      con.close();
    } catch (SQLException e) {

      e.printStackTrace();

    }

    return details;
}



public Academics getAcademicDetails(int cid) {
	// TODO Auto-generated method stub
	Academics details = null;
	
	dbConnection dbcon = new dbConnection();

    try  {
    	
    	Connection con=dbcon.dbConnect();

      String query = "SELECT * FROM Academics WHERE cid = ?";

      PreparedStatement stmt = con.prepareStatement(query);

      stmt.setInt(1, cid);

      ResultSet rs = stmt.executeQuery();



      if (rs.next()) {

        details = new Academics(
          rs.getInt("cid"),

          rs.getString("schoolName10"),

          rs.getString("schoolBoard10"),

          rs.getDouble("percentage10"),

          rs.getString("schoolName12"),

          rs.getString("schoolBoard12"),

          rs.getDouble("percentage12"),

          rs.getString("collegeName"),

          rs.getString("collegeCourse"),

          rs.getString("collegeSpecialization"),

          rs.getDouble("collegeCGPA")

        );

      }
      con.close();
    } catch (SQLException e) {

      e.printStackTrace();

    }

    return details;
}



public WorkEx getWorkExperience(int cid) {
	// TODO Auto-generated method stub
	WorkEx experience = null;
	
	dbConnection dbcon = new dbConnection();

    try  {
    	
    	Connection con=dbcon.dbConnect();

      String query = "SELECT * FROM WorkEx WHERE cid = ?";

      PreparedStatement stmt = con.prepareStatement(query);

      stmt.setInt(1, cid);

      ResultSet rs = stmt.executeQuery();



      if (rs.next()) {

        experience = new WorkEx(
          rs.getInt("cid"),

          rs.getInt("experience"),

          rs.getString("companyname")
        );

      }
      con.close();
    } catch (SQLException e) {

      e.printStackTrace();

    }

    return experience;
}



public TestCity getTestCity(int cid) {
	// TODO Auto-generated method stub
	TestCity city = null;
	
	dbConnection dbcon = new dbConnection();

    try {
    	
    	Connection con=dbcon.dbConnect();

      String query = "SELECT * FROM TestCity WHERE cid = ?";

      PreparedStatement stmt = con.prepareStatement(query);

      stmt.setInt(1, cid);

      ResultSet rs = stmt.executeQuery();



      if (rs.next()) {

        city = new TestCity(
        		
          rs.getInt("cid"),

          rs.getString("city1"),

          rs.getString("city2"),

          rs.getString("city3")

        );

      }
      con.close();
    } catch (SQLException e) {

      e.printStackTrace();

    }

    return city;
}




public int updateTestCity(TestCity e)
{
dbConnection dbcon = new dbConnection();


int status = 0;
System.out.println("inside updatetestcity");
try {
	Connection con=dbcon.dbConnect();
	System.out.println("inside try block");
	String query="update TestCity set city1=?,city2=?,city3=? where cid=?";
	PreparedStatement pstat=con.prepareStatement(query);
	System.out.println("prepared statement");
	pstat.setString(1,e.getCity1());
	pstat.setString(2,e.getCity2());
	pstat.setString(3,e.getCity3());
	pstat.setInt(4, e.getCid());
	System.out.println("values set");
	
	status=pstat.executeUpdate();
	System.out.println("status:"+status);
		if(status>0) {
			System.out.println("Details Updated Successfully.......");
		}
		else {
			System.out.println("Something went wrong.............");
		}
		con.close();	
	} catch (SQLException f) {
		// TODO Auto-generated catch block 
		f.printStackTrace();
	}
	return status;
}

public void printfunc() {
	System.out.println("registration dao called!");
}


public ArrayList<Integer> getAllcidfromRegistration()
{
	ArrayList<Integer> arr = new ArrayList<>();

	try
	{
	dbConnection dbcon = new dbConnection();
	  Connection conn = dbcon.dbConnect();
	String query = "Select cid from Registration";
	PreparedStatement stmt = conn.prepareStatement(query);
	  ResultSet rs = stmt.executeQuery();
	  if(rs.next()) {
//		  System.out.println(rs.getInt(1));
		  arr.add( rs.getInt(1));
	  }else {
		  System.out.println("No candidate id found!");
	  }
	  conn.close();
	  
}
catch(Exception e ){
	e.printStackTrace();
}
	return arr;
}

public ArrayList<Integer> getUnapprovedCandidates() {
    ArrayList<Integer> unapprovedCids = new ArrayList<>();
    dbConnection dbcon = new dbConnection();
	  Connection conn = dbcon.dbConnect();
	  try 
      {
	  String query = "Select cid from datafilled where admin = false";
	  PreparedStatement ps = conn.prepareStatement(query);
    
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            unapprovedCids.add(rs.getInt("cid"));
        }
        conn.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return unapprovedCids;
}

public void setDefaultCandidateFlag(dataFilled e) {
	dbConnection dbcon = new dbConnection();
    int status = 0;
    String query2="insert into dataFilled values(?,?,?,?,?,?,?,?,?,?)";
    try {
    Connection con=dbcon.dbConnect();

    PreparedStatement pstat2=con.prepareStatement(query2);
    pstat2.setInt(1,e.getCid());
//    e.setRegiserDone(true);
    pstat2.setBoolean(2, e.getRegiserDone());
    pstat2.setBoolean(3,e.getCandidateDone());
    pstat2.setBoolean(4,e.getAcademicsDone());
    pstat2.setBoolean(5, e.getWorkDone());
    pstat2.setBoolean(6,e.getPhotoDone());
    pstat2.setBoolean(7,e.getCityDone());
    
    pstat2.setBoolean(8,e.getPaymentDone());
    pstat2.setBoolean(9, e.getAdmitDone());
    pstat2.setBoolean(10,e.getAdmin());
    
    
    status=pstat2.executeUpdate();
    if(status>0) {
        System.out.println("data flags entered entered successfully..............!!!");
    }
    else {
        System.out.println("Error in Entering details in flag section ... ");
    }
    con.close();
    }catch (Exception f) {
        // TODO: handle exception
        f.printStackTrace();
    }
    
}

public int setPersonalFlag(int cid)
{
dbConnection dbcon = new dbConnection();
String query="update dataFilled set CandidateDone=? where cid=?";

int status = 0;
try {
	Connection con=dbcon.dbConnect();
PreparedStatement pstat=con.prepareStatement(query);
pstat.setBoolean(1,true);
pstat.setInt(2,cid);

status=pstat.executeUpdate();
	if(status>0) {
		System.out.println("Details Updated Successfully.......");
	}
	else {
		System.out.println("Something went wrong.............");
	}
	con.close();	
} catch (SQLException f) {
	// TODO Auto-generated catch block 
	f.printStackTrace();
}
return status;
}
public int setAcademicsFlag(int cid)
{
dbConnection dbcon = new dbConnection();
String query="update dataFilled set academicsDone=? where cid=?";

int status = 0;
try {
	Connection con=dbcon.dbConnect();
PreparedStatement pstat=con.prepareStatement(query);
pstat.setBoolean(1,true);
pstat.setInt(2,cid);

status=pstat.executeUpdate();
	if(status>0) {
		System.out.println("Details Updated Successfully.......");
	}
	else {
		System.out.println("Something went wrong.............");
	}
	con.close();	
} catch (SQLException f) {
	// TODO Auto-generated catch block 
	f.printStackTrace();
}
return status;
}
public int setWorkExFlag(int cid)
{
dbConnection dbcon = new dbConnection();
String query="update dataFilled set WorkDone=? where cid=?";

int status = 0;
try {
	Connection con=dbcon.dbConnect();
PreparedStatement pstat=con.prepareStatement(query);
pstat.setBoolean(1,true);
pstat.setInt(2,cid);

status=pstat.executeUpdate();
	if(status>0) {
		System.out.println("Details Updated Successfully.......");
	}
	else {
		System.out.println("Something went wrong.............");
	}
	con.close();	
} catch (SQLException f) {
	// TODO Auto-generated catch block 
	f.printStackTrace();
}
return status;
}
public int setPhotoFlag(int cid)
{
dbConnection dbcon = new dbConnection();
String query="update dataFilled set photoDone=? where cid=?";

int status = 0;
try {
	Connection con=dbcon.dbConnect();
PreparedStatement pstat=con.prepareStatement(query);
pstat.setBoolean(1,true);
pstat.setInt(2,cid);

status=pstat.executeUpdate();
	if(status>0) {
		System.out.println("Details Updated Successfully.......");
	}
	else {
		System.out.println("Something went wrong.............");
	}
	con.close();	
} catch (SQLException f) {
	// TODO Auto-generated catch block 
	f.printStackTrace();
}
return status;
}
public int setCityFlag(int cid)
{
dbConnection dbcon = new dbConnection();
String query="update dataFilled set CityDone=? where cid=?";

int status = 0;
try {
	Connection con=dbcon.dbConnect();
PreparedStatement pstat=con.prepareStatement(query);
pstat.setBoolean(1,true);
pstat.setInt(2,cid);

status=pstat.executeUpdate();
	if(status>0) {
		System.out.println("Details Updated Successfully.......");
	}
	else {
		System.out.println("Something went wrong.............");
	}
	con.close();	
} catch (SQLException f) {
	// TODO Auto-generated catch block 
	f.printStackTrace();
}
return status;
}
public int setPaymentFlag(int cid)
{
dbConnection dbcon = new dbConnection();
String query="update dataFilled set PaymentDone=? where cid=?";

int status = 0;
try {
	Connection con=dbcon.dbConnect();
PreparedStatement pstat=con.prepareStatement(query);
pstat.setBoolean(1,true);
pstat.setInt(2,cid);
System.out.println("payment button started!");
status=pstat.executeUpdate();
	if(status>0) {
		System.out.println("Details Updated Successfully.......");
	}
	else {
		System.out.println("Something went wrong.............");
	}
	con.close();	
} catch (SQLException f) {
	// TODO Auto-generated catch block 
	f.printStackTrace();
}
return status;
}
public int setAdmitFlag(int cid)
{
dbConnection dbcon = new dbConnection();
String query="update dataFilled set admitDone=? where cid=?";

int status = 0;
try {
	Connection con=dbcon.dbConnect();
PreparedStatement pstat=con.prepareStatement(query);
pstat.setBoolean(1,true);
pstat.setInt(2,cid);

status=pstat.executeUpdate();
	if(status>0) {
		System.out.println("Details Updated Successfully.......");
	}
	else {
		System.out.println("Something went wrong.............");
	}
	con.close();	
} catch (SQLException f) {
	// TODO Auto-generated catch block 
	f.printStackTrace();
}
return status;
}
public int setAdminFlag(int cid)
{
dbConnection dbcon = new dbConnection();
String query="update dataFilled set admin=? where cid=?";

int status = 0;
try {
	Connection con=dbcon.dbConnect();
PreparedStatement pstat=con.prepareStatement(query);
pstat.setBoolean(1,true);
pstat.setInt(2,cid);

status=pstat.executeUpdate();
	if(status>0) {
		System.out.println("Details Updated Successfully.......");
	}
	else {
		System.out.println("Something went wrong.............");
	}
	con.close();	
} catch (SQLException f) {
	// TODO Auto-generated catch block 
	f.printStackTrace();
}
return status;
}

public int setregisterFlag(int cid)
{
dbConnection dbcon = new dbConnection();
String query="update dataFilled set registerDone=? where cid=?";

int status = 0;
try {
	Connection con=dbcon.dbConnect();
PreparedStatement pstat=con.prepareStatement(query);
pstat.setBoolean(1,true);
pstat.setInt(2,cid);

status=pstat.executeUpdate();
	if(status>0) {
		System.out.println("Details Updated Successfully.......");
	}
	else {
		System.out.println("Something went wrong.............");
	}
	con.close();	
} catch (SQLException f) {
	// TODO Auto-generated catch block 
	f.printStackTrace();
}
return status;
}

public dataFilled getFlags(int cid) {
	dataFilled df = null;
	
	dbConnection dbcon = new dbConnection();

    try {
    	
    	Connection con=dbcon.dbConnect();

      String query = "SELECT * FROM dataFilled WHERE cid = ?";

      PreparedStatement stmt = con.prepareStatement(query);

      stmt.setInt(1, cid);

      ResultSet rs = stmt.executeQuery();



      if (rs.next()) {

        df = new dataFilled(
        		
          rs.getInt(1),

          rs.getBoolean(2),

          rs.getBoolean(3),
          
          rs.getBoolean(4),
          
          rs.getBoolean(5),
          
          rs.getBoolean(6),
          
          rs.getBoolean(7),
          
          rs.getBoolean(8),
          
          rs.getBoolean(9),
          
          rs.getBoolean(10)

        );

      }
      con.close();
    } catch (SQLException e) {

      e.printStackTrace();

    }
	
	return df;
	
}

}