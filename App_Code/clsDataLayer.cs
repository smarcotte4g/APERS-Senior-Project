using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Net;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.IO;

/// <summary>
/// Summary description for clsDataLayer
/// </summary>
public class clsDataLayer
{
    // set the Connection to OleDbConnection data source
    OleDbConnection dbConnection;

    public clsDataLayer(string Path)
    {
        //Created connection to the database scource
        dbConnection = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;Data Source=" + Path);
    }

    // validates for login
    public bool ValidateUser(string User_Login, string User_Password)
    {
        // opens connection to database
        dbConnection.Open();

        // SQL statement to SELECT
        string sqlStmt = "SELECT * FROM Users WHERE User_Login = @user_Login AND User_Password = @user_Password";

        // create command to execute
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        // adds parameters for username and password
        dbCommand.Parameters.Add(new OleDbParameter("@user_Login", User_Login));
        dbCommand.Parameters.Add(new OleDbParameter("@user_Password", Encrypt(User_Password)));

        // creates data reader
        OleDbDataReader dr = dbCommand.ExecuteReader();

        // execute on isValid
        Boolean isValidAccount = dr.Read();

        // close connection to the database
        dbConnection.Close();

        // return value
        return isValidAccount;
    }

    //This function verifies a user in the tblUser table
    public static dsUser VerifyUser(string Database, string User_Login, string User_Password)
    {
        //Initializes the datasheet
        dsUser DS;
        //Initializes the Connection
        OleDbConnection sqlConn;
        //Initializes the Adapter
        OleDbDataAdapter sqlDA;

        //sets the Connection
        sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
                                      "Data Source=" + Database);

        //Prepares the adapter
        sqlDA = new OleDbDataAdapter("Select User_Status from Users " +
                                      "where User_Login like '" + User_Login + "' " +
                                      "and User_Password like '" + User_Password + "'", sqlConn);

        //Sets the data set equal to the User table
        DS = new dsUser();

        //Fills the Adapter
        sqlDA.Fill(DS.Users);

        //Returns the information about the user permission level
        return DS;

    }
    // return security level
    public string secLevel(string user_Login)
    {
        // select command for SecurityLevel
        OleDbCommand command = new OleDbCommand("SELECT User_Status from Users WHERE User_Login like '" + user_Login + "'");
        command.Connection = dbConnection;

        //Opens the connection
        dbConnection.Open();

        // this will take the SecurityLevel from the database table
        string User_Status = (string)command.ExecuteScalar();

        //Closes the connection
        dbConnection.Close();

        // return the local variable 
        return User_Status;
    }
    // return userid
    public string user_ID(string user_Login)
    {
        // select command for SecurityLevel
        OleDbCommand command = new OleDbCommand("SELECT User_ID from Users WHERE User_Login like '" + user_Login + "'");
        command.Connection = dbConnection;

        //Opens the connection
        dbConnection.Open();

        // this will take the SecurityLevel from the database table
        Int32 User_ID = (Int32)command.ExecuteScalar();

        //Closes the connection
        dbConnection.Close();

        // return the local variable 
        return User_ID.ToString();
    }

    public dsUser FindPatient(string PatientID)
    {
        // SELECT statement that uses LastName to check if the name is in db
        string sqlStmt = "SELECT * FROM Patient WHERE Patient_ID like '" + PatientID + "'";

        // initializes the instance of OleDbCommand class
        OleDbDataAdapter sqlDataAdapter = new OleDbDataAdapter(sqlStmt, dbConnection);

        // adds or refreshes row in dataset
        dsUser myStoreDataSet = new dsUser();
        sqlDataAdapter.Fill(myStoreDataSet.Patient);

        // return the local variable 
        return myStoreDataSet;
    }

    // inserts the patient frmManagePatients
    internal void UpdateCustomer(string patient_ID, string fName, string lName, int payment_ID, int register_ID, int doctor_ID, string height,
        string weight, string phacisian, string note, string hmo, DateTime dob, string blood_Pressure, string temperature,
        string pulse_Ox, string heart_Rate, string diagnosis, string family_history, string social_history)
    {
        // this opens the connection to the database
        dbConnection.Open();

        // this is the update string that sets the values 
        string sqlStmt = "UPDATE Patient SET First_Name= @first, " +
            "Last_Name= @last, " +
            "Payment_ID= @payment, " +
            "Register_ID= @register, " +
            "Doctor_ID= @doctor, " +
            "Patient_Height= @height, " +
            "Patient_Weight= @weight, " +
            "Patient_FamilyPhacisian= @phacisian, " +
            "Patient_Note= @note, " +
            "HMO= @hmo, " +
            "DOB= @dob, " +
            "Blood_Pressure= @blood_Pressure, " +
            "Temperature= @temperature, " +
            "Pulse_Ox= @pulse_Ox, " +
            "Heart_Rate= @heart_Rate, " +
            "Family_History= @family_history, " +
            "Social_History= @social_history, " +
            "Diagnosis= @diagnosis " +
            "WHERE (Patient.Patient_ID = @id)";

        // initializes the instance of OleDbCommand class
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        // new instance that uses parameter name and value
        OleDbParameter param = new OleDbParameter("@first", fName);
        dbCommand.Parameters.Add(param);

        // set parameters
        dbCommand.Parameters.Add(new OleDbParameter("@last", lName));
        dbCommand.Parameters.Add(new OleDbParameter("@payment", payment_ID));
        dbCommand.Parameters.Add(new OleDbParameter("@register", register_ID));
        dbCommand.Parameters.Add(new OleDbParameter("@doctor", doctor_ID));
        dbCommand.Parameters.Add(new OleDbParameter("@height", height));
        dbCommand.Parameters.Add(new OleDbParameter("@weight", weight));
        dbCommand.Parameters.Add(new OleDbParameter("@phacisian", phacisian));
        dbCommand.Parameters.Add(new OleDbParameter("@note", note));
        dbCommand.Parameters.Add(new OleDbParameter("@hmo", hmo));
        dbCommand.Parameters.Add(new OleDbParameter("@dob", dob));
        dbCommand.Parameters.Add(new OleDbParameter("@blood_Pressure", blood_Pressure));
        dbCommand.Parameters.Add(new OleDbParameter("@temperature", temperature));
        dbCommand.Parameters.Add(new OleDbParameter("@pulse_Ox", pulse_Ox));
        dbCommand.Parameters.Add(new OleDbParameter("@heart_Rate", heart_Rate));
        dbCommand.Parameters.Add(new OleDbParameter("@diagnosis", diagnosis));
        dbCommand.Parameters.Add(new OleDbParameter("@family_history", family_history));
        dbCommand.Parameters.Add(new OleDbParameter("@social_history", social_history));
        dbCommand.Parameters.Add(new OleDbParameter("@id", patient_ID));

        // execute SQL stmt against connection
        dbCommand.ExecuteNonQuery();

        // close the connection to the db
        dbConnection.Close();
    }

    // inserts the patient perscription frmManageMedicine
    internal void InsertPrescription(string patient_ID, string doctor_ID, string medication_ID, string dosage, string frequency, string quantity, string instructions)
    {
        // this opens the connection to the database
        dbConnection.Open();

        // INSERT command for properties
        string sqlStmt = "INSERT INTO Prescriptions (Patient_ID, Doctor_ID, Medication_ID, Dosage, Frequency, Quantity, Special_Instructions) ";
        sqlStmt += "VALUES (@patient_ID, @doctor_ID, @medication_ID, @dosage, @frequency, @quantity, @instructions)";

        // initializes the instance of OleDbCommand class
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        // new instance that uses parameter name and value
        OleDbParameter param = new OleDbParameter("@patient_ID", patient_ID);
        dbCommand.Parameters.Add(param);

        // set parameters
        dbCommand.Parameters.Add(new OleDbParameter("@doctor_ID", doctor_ID));
        dbCommand.Parameters.Add(new OleDbParameter("@medication_ID", medication_ID));
        dbCommand.Parameters.Add(new OleDbParameter("@dosage", dosage));
        dbCommand.Parameters.Add(new OleDbParameter("@frequency", frequency));
        dbCommand.Parameters.Add(new OleDbParameter("@quantity", quantity));
        dbCommand.Parameters.Add(new OleDbParameter("@instructions", instructions));

        // execute SQL stmt against connection
        dbCommand.ExecuteNonQuery();

        // close the connection to the db
        dbConnection.Close();
    }

    // inserts the patient treatment frmManageTreatment
    internal void InsertTreatment(string appointment_ID, string patient_ID, string doctor_ID, string nurse_ID, string procedure_Room, 
        string diagnosis, string treatment, string notes)
    {
        // this opens the connection to the database
        dbConnection.Open();

        // INSERT command for properties
        string sqlStmt = "INSERT INTO Visit_Procedures (Patient_ID, Doctor_ID, Appointment_ID, Nurse_ID, Procedure_Room, Procedure_Diagnosis, Procedure_Treatment, Procedure_Note) ";
        sqlStmt += "VALUES (@patient_ID, @doctor_ID, @appointment_ID, @nurse_ID, @procedure_Room, @diagnosis, @treatment, @notes)";

        // initializes the instance of OleDbCommand class
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        // new instance that uses parameter name and value
        OleDbParameter param = new OleDbParameter("@patient_ID", patient_ID);
        dbCommand.Parameters.Add(param);

        // set parameters
        dbCommand.Parameters.Add(new OleDbParameter("@appointment_ID", appointment_ID));
        dbCommand.Parameters.Add(new OleDbParameter("@doctor_ID", doctor_ID));
        dbCommand.Parameters.Add(new OleDbParameter("@nurse_ID", nurse_ID));
        dbCommand.Parameters.Add(new OleDbParameter("@procedure_Room", procedure_Room));
        dbCommand.Parameters.Add(new OleDbParameter("@diagnosis", diagnosis));
        dbCommand.Parameters.Add(new OleDbParameter("@treatment", treatment));
        dbCommand.Parameters.Add(new OleDbParameter("@notes", notes));

        // execute SQL stmt against connection
        dbCommand.ExecuteNonQuery();

        // close the connection to the db
        dbConnection.Close();
    }

    // Creates a new user frmRegistration
    internal void CreateUser(string username, string password)
    {
            // this opens the connection to the database
            dbConnection.Open();

            // INSERT command for properties
            string sqlStmt = "INSERT INTO Users (User_Login, User_Password, User_Status) ";
            sqlStmt += "VALUES (@username, @password, @status)";

            // initializes the instance of OleDbCommand class
            OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

            // new instance that uses parameter name and value
            OleDbParameter param = new OleDbParameter("@username", username);
            dbCommand.Parameters.Add(param);

            // set parameters
            dbCommand.Parameters.Add(new OleDbParameter("@password", Encrypt(password)));
            dbCommand.Parameters.Add(new OleDbParameter("@status", "Customer"));

            // execute SQL stmt against connection
            dbCommand.ExecuteNonQuery();

            // close the connection to the db
            dbConnection.Close();

    }

    // can be called to encrypt data
    private string Encrypt(string clearText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }

    // finds the user
    internal dsUser FindUser(string strUser_ID)
    {
        // SELECT statement that uses LastName to check if the name is in db
        string sqlStmt = "SELECT * FROM Register_Information WHERE User_ID like '" + strUser_ID + "'";

        // initializes the instance of OleDbCommand class
        OleDbDataAdapter sqlDataAdapter = new OleDbDataAdapter(sqlStmt, dbConnection);

        // adds or refreshes row in dataset
        dsUser myStoreDataSet = new dsUser();
        sqlDataAdapter.Fill(myStoreDataSet.Register_Information);

        // return the local variable 
        return myStoreDataSet;
    }

    // updates the account frmMyAccount3
    internal void UpdateAccount(string strUser_ID, string fName, string lName, string initial, DateTime dob, string gender, 
        string email, string home_Phone, string work_Phone, string other_Phone, string fax_Number, 
        string address, string city, string state, string zip_Code, string family_Contact, string family_Relation, string family_Phone)
    {
        // this opens the connection to the database
        dbConnection.Open();

        // this is the update string that sets the values 
        string sqlStmt = "UPDATE Register_Information SET First_Name= @first, " +
            "Last_Name= @last, " +
            "Initial= @initial, " +
            "DOB= @dob, " +
            "Address= @address, " +
            "City= @city, " +
            "State= @state, " +
            "Zip_Code= @zip_Code, " +
            "Email= @email, " +
            "Gender= @gender, " +
            "Home_Phone= @home_Phone, " +
            "Work_Phone= @work_Phone, " +
            "Other_Phone= @other_Phone, " +
            "Fax_Number= @fax_Number, " +
            "Family_Contact_Name= @family_Contact, " +
            "Family_Contact_Relationship= @family_Relation, " +
            "Family_Contact_Phone= @family_Phone " +
            "WHERE User_ID =" + strUser_ID;
        

        // initializes the instance of OleDbCommand class
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        // new instance that uses parameter name and value
        OleDbParameter param = new OleDbParameter("@first", fName);
        dbCommand.Parameters.Add(param);

        // set parameters
        //dbCommand.Parameters.Add(new OleDbParameter("@strUserID", strUser_ID));
        dbCommand.Parameters.Add(new OleDbParameter("@last", lName));
        dbCommand.Parameters.Add(new OleDbParameter("@initial", initial));
        dbCommand.Parameters.Add(new OleDbParameter("@dob", dob));
        dbCommand.Parameters.Add(new OleDbParameter("@address", address));
        dbCommand.Parameters.Add(new OleDbParameter("@city", city));
        dbCommand.Parameters.Add(new OleDbParameter("@state", state));
        dbCommand.Parameters.Add(new OleDbParameter("@zip_Code", zip_Code));
        dbCommand.Parameters.Add(new OleDbParameter("@email", email));
        dbCommand.Parameters.Add(new OleDbParameter("@gender", gender));
        dbCommand.Parameters.Add(new OleDbParameter("@home_Phone", home_Phone));
        dbCommand.Parameters.Add(new OleDbParameter("@work_Phone", work_Phone));
        dbCommand.Parameters.Add(new OleDbParameter("@other_Phone", other_Phone));
        dbCommand.Parameters.Add(new OleDbParameter("@fax_Number", fax_Number));
        dbCommand.Parameters.Add(new OleDbParameter("@family_Contact", family_Contact));
        dbCommand.Parameters.Add(new OleDbParameter("@family_Relation", family_Relation));
        dbCommand.Parameters.Add(new OleDbParameter("@family_Phone", family_Phone));

        // execute SQL stmt against connection
        dbCommand.ExecuteNonQuery();

        // close the connection to the db
        dbConnection.Close();
    }

    // updates password frmPasswordChange
    internal void UpdatePassword(string strUser_ID, string password)
    {
        // this opens the connection to the database
        dbConnection.Open();

        // this is the update string that sets the values 
        string sqlStmt = "UPDATE Users SET User_Password= @password " +
            "WHERE User_ID =" + strUser_ID;

        // initializes the instance of OleDbCommand class
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        // set parameters
       dbCommand.Parameters.Add(new OleDbParameter("@password", Encrypt(password)));
        

        // execute SQL stmt against connection
        dbCommand.ExecuteNonQuery();

        // close the connection to the db
        dbConnection.Close();
    }

    // puts the user data into Register_Information ( new users)
    internal void InsertUser(string strUser_ID, string fName, string lName, string initial, string gender,
        string email, string home_Phone, string work_Phone, string other_Phone, string fax_Number,
        string address, string city, string state, string zip_Code, string family_Contact, string family_Relation, string family_Phone)
    {

        // this opens the connection to the database
        dbConnection.Open();

        // INSERT command for properties
        string sqlStmt = "INSERT INTO Register_Information (User_ID, First_Name, Last_Name, Initial, Address, City, State, Zip_Code, Email, Gender, Home_Phone, Work_Phone, Other_Phone, Fax_Number, Family_Contact_Name, Family_Contact_Relationship, Family_Contact_Phone) ";
        sqlStmt += "VALUES (@User_ID, @first, @last, @initial, @address, @city, @state, @zip_Code, @email, @gender, @home_Phone, @work_Phone, @other_Phone, @fax_Number, @family_Contact, @family_Relation, @family_Phone)";

        // initializes the instance of OleDbCommand class
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        // new instance that uses parameter name and value
        OleDbParameter param = new OleDbParameter("@UserID", strUser_ID);
        dbCommand.Parameters.Add(param);

        // set parameters
        dbCommand.Parameters.Add(new OleDbParameter("@first", fName));
        dbCommand.Parameters.Add(new OleDbParameter("@last", lName));
        dbCommand.Parameters.Add(new OleDbParameter("@initial", initial));
        dbCommand.Parameters.Add(new OleDbParameter("@address", address));
        dbCommand.Parameters.Add(new OleDbParameter("@city", city));
        dbCommand.Parameters.Add(new OleDbParameter("@state", state));
        dbCommand.Parameters.Add(new OleDbParameter("@zip_Code", zip_Code));
        dbCommand.Parameters.Add(new OleDbParameter("@email", email));
        dbCommand.Parameters.Add(new OleDbParameter("@gender", gender));
        dbCommand.Parameters.Add(new OleDbParameter("@home_Phone", home_Phone));
        dbCommand.Parameters.Add(new OleDbParameter("@work_Phone", work_Phone));
        dbCommand.Parameters.Add(new OleDbParameter("@other_Phone", other_Phone));
        dbCommand.Parameters.Add(new OleDbParameter("@fax_Number", fax_Number));
        dbCommand.Parameters.Add(new OleDbParameter("@family_Contact", family_Contact));
        dbCommand.Parameters.Add(new OleDbParameter("@family_Relation", family_Relation));
        dbCommand.Parameters.Add(new OleDbParameter("@family_Phone", family_Phone));

        // execute SQL stmt against connection
        dbCommand.ExecuteNonQuery();

        // close the connection to the db
        dbConnection.Close();
    }
}