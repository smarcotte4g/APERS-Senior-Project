using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsBusinessLayer
/// </summary>
public class clsBusinessLayer
{

    //create variable
    string dataPath;

    // creates interface for myDataLayer
    clsDataLayer myDataLayer;

    public clsBusinessLayer(string serverMappedPath)
	{
        // maps and creates data path
        dataPath = serverMappedPath;
        myDataLayer = new clsDataLayer(dataPath + "Medical_Record.accdb");
	}

    // validates a user for access
    public bool CheckUserCredentials(System.Web.SessionState.HttpSessionState currentSession,
        string User_Login, string User_Password)
    {
        // add bool 
        bool isValid = myDataLayer.ValidateUser(User_Login, User_Password);

        return isValid;
    }
    // get security level
    public string secLevel(string user_Login)
    {
        // this calls data layer to get secLevel
        return myDataLayer.secLevel(user_Login);
    }
    // get user ID
    public string user_ID(string user_Login)
    {
        // this calls data layer to get secLevel
        return myDataLayer.user_ID(user_Login);
    }

    // search for a patient frmManagePatient 
    public dsUser FindPatient(string PatientID)
    {
        dsUser dsFoundPatient = myDataLayer.FindPatient(PatientID);

        if (dsFoundPatient.Patient.Rows.Count > 0)
        {
            System.Data.DataRow patientRecord = dsFoundPatient.Patient.Rows[0];

            if (patientRecord["First_Name"] == DBNull.Value)
                patientRecord["First_Name"] = string.Empty;

            if (patientRecord["Last_Name"] == DBNull.Value)
                patientRecord["Last_Name"] = string.Empty;

            if (patientRecord["Payment_ID"] == DBNull.Value)
                patientRecord["Payment_ID"] = Convert.ToInt32((string)null);

            if (patientRecord["Register_ID"] == DBNull.Value)
                patientRecord["Register_ID"] = Convert.ToInt32((string)null);

            if (patientRecord["Doctor_ID"] == DBNull.Value)
                patientRecord["Doctor_ID"] = Convert.ToInt32((string)null);

            if (patientRecord["Patient_Height"] == DBNull.Value)
                patientRecord["Patient_Height"] = string.Empty;

            if (patientRecord["Patient_Weight"] == DBNull.Value)
                patientRecord["Patient_Weight"] = string.Empty;

            if (patientRecord["Patient_FamilyPhacisian"] == DBNull.Value)
                patientRecord["Patient_FamilyPhacisian"] = string.Empty;

            if (patientRecord["Patient_Note"] == DBNull.Value)
                patientRecord["Patient_Note"] = string.Empty;

            if (patientRecord["HMO"] == DBNull.Value)
                patientRecord["HMO"] = string.Empty;

            if (patientRecord["DOB"] == DBNull.Value)
                patientRecord["DOB"] = Convert.ToDateTime((string)null);

            if (patientRecord["Blood_Pressure"] == DBNull.Value)
                patientRecord["Blood_Pressure"] = string.Empty;

            if (patientRecord["Temperature"] == DBNull.Value)
                patientRecord["Temperature"] = string.Empty;

            if (patientRecord["Pulse_Ox"] == DBNull.Value)
                patientRecord["Pulse_Ox"] = string.Empty;

            if (patientRecord["Heart_Rate"] == DBNull.Value)
                patientRecord["Heart_Rate"] = string.Empty;

            if (patientRecord["Diagnosis"] == DBNull.Value)
                patientRecord["Diagnosis"] = string.Empty;

            if (patientRecord["Family_History"] == DBNull.Value)
                patientRecord["Family_History"] = string.Empty;

            if (patientRecord["Social_History"] == DBNull.Value)
                patientRecord["Social_History"] = string.Empty;
        }

        return dsFoundPatient;
    }

    // updates the patient data frmManagePatient
    public string UpdatePatient(string patient_ID, string fName, string lName, int payment_ID, int register_ID, int Doctor_ID,
        string height, string weight, string phacisian, string note, string hmo, DateTime dob, string blood_Pressure, string temperature,
        string pulse_Ox, string heart_Rate, string diagnosis, string family_history, string social_history)
    {
        // change label message
        string resultMessage = "Customer Updated Successfully.";

        // try to update the customer in data layer
        try
        {
            myDataLayer.UpdateCustomer(patient_ID, fName, lName, payment_ID, register_ID, Doctor_ID, height, weight,
                phacisian, note, hmo, dob, blood_Pressure, temperature, pulse_Ox, heart_Rate, diagnosis, family_history, social_history);
        }
        catch (Exception error)
        {
            // change label
            resultMessage = "Error updating customer, please check form data. ";
            resultMessage = resultMessage + error.Message;
        }

        return resultMessage;
    }

    // puts the perscription into the database
    public string InsertPrescription(string patient_ID, string doctor_ID, string medication_ID, string dosage, string frequency, string quantity, string instructions)
    {
        // change label message
        string resultMessage = "Prescription Added Successfully.";

        try
        {
            // try to insert the customer in data layer
            myDataLayer.InsertPrescription(patient_ID, doctor_ID, medication_ID, dosage, frequency, quantity, instructions);
        }
        catch (Exception error)
        {
            // change label message
            resultMessage = "Error adding prescription, please check form data. ";
            resultMessage = resultMessage + error.Message;
        }

        return resultMessage;
    }

    // puts the treatment into the database
    public string InsertTreatment(string appointment_ID, string patient_ID, string doctor_ID, string nurse_ID, string procedure_Room,
        string diagnosis, string treatment, string notes)
    {
        // change label message
        string resultMessage = "Treatment Added Successfully.";

        try
        {
            // try to insert the customer in data layer
            myDataLayer.InsertTreatment(appointment_ID, patient_ID, doctor_ID, nurse_ID, procedure_Room, diagnosis, treatment, notes);
        }
        catch (Exception error)
        {
            // change label message
            resultMessage = "Error adding treatment, please check form data. ";
            resultMessage = resultMessage + error.Message;
        }

        return resultMessage;
    }

    // creates a new user frmRegistration
    public string CreateUser(string username, string password)
    {
        // change label message
        string resultMessage = "User Added Successfully.";

        try
        {
            // try to insert the customer in data layer
            myDataLayer.CreateUser(username, password);
        }
        catch (Exception error)
        {
            // change label message
            resultMessage = "Error adding treatment, please check form data. ";
            resultMessage = resultMessage + error.Message;
        }

        return resultMessage;
    }

    // for myaccount page find user data to display
    public dsUser FindUser(string strUser_ID)
    {
        dsUser dsFoundUser = myDataLayer.FindUser(strUser_ID);
        // change label message
        //string resultMessage = "User Added Successfully.";
        
        if (dsFoundUser.Register_Information.Rows.Count > 0)
        {
            System.Data.DataRow userRecord = dsFoundUser.Register_Information.Rows[0];

            if (userRecord["First_Name"] == DBNull.Value)
                userRecord["First_Name"] = string.Empty;

            if (userRecord["Last_Name"] == DBNull.Value)
                userRecord["Last_Name"] = string.Empty;

            if (userRecord["Initial"] == DBNull.Value)
                userRecord["Initial"] = string.Empty;

            if (userRecord["DOB"] == DBNull.Value)
                userRecord["DOB"] = Convert.ToDateTime((string)null);

            if (userRecord["Gender"] == DBNull.Value)
                userRecord["Gender"] = string.Empty;

            if (userRecord["Email"] == DBNull.Value)
                userRecord["Email"] = string.Empty;

            if (userRecord["Home_Phone"] == DBNull.Value)
                userRecord["Home_Phone"] = string.Empty;

            if (userRecord["Work_Phone"] == DBNull.Value)
                userRecord["Work_Phone"] = string.Empty;

            if (userRecord["Other_Phone"] == DBNull.Value)
                userRecord["Other_Phone"] = string.Empty;

            if (userRecord["Fax_Number"] == DBNull.Value)
                userRecord["Fax_Number"] = string.Empty;

            if (userRecord["Address"] == DBNull.Value)
                userRecord["Address"] = string.Empty;

            if (userRecord["City"] == DBNull.Value)
                userRecord["City"] = string.Empty;

            if (userRecord["State"] == DBNull.Value)
                userRecord["State"] = string.Empty;

            if (userRecord["Zip_Code"] == DBNull.Value)
                userRecord["Zip_Code"] = string.Empty;

            if (userRecord["Family_Contact_Name"] == DBNull.Value)
                userRecord["Family_Contact_Name"] = string.Empty;

            if (userRecord["Family_Contact_Relationship"] == DBNull.Value)
                userRecord["Family_Contact_Relationship"] = string.Empty;

            if (userRecord["Family_Contact_Phone"] == DBNull.Value)
                userRecord["Family_Contact_Phone"] = string.Empty;

        }
        
        return dsFoundUser;
    }

    // updates customer account frmMyAccount3
    public string UpdateAccount(string strUser_ID, string fName, string lName, string initial, DateTime dob, string gender, string email,
        string home_Phone, string work_Phone, string other_Phone, string fax_Number, string address, string city, string state,
        string zip_Code, string family_Contact, string family_Relation, string family_Phone)
    {
        // change label message
        string resultMessage = "Account Details Updated Successfully.";

        // try to update the customer in data layer
        try
        {
            myDataLayer.UpdateAccount(strUser_ID, fName, lName, initial, dob, gender, email, home_Phone,
                work_Phone, other_Phone, fax_Number, address, city, state, zip_Code, family_Contact, family_Relation, family_Phone);
        }
        catch (Exception error)
        {
            // change label
            resultMessage = "Error updating account details, please check form data. ";
            resultMessage = resultMessage + error.Message;
        }

        return resultMessage;
    }

    // change password frmPasswordChange
    public string UpdatePassword(string strUser_ID, string password)
    {
        // change label message
        string resultMessage = "Password Updated Successfully";

        // try to update the customer in data layer
        try
        {
            myDataLayer.UpdatePassword(strUser_ID, password);
        }
        catch (Exception error)
        {
            // change label
            resultMessage = "Error updating password, please check form data. ";
            resultMessage = resultMessage + error.Message;
        }

        return resultMessage;
    }

    // adds a new account after registration frmMyAccount4
    public string AddAccount(string strUser_ID, string fName, string lName, string initial, string gender, string email,
        string home_Phone, string work_Phone, string other_Phone, string fax_Number, string address, string city, string state,
        string zip_Code, string family_Contact, string family_Relation, string family_Phone)
    {
        // change label message
        string resultMessage = "User Added Successfully.";

        try
        {
            // try to insert the customer in data layer
            myDataLayer.InsertUser(strUser_ID, fName, lName, initial, gender, email, home_Phone,
                work_Phone, other_Phone, fax_Number, address, city, state, zip_Code, family_Contact, family_Relation, family_Phone);
        }
        catch (Exception error)
        {
            // change label message
            resultMessage = "Error adding User, please check form data. ";
            resultMessage = resultMessage + error.Message;
        }

        return resultMessage;
    }
}