﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Data;
using System.Data.OleDb;

public partial class frmRegistration : System.Web.UI.Page
{
    clsBusinessLayer myBusinessLayer;

    protected void Page_Load(object sender, EventArgs e)
    {
        // returns path to directory
        myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/App_Data/"));
    }
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        if (txtRPassword.Text == txtPassword.Text)
        {
            // stores results in memory
            string results = myBusinessLayer.CreateUser(txtUsername.Text, txtPassword.Text);

            // calls updateForm method with results
            updateForm(results);
            Response.Redirect("frmMyAccount.aspx");
        }
        else
        {
            lblPasswordError.ForeColor = System.Drawing.Color.Red;
            lblPasswordError.Text = "Passwords do not match!";
        }
    }

    private void updateForm(string results)
    {

        // update label 
        lblPasswordError.Text = results;

    }

    // this is the decrypt method (this would not be here in production)
    private string Decrypt(string cipherText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] cipherBytes = Convert.FromBase64String(cipherText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return cipherText;
    }
}