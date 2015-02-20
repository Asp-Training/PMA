<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewProjectsaspx.aspx.cs" Inherits="ProjectManagementProject.ViewProjectsaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Projects </h1>
    <div>
       
        <table class="table" width="100%">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProjectCreation]" ></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound" DataKeyNames="Id">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                           
                            <asp:BoundField DataField="ProjectInitials" HeaderText="ProjectInitials" SortExpression="ProjectInitials" />
                          
                            <asp:HyperLinkField DataTextField="ProjectInitials" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="ViewProjectDetails.aspx?Id={0}" HeaderText="Details"  DataTextFormatString ="View {0}"  />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>


</asp:Content>
