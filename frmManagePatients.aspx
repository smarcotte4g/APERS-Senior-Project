<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageEmp.master" AutoEventWireup="true"
    CodeFile="frmManagePatients.aspx.cs" Inherits="frmManagePatients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <div align="right" class="container">
            <div class="row">
                <div class="col-xs-10">
                    <asp:Label ID="lblFindPatient" runat="server" Text="Patient Last Name:"></asp:Label>
                    <asp:TextBox ID="txtFindP" runat="server"></asp:TextBox>
                    <asp:Button ID="btnFindP" runat="server" Text="Search" CssClass="btn btn-info" />
                </div>
            </div>
        </div>
        <p />
        <div align="right" class="container">
            <div class="row">
                <div class="col-xs-10">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Patient_ID"
            DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="Patient_ID" HeaderText="Patient_ID" InsertVisible="False"
                    ReadOnly="True" SortExpression="Patient_ID" />
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Medical_Record.accdb"
            SelectCommand="SELECT [Patient_ID], [First_Name], [Last_Name], [DOB] FROM [Patient] WHERE ([Last_Name] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtFindP" Name="Last_Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        </div>
            </div>
        </div>
        

        <div align="right" class="container">
            <div class="row">
                <div class="col-xs-10">
                    <asp:Label ID="Label3" runat="server" Text="Patient ID:"></asp:Label>
                    <asp:TextBox ID="txtPatientID" runat="server"></asp:TextBox>
                    <asp:Button ID="btnFindPatient" runat="server" Text="Search" OnClick="btnFindPatient_Click" CssClass="btn btn-info" />
                    <asp:Button ID="btnClearForm" runat="server" Text="Clear" OnClick="btnClearForm_Click" CssClass="btn btn-warning" />
                </div>
            </div>
        </div>
        <p>
        </p>
        <div align="right" class="container">
            <div class="row">
                <div class="col-xs-6">
                    <asp:Label ID="Label12" runat="server" Text="First Name: "></asp:Label>
                    <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                </div>
                <div class="col-xs-6">
                    <asp:Label ID="Label1" runat="server" Text="Last Name: "></asp:Label>
                    <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <asp:Label ID="Label2" runat="server" Text="Payment ID: "></asp:Label>
                    <asp:TextBox ID="txtPaymentID" runat="server"></asp:TextBox>
                </div>
                <div class="col-xs-6">
                    <asp:Label ID="Label8" runat="server" Text="Register ID: "></asp:Label>
                    <asp:TextBox ID="txtRegisterID" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <asp:Label ID="Label9" runat="server" Text="Doctor ID: "></asp:Label>
                    <asp:TextBox ID="txtDoctorID" runat="server"></asp:TextBox>
                </div>
                <div class="col-xs-6">
                    <asp:Label ID="Label10" runat="server" Text="Height: "></asp:Label>
                    <asp:TextBox ID="txtHeight" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <asp:Label ID="Label4" runat="server" Text="Weight: "></asp:Label>
                    <asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>
                </div>
                <div class="col-xs-6">
                    <asp:Label ID="Label7" runat="server" Text="Physician: "></asp:Label>
                    <asp:TextBox ID="txtPhacisian" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <asp:Label ID="Label6" runat="server" Text="Notes: "></asp:Label>
                    <asp:TextBox ID="txtNotes" runat="server"></asp:TextBox>
                </div>
                <div class="col-xs-6">
                    <asp:Label ID="Label5" runat="server" Text="HMO: "></asp:Label>
                    <asp:TextBox ID="txtHMO" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <asp:Label ID="Label11" runat="server" Text="DOB: "></asp:Label>
                    <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                </div>
                <div class="col-xs-6">
                    <asp:Label ID="Label13" runat="server" Text="Blood Pressure: "></asp:Label>
                    <asp:TextBox ID="txtBlood_Pressure" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <asp:Label ID="Label14" runat="server" Text="Temperature: "></asp:Label>
                    <asp:TextBox ID="txtTemperature" runat="server"></asp:TextBox>
                </div>
                <div class="col-xs-6">
                    <asp:Label ID="Label15" runat="server" Text="Pulse Ox: "></asp:Label>
                    <asp:TextBox ID="txtPulse_Ox" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <asp:Label ID="Label16" runat="server" Text="Heart Rate: "></asp:Label>
                    <asp:TextBox ID="txtHeart_Rate" runat="server"></asp:TextBox>
                </div>
                <div class="col-xs-6">
                    <asp:Label ID="Label17" runat="server" Text="Diagnosis: "></asp:Label>
                    <asp:TextBox ID="txtDiagnosis" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <asp:Label ID="Label18" runat="server" Text="Family History: "></asp:Label>
                    <asp:TextBox ID="txtFamily_History" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
                <div class="col-xs-6">
                    <asp:Label ID="Label19" runat="server" Text="Social History: "></asp:Label>
                    <asp:TextBox ID="txtSocial_History" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
        
        <div class="row">
                <div class="col-xs-7">
        <asp:Label ID="lblPSearch" runat="server" Text=""></asp:Label><br />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="btn btn-primary" />
        </div>
        </div>
        </div>
        <div align="right" class="container">
        <div class="row">
                <div class="col-xs-7">
                    <asp:Label ID="lblPastPrescriptions" runat="server" Text="Past Prescriptions:" 
                        Visible="False" Font-Bold="True"></asp:Label>
                </div>
                </div>
            <div class="row">
                <div class="col-xs-9">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="Prescription ID" DataSourceID="AccessDataSource2">
                        <Columns>
                            <asp:BoundField DataField="Prescription ID" HeaderText="Prescription ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Prescription ID" />
                            <asp:BoundField DataField="Medication ID" HeaderText="Medication ID" 
                                SortExpression="Medication ID" />
                            <asp:BoundField DataField="Dosage" HeaderText="Dosage" 
                                SortExpression="Dosage" />
                            <asp:BoundField DataField="Frequency" HeaderText="Frequency" 
                                SortExpression="Frequency" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                                SortExpression="Quantity" />
                        </Columns>
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                        ConflictDetection="CompareAllValues" DataFile="~/App_Data/Medical_Record.accdb" 
                        DeleteCommand="DELETE FROM [Prescriptions] WHERE [Prescriptions_ID] = ? AND (([Medication_ID] = ?) OR ([Medication_ID] IS NULL AND ? IS NULL)) AND (([Dosage] = ?) OR ([Dosage] IS NULL AND ? IS NULL)) AND (([Frequency] = ?) OR ([Frequency] IS NULL AND ? IS NULL)) AND (([Quantity] = ?) OR ([Quantity] IS NULL AND ? IS NULL))" 
                        InsertCommand="INSERT INTO [Prescriptions] ([Prescriptions_ID], [Medication_ID], [Dosage], [Frequency], [Quantity]) VALUES (?, ?, ?, ?, ?)" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectCommand="SELECT [Prescriptions_ID] AS [Prescription ID], [Medication_ID] AS [Medication ID], [Dosage], [Frequency], [Quantity] FROM [Prescriptions] WHERE ([Patient_ID] = ?)" 
                        
                        UpdateCommand="UPDATE [Prescriptions] SET [Medication_ID] = ?, [Dosage] = ?, [Frequency] = ?, [Quantity] = ? WHERE [Prescriptions_ID] = ? AND (([Medication_ID] = ?) OR ([Medication_ID] IS NULL AND ? IS NULL)) AND (([Dosage] = ?) OR ([Dosage] IS NULL AND ? IS NULL)) AND (([Frequency] = ?) OR ([Frequency] IS NULL AND ? IS NULL)) AND (([Quantity] = ?) OR ([Quantity] IS NULL AND ? IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Prescriptions_ID" Type="Int32" />
                            <asp:Parameter Name="original_Medication_ID" Type="Int32" />
                            <asp:Parameter Name="original_Medication_ID" Type="Int32" />
                            <asp:Parameter Name="original_Dosage" Type="String" />
                            <asp:Parameter Name="original_Dosage" Type="String" />
                            <asp:Parameter Name="original_Frequency" Type="String" />
                            <asp:Parameter Name="original_Frequency" Type="String" />
                            <asp:Parameter Name="original_Quantity" Type="String" />
                            <asp:Parameter Name="original_Quantity" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Prescriptions_ID" Type="Int32" />
                            <asp:Parameter Name="Medication_ID" Type="Int32" />
                            <asp:Parameter Name="Dosage" Type="String" />
                            <asp:Parameter Name="Frequency" Type="String" />
                            <asp:Parameter Name="Quantity" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtPatientID" Name="Patient_ID" 
                                PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Medication_ID" Type="Int32" />
                            <asp:Parameter Name="Dosage" Type="String" />
                            <asp:Parameter Name="Frequency" Type="String" />
                            <asp:Parameter Name="Quantity" Type="String" />
                            <asp:Parameter Name="original_Prescriptions_ID" Type="Int32" />
                            <asp:Parameter Name="original_Medication_ID" Type="Int32" />
                            <asp:Parameter Name="original_Medication_ID" Type="Int32" />
                            <asp:Parameter Name="original_Dosage" Type="String" />
                            <asp:Parameter Name="original_Dosage" Type="String" />
                            <asp:Parameter Name="original_Frequency" Type="String" />
                            <asp:Parameter Name="original_Frequency" Type="String" />
                            <asp:Parameter Name="original_Quantity" Type="String" />
                            <asp:Parameter Name="original_Quantity" Type="String" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
            <asp:Label ID="lblPastTreatment" runat="server" Text="Past Treatment:" Visible="False" 
                        Font-Bold="True"></asp:Label>
            </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="AccessDataSource3">
                        <Columns>
                            <asp:BoundField DataField="Appointment ID" HeaderText="Appointment ID" 
                                SortExpression="Appointment ID" />
                            <asp:BoundField DataField="Doctor ID" HeaderText="Doctor ID" 
                                SortExpression="Doctor ID" />
                            <asp:BoundField DataField="Nurse ID" HeaderText="Nurse ID" 
                                SortExpression="Nurse ID" />
                            <asp:BoundField DataField="Diagnosis" 
                                HeaderText="Diagnosis" SortExpression="Diagnosis" />
                            <asp:BoundField DataField="Treatment" 
                                HeaderText="Treatment" SortExpression="Treatment" />
                            <asp:BoundField DataField="Notes" HeaderText="Notes" 
                                SortExpression="Notes" />
                        </Columns>
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
                        DataFile="~/App_Data/Medical_Record.accdb" 
                        
                        SelectCommand="SELECT [Appointment_ID] AS [Appointment ID], [Doctor_ID] AS [Doctor ID], [Nurse_ID] AS [Nurse ID], [Procedure_Diagnosis] AS [Diagnosis], [Procedure_Treatment] AS [Treatment], [Procedure_Note] AS [Notes] FROM [Visit_Procedures] WHERE ([Patient_ID] = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtPatientID" Name="Patient_ID" 
                                PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:AccessDataSource>
                </div>
                </div>
            <div class="row">
                <div class="col-xs-7">
            <asp:Label ID="lblInsurance" runat="server" Text="Insurance:" Visible="False" 
                        Font-Bold="True"></asp:Label>
            </div>
            </div>
            <div class="row">
                <div class="col-xs-10">
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Insurance_ID" DataSourceID="AccessDataSource4">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="Insurance_ID" HeaderText="Insurance_ID" InsertVisible="False" ReadOnly="True" SortExpression="Insurance_ID" />
                                <asp:BoundField DataField="Patient_ID" HeaderText="Patient_ID" SortExpression="Patient_ID" />
                                <asp:BoundField DataField="Insurance_GroupID" HeaderText="Insurance_GroupID" SortExpression="Insurance_GroupID" />
                                <asp:BoundField DataField="Insurance_PlanName" HeaderText="Insurance_PlanName" SortExpression="Insurance_PlanName" />
                                <asp:BoundField DataField="Insurance_Phone" HeaderText="Insurance_Phone" SortExpression="Insurance_Phone" />
                            </Columns>
                        </asp:GridView>
                        <asp:AccessDataSource ID="AccessDataSource4" runat="server" ConflictDetection="CompareAllValues" DataFile="~/App_Data/Medical_Record.accdb" DeleteCommand="DELETE FROM [Insurance] WHERE [Insurance_ID] = ? AND (([Patient_ID] = ?) OR ([Patient_ID] IS NULL AND ? IS NULL)) AND (([Insurance_GroupID] = ?) OR ([Insurance_GroupID] IS NULL AND ? IS NULL)) AND (([Insurance_PlanName] = ?) OR ([Insurance_PlanName] IS NULL AND ? IS NULL)) AND (([Insurance_Phone] = ?) OR ([Insurance_Phone] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Insurance] ([Insurance_ID], [Patient_ID], [Insurance_GroupID], [Insurance_PlanName], [Insurance_Phone]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Insurance_ID], [Patient_ID], [Insurance_GroupID], [Insurance_PlanName], [Insurance_Phone] FROM [Insurance] WHERE ([Patient_ID] = ?)" UpdateCommand="UPDATE [Insurance] SET [Patient_ID] = ?, [Insurance_GroupID] = ?, [Insurance_PlanName] = ?, [Insurance_Phone] = ? WHERE [Insurance_ID] = ? AND (([Patient_ID] = ?) OR ([Patient_ID] IS NULL AND ? IS NULL)) AND (([Insurance_GroupID] = ?) OR ([Insurance_GroupID] IS NULL AND ? IS NULL)) AND (([Insurance_PlanName] = ?) OR ([Insurance_PlanName] IS NULL AND ? IS NULL)) AND (([Insurance_Phone] = ?) OR ([Insurance_Phone] IS NULL AND ? IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Insurance_ID" Type="Int32" />
                                <asp:Parameter Name="original_Patient_ID" Type="Int32" />
                                <asp:Parameter Name="original_Patient_ID" Type="Int32" />
                                <asp:Parameter Name="original_Insurance_GroupID" Type="String" />
                                <asp:Parameter Name="original_Insurance_GroupID" Type="String" />
                                <asp:Parameter Name="original_Insurance_PlanName" Type="String" />
                                <asp:Parameter Name="original_Insurance_PlanName" Type="String" />
                                <asp:Parameter Name="original_Insurance_Phone" Type="String" />
                                <asp:Parameter Name="original_Insurance_Phone" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Insurance_ID" Type="Int32" />
                                <asp:Parameter Name="Patient_ID" Type="Int32" />
                                <asp:Parameter Name="Insurance_GroupID" Type="String" />
                                <asp:Parameter Name="Insurance_PlanName" Type="String" />
                                <asp:Parameter Name="Insurance_Phone" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtPatientID" Name="Patient_ID" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Patient_ID" Type="Int32" />
                                <asp:Parameter Name="Insurance_GroupID" Type="String" />
                                <asp:Parameter Name="Insurance_PlanName" Type="String" />
                                <asp:Parameter Name="Insurance_Phone" Type="String" />
                                <asp:Parameter Name="original_Insurance_ID" Type="Int32" />
                                <asp:Parameter Name="original_Patient_ID" Type="Int32" />
                                <asp:Parameter Name="original_Patient_ID" Type="Int32" />
                                <asp:Parameter Name="original_Insurance_GroupID" Type="String" />
                                <asp:Parameter Name="original_Insurance_GroupID" Type="String" />
                                <asp:Parameter Name="original_Insurance_PlanName" Type="String" />
                                <asp:Parameter Name="original_Insurance_PlanName" Type="String" />
                                <asp:Parameter Name="original_Insurance_Phone" Type="String" />
                                <asp:Parameter Name="original_Insurance_Phone" Type="String" />
                            </UpdateParameters>
                        </asp:AccessDataSource>
                    </div>
                </div>
         </div>

    </center>
</asp:Content>
