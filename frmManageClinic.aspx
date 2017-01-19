<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageEmp.master" AutoEventWireup="true" CodeFile="frmManageClinic.aspx.cs" Inherits="frmManageClinic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Manage Clinic Employees" Font-Bold="True"></asp:Label>
    <div align="right" class="container">
    <div class="row">
                <div class="col-xs-6">
                    <asp:Label ID="Label2" runat="server" Text="Doctors:" Font-Bold="True"></asp:Label>
                </div>
             </div>
            <div class="row">
                <div class="col-xs-10">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="Doctor_ID" DataSourceID="AccessDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Doctor_ID" HeaderText="Doctor_ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Doctor_ID" />
                            <asp:BoundField DataField="First_Name" HeaderText="First_Name" 
                                SortExpression="First_Name" />
                            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" 
                                SortExpression="Last_Name" />
                            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                            <asp:BoundField DataField="Specialty" HeaderText="Specialty" 
                                SortExpression="Specialty" />
                            <asp:BoundField DataField="Date_Joined" HeaderText="Date_Joined" 
                                SortExpression="Date_Joined" />
                            <asp:BoundField DataField="Date_Left" HeaderText="Date_Left" 
                                SortExpression="Date_Left" />
                            <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" 
                                SortExpression="Phone_Number" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        </Columns>
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        ConflictDetection="CompareAllValues" DataFile="~/App_Data/Medical_Record.accdb" 
                        DeleteCommand="DELETE FROM [Doctor] WHERE [Doctor_ID] = ? AND (([First_Name] = ?) OR ([First_Name] IS NULL AND ? IS NULL)) AND (([Last_Name] = ?) OR ([Last_Name] IS NULL AND ? IS NULL)) AND (([Title] = ?) OR ([Title] IS NULL AND ? IS NULL)) AND (([Specialty] = ?) OR ([Specialty] IS NULL AND ? IS NULL)) AND (([Date_Joined] = ?) OR ([Date_Joined] IS NULL AND ? IS NULL)) AND (([Date_Left] = ?) OR ([Date_Left] IS NULL AND ? IS NULL)) AND (([Phone_Number] = ?) OR ([Phone_Number] IS NULL AND ? IS NULL)) AND (([Email] = ?) OR ([Email] IS NULL AND ? IS NULL))" 
                        InsertCommand="INSERT INTO [Doctor] ([Doctor_ID], [First_Name], [Last_Name], [Title], [Specialty], [Date_Joined], [Date_Left], [Phone_Number], [Email]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectCommand="SELECT [Doctor_ID], [First_Name], [Last_Name], [Title], [Specialty], [Date_Joined], [Date_Left], [Phone_Number], [Email] FROM [Doctor]" 
                        
                        
                        
                        UpdateCommand="UPDATE [Doctor] SET [First_Name] = ?, [Last_Name] = ?, [Title] = ?, [Specialty] = ?, [Date_Joined] = ?, [Date_Left] = ?, [Phone_Number] = ?, [Email] = ? WHERE [Doctor_ID] = ? ">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Doctor_ID" Type="Int32" />
                            <asp:Parameter Name="original_First_Name" Type="String" />
                            <asp:Parameter Name="original_First_Name" Type="String" />
                            <asp:Parameter Name="original_Last_Name" Type="String" />
                            <asp:Parameter Name="original_Last_Name" Type="String" />
                            <asp:Parameter Name="original_Title" Type="String" />
                            <asp:Parameter Name="original_Title" Type="String" />
                            <asp:Parameter Name="original_Specialty" Type="String" />
                            <asp:Parameter Name="original_Specialty" Type="String" />
                            <asp:Parameter Name="original_Date_Joined" Type="DateTime" />
                            <asp:Parameter Name="original_Date_Joined" Type="DateTime" />
                            <asp:Parameter Name="original_Date_Left" Type="DateTime" />
                            <asp:Parameter Name="original_Date_Left" Type="DateTime" />
                            <asp:Parameter Name="original_Phone_Number" Type="String" />
                            <asp:Parameter Name="original_Phone_Number" Type="String" />
                            <asp:Parameter Name="original_Email" Type="String" />
                            <asp:Parameter Name="original_Email" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Doctor_ID" Type="Int32" />
                            <asp:Parameter Name="First_Name" Type="String" />
                            <asp:Parameter Name="Last_Name" Type="String" />
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="Specialty" Type="String" />
                            <asp:Parameter Name="Date_Joined" Type="DateTime" />
                            <asp:Parameter Name="Date_Left" Type="DateTime" />
                            <asp:Parameter Name="Phone_Number" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="First_Name" Type="String" />
                            <asp:Parameter Name="Last_Name" Type="String" />
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="Specialty" Type="String" />
                            <asp:Parameter Name="Date_Joined" Type="DateTime" />
                            <asp:Parameter Name="Date_Left" Type="DateTime" />
                            <asp:Parameter Name="Phone_Number" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="original_Doctor_ID" Type="Int32" />
                            <asp:Parameter Name="original_First_Name" Type="String" />
                            <asp:Parameter Name="original_First_Name" Type="String" />
                            <asp:Parameter Name="original_Last_Name" Type="String" />
                            <asp:Parameter Name="original_Last_Name" Type="String" />
                            <asp:Parameter Name="original_Title" Type="String" />
                            <asp:Parameter Name="original_Title" Type="String" />
                            <asp:Parameter Name="original_Specialty" Type="String" />
                            <asp:Parameter Name="original_Specialty" Type="String" />
                            <asp:Parameter Name="original_Date_Joined" Type="DateTime" />
                            <asp:Parameter Name="original_Date_Joined" Type="DateTime" />
                            <asp:Parameter Name="original_Date_Left" Type="DateTime" />
                            <asp:Parameter Name="original_Date_Left" Type="DateTime" />
                            <asp:Parameter Name="original_Phone_Number" Type="String" />
                            <asp:Parameter Name="original_Phone_Number" Type="String" />
                            <asp:Parameter Name="original_Email" Type="String" />
                            <asp:Parameter Name="original_Email" Type="String" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                </div>
             </div>
             <div class="row">
                <div class="col-xs-6">
                    
                    <asp:Label ID="Label3" runat="server" Text="Employees:" Font-Bold="True"></asp:Label>
                </div>
             </div>
             <div class="row">
                <div class="col-xs-9">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="Nurse_ID" DataSourceID="AccessDataSource2">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Nurse_ID" HeaderText="Nurse_ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Nurse_ID" />
                            <asp:BoundField DataField="First_Name" HeaderText="First_Name" 
                                SortExpression="First_Name" />
                            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" 
                                SortExpression="Last_Name" />
                            <asp:BoundField DataField="Position" HeaderText="Position" 
                                SortExpression="Position" />
                            <asp:BoundField DataField="Date_Joined" HeaderText="Date_Joined" 
                                SortExpression="Date_Joined" />
                            <asp:BoundField DataField="Date_Left" HeaderText="Date_Left" 
                                SortExpression="Date_Left" />
                            <asp:BoundField DataField="Telephone" HeaderText="Telephone" 
                                SortExpression="Telephone" />
                        </Columns>
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                        ConflictDetection="CompareAllValues" DataFile="~/App_Data/Medical_Record.accdb" 
                        DeleteCommand="DELETE FROM [Nurse] WHERE [Nurse_ID] = ? AND (([First_Name] = ?) OR ([First_Name] IS NULL AND ? IS NULL)) AND (([Last_Name] = ?) OR ([Last_Name] IS NULL AND ? IS NULL)) AND (([Position] = ?) OR ([Position] IS NULL AND ? IS NULL)) AND (([Date_Joined] = ?) OR ([Date_Joined] IS NULL AND ? IS NULL)) AND (([Date_Left] = ?) OR ([Date_Left] IS NULL AND ? IS NULL)) AND (([Telephone] = ?) OR ([Telephone] IS NULL AND ? IS NULL))" 
                        InsertCommand="INSERT INTO [Nurse] ([Nurse_ID], [First_Name], [Last_Name], [Position], [Date_Joined], [Date_Left], [Telephone]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectCommand="SELECT [Nurse_ID], [First_Name], [Last_Name], [Position], [Date_Joined], [Date_Left], [Telephone] FROM [Nurse]" 
                        
                        
                        UpdateCommand="UPDATE [Nurse] SET [First_Name] = ?, [Last_Name] = ?, [Position] = ?, [Date_Joined] = ?, [Date_Left] = ?, [Telephone] = ? WHERE [Nurse_ID] = ? AND (([First_Name] = ?) OR ([First_Name] IS NULL AND ? IS NULL)) AND (([Last_Name] = ?) OR ([Last_Name] IS NULL AND ? IS NULL)) AND (([Position] = ?) OR ([Position] IS NULL AND ? IS NULL)) AND (([Date_Joined] = ?) OR ([Date_Joined] IS NULL AND ? IS NULL)) AND (([Date_Left] = ?) OR ([Date_Left] IS NULL AND ? IS NULL)) AND (([Telephone] = ?) OR ([Telephone] IS NULL AND ? IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Nurse_ID" Type="Int32" />
                            <asp:Parameter Name="original_First_Name" Type="String" />
                            <asp:Parameter Name="original_First_Name" Type="String" />
                            <asp:Parameter Name="original_Last_Name" Type="String" />
                            <asp:Parameter Name="original_Last_Name" Type="String" />
                            <asp:Parameter Name="original_Position" Type="String" />
                            <asp:Parameter Name="original_Position" Type="String" />
                            <asp:Parameter Name="original_Date_Joined" Type="DateTime" />
                            <asp:Parameter Name="original_Date_Joined" Type="DateTime" />
                            <asp:Parameter Name="original_Date_Left" Type="DateTime" />
                            <asp:Parameter Name="original_Date_Left" Type="DateTime" />
                            <asp:Parameter Name="original_Telephone" Type="String" />
                            <asp:Parameter Name="original_Telephone" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nurse_ID" Type="Int32" />
                            <asp:Parameter Name="First_Name" Type="String" />
                            <asp:Parameter Name="Last_Name" Type="String" />
                            <asp:Parameter Name="Position" Type="String" />
                            <asp:Parameter Name="Date_Joined" Type="DateTime" />
                            <asp:Parameter Name="Date_Left" Type="DateTime" />
                            <asp:Parameter Name="Telephone" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="First_Name" Type="String" />
                            <asp:Parameter Name="Last_Name" Type="String" />
                            <asp:Parameter Name="Position" Type="String" />
                            <asp:Parameter Name="Date_Joined" Type="DateTime" />
                            <asp:Parameter Name="Date_Left" Type="DateTime" />
                            <asp:Parameter Name="Telephone" Type="String" />
                            <asp:Parameter Name="original_Nurse_ID" Type="Int32" />
                            <asp:Parameter Name="original_First_Name" Type="String" />
                            <asp:Parameter Name="original_First_Name" Type="String" />
                            <asp:Parameter Name="original_Last_Name" Type="String" />
                            <asp:Parameter Name="original_Last_Name" Type="String" />
                            <asp:Parameter Name="original_Position" Type="String" />
                            <asp:Parameter Name="original_Position" Type="String" />
                            <asp:Parameter Name="original_Date_Joined" Type="DateTime" />
                            <asp:Parameter Name="original_Date_Joined" Type="DateTime" />
                            <asp:Parameter Name="original_Date_Left" Type="DateTime" />
                            <asp:Parameter Name="original_Date_Left" Type="DateTime" />
                            <asp:Parameter Name="original_Telephone" Type="String" />
                            <asp:Parameter Name="original_Telephone" Type="String" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                </div>
             </div>
             </div>
</asp:Content>

