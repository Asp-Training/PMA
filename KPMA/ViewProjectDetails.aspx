<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewProjectDetails.aspx.cs" Inherits="ProjectManagementProject.ViewProjectDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>View Project Details</h1>
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        
        
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            ProjectName:
            <asp:TextBox ID="ProjectNameTextBox" runat="server" Text='<%# Bind("ProjectName") %>' />
            <br />
            ProjectInitials:
            <asp:TextBox ID="ProjectInitialsTextBox" runat="server" Text='<%# Bind("ProjectInitials") %>' />
            <br />
            ProjectManager:
            <asp:TextBox ID="ProjectManagerTextBox" runat="server" Text='<%# Bind("ProjectManager") %>' />
            <br />
            BeginDate:
            <asp:TextBox ID="BeginDateTextBox" runat="server" Text='<%# Bind("BeginDate") %>' />
            <br />
            EndDate:
            <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ProjectName:
            <asp:TextBox ID="ProjectNameTextBox" runat="server" Text='<%# Bind("ProjectName") %>' />
            <br />
            ProjectInitials:
            <asp:TextBox ID="ProjectInitialsTextBox" runat="server" Text='<%# Bind("ProjectInitials") %>' />
            <br />
            ProjectManager:
            <asp:TextBox ID="ProjectManagerTextBox" runat="server" Text='<%# Bind("ProjectManager") %>' />
            <br />
            BeginDate:
            <asp:TextBox ID="BeginDateTextBox" runat="server" Text='<%# Bind("BeginDate") %>' />
            <br />
            EndDate:
            <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            ProjectName:
            <asp:Label ID="ProjectNameLabel" runat="server" Text='<%# Bind("ProjectName") %>' />
            <br />
            ProjectInitials:
            <asp:Label ID="ProjectInitialsLabel" runat="server" Text='<%# Bind("ProjectInitials") %>' />
            <br />
            ProjectManager:
            <asp:Label ID="ProjectManagerLabel" runat="server" Text='<%# Bind("ProjectManager") %>' />
            <br />
            BeginDate:
            <asp:Label ID="BeginDateLabel" runat="server" Text='<%# Bind("BeginDate") %>' />
            <br />
            EndDate:
            <asp:Label ID="EndDateLabel" runat="server" Text='<%# Bind("EndDate") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProjectCreation]"></asp:SqlDataSource>
</asp:Content>
