using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Configuration;
using System.Data;
using System.IO;
using System.Net;
using System.Data.SqlClient;
using System.Net.Mime;

// this class will be used to send all the mail to employee and customers from the system

public class SendMail
{
    // GoDaddy smtp server name
    const string SERVER = "relay-hosting.secureserver.net";

    public SendMail()
    {
        // Add constructor logic here
    }

    
    public void CustQuestion(string email, string fname, string lname, string message)
    {
        MailAddress from = new MailAddress(email);
        MailAddress to = new MailAddress("mshientranvn@gmail.com");
        MailMessage mailObj = new MailMessage(from, to);
        mailObj.Subject = "You have recieved a question from APERS";

        // create the message body
        mailObj.Body = "<h2>" + fname + " " + lname + " has a question.</h2><p> " + message
            + "</p>" + "<p>And can be reached at this email address: " + email + "</p>";
        mailObj.IsBodyHtml = true;

        // uncomment these lines when loading to GoDaddy servers.

        SmtpClient smtp = new SmtpClient(SERVER);
        smtp.Send(mailObj);
        mailObj = null;
    }
}
