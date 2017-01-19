<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageEmp.master" AutoEventWireup="true"
    CodeFile="frmManageMedicine.aspx.cs" Inherits="frmManageMedicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" onload="LoadList()">
    <center>
        <asp:Label ID="lblPrescription" runat="server" Text="Add a Prescription"></asp:Label>
        <p>
        </p>
        <div align="right" class="container">
            <div class="row">
                <div class="col-xs-7">
                    <asp:Label ID="Label1" runat="server" Text="Patient ID: "></asp:Label>
                    <asp:TextBox ID="txtPatient_ID" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Label ID="Label2" runat="server" Text="Doctor ID: "></asp:Label>
                    <asp:TextBox ID="txtDoctor_ID" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Label ID="Label3" runat="server" Text="Medication ID: "></asp:Label>
                    <asp:TextBox ID="txtMedication_ID" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Label ID="Label4" runat="server" Text="Dosage: "></asp:Label>
                    <asp:TextBox ID="txtDosage" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Label ID="Label5" runat="server" Text="Frequency: "></asp:Label>
                    <asp:TextBox ID="txtFrequency" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Label ID="Label6" runat="server" Text="Quantity: "></asp:Label>
                    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Label ID="Label7" runat="server" Text="Instructions: "></asp:Label>
                    <asp:TextBox ID="txtInstructions" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" CssClass="btn btn-success" />&nbsp;<asp:Button
                        ID="btnClearForm" runat="server" Text="Clear" OnClick="btnClearForm_Click1" CssClass="btn btn-warning" />
                </div>
            </div>
        </div>
        <div align="right" class="container">
            <div class="row">
                <div class="col-xs-7">
                <asp:Label ID="lblFindPatient" runat="server" Text="Patient Last Name:"></asp:Label>
                    <asp:TextBox ID="txtPatientLName" runat="server"></asp:TextBox><br />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Button ID="btnPatientLName" runat="server" Text="Search" CssClass="btn btn-info" />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="Patient_ID" DataSourceID="AccessDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Patient_ID" HeaderText="Patient_ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Patient_ID" />
                            <asp:BoundField DataField="First_Name" HeaderText="First_Name" 
                                SortExpression="First_Name" />
                            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" 
                                SortExpression="Last_Name" />
                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        </Columns>
                    </asp:GridView>
                    
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="~/App_Data/Medical_Record.accdb" 
                        SelectCommand="SELECT [Patient_ID], [First_Name], [Last_Name], [DOB] FROM [Patient] WHERE ([Last_Name] = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtPatientLName" Name="Last_Name" 
                                PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:AccessDataSource>
                    
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                <asp:Label ID="lblFindMed" runat="server" Text="Medication Name:"></asp:Label>
                    <asp:TextBox ID="txtFindMed" runat="server"></asp:TextBox><br />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Button ID="btnFindMed" runat="server" Text="Search" CssClass="btn btn-info" />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="Medication_ID" DataSourceID="AccessDataSource2">
                        <Columns>
                            <asp:BoundField DataField="Med_Name" HeaderText="Med_Name" 
                                SortExpression="Med_Name" />
                            <asp:BoundField DataField="Medication_ID" HeaderText="Medication_ID" 
                                SortExpression="Medication_ID" InsertVisible="False" ReadOnly="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                        DataFile="~/App_Data/Medical_Record.accdb" 
                        
                        
                        SelectCommand="SELECT TOP 1 [Med_Name], [Medication_ID] FROM [Medication] WHERE ([Med_Name] = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtFindMed" Name="Med_Name" 
                                PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:AccessDataSource>
                </div>
            </div>
         </div>
    </center>
</asp:Content>
