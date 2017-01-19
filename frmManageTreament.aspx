<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageEmp.master" AutoEventWireup="true"
    CodeFile="frmManageTreament.aspx.cs" Inherits="frmManageTreament" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <asp:Label ID="lblTreatment" runat="server" Text="Add a Patient Treatment"></asp:Label>
        <p>
        </p>
        <div align="right" class="container">
            <div class="row">
                <div class="col-xs-7">
                    <asp:Label ID="Label1" runat="server" Text="Appointment ID: "></asp:Label>
                    <asp:TextBox ID="txtAppointment_ID" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Label ID="Label8" runat="server" Text="Patient ID: "></asp:Label>
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
                    <asp:Label ID="Label3" runat="server" Text="Nurse ID: "></asp:Label>
                    <asp:TextBox ID="txtNurse_ID" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Label ID="Label4" runat="server" Text="Procedure Room: "></asp:Label>
                    <asp:TextBox ID="txtProcedure_Room" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Label ID="Label5" runat="server" Text="Diagnosis: "></asp:Label>
                    <asp:TextBox ID="txtDiagnosis" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Label ID="Label6" runat="server" Text="Treatment: "></asp:Label>
                    <asp:TextBox ID="txtTreatment" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Label ID="Label7" runat="server" Text="Notes: "></asp:Label>
                    <asp:TextBox ID="txtNotes" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" CssClass="btn btn-primary" />&nbsp<asp:Button
                        ID="btnClearForm" runat="server" Text="Clear" OnClick="btnClearForm_Click" CssClass="btn btn-warning" />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                <asp:Label ID="lblFindPatient" runat="server" Text="Patient Last Name:"></asp:Label>
                    <asp:TextBox ID="txtFindPatient" runat="server"></asp:TextBox><br />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <asp:Button ID="btnPatientLName" runat="server" Text="Search" CssClass="btn btn-info" />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="Patient ID" DataSourceID="AccessDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Patient ID" HeaderText="Patient ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Patient ID" />
                            <asp:BoundField DataField="First Name" HeaderText="First Name" 
                                SortExpression="First Name" />
                            <asp:BoundField DataField="Last Name" HeaderText="Last Name" 
                                SortExpression="Last Name" />
                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        </Columns>
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="~/App_Data/Medical_Record.accdb" 
                        
                        SelectCommand="SELECT [Patient_ID] AS [Patient ID], [First_Name] AS [First Name], [Last_Name] AS [Last Name], [DOB] FROM [Patient] WHERE ([Last_Name] = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtFindPatient" Name="Last_Name" 
                                PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:AccessDataSource>
                </div>
                </div>
        </div>
    </center>
</asp:Content>
