<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="CreateManager.aspx.cs" Inherits="SALES_SYSTEM.CreateManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
        <div>
            <br />
            <br />
            
            <div class="input-group">
                <div class="form-inline">    
                    <h3 class="alert alert-info">Manager Management</h3>          
                    <table border="0" cellpadding="5" cellspacing="5" class="table bg-success ">
                        <tr>
                            <td>
                                <span>User Name</span>
                            </td>
                            <td>
                                <span>Password </span>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtStudentId" class="form-control" placeholder="User Name" required  CssClass="form-control"/>
                            </td>
                            <td>
                                 <asp:TextBox runat="server" ID="txtStudentName" class="form-control" placeholder="Password" required CssClass="form-control"/>
                            </td>
                            <td>
                                <asp:Button Text="Add User" runat="server" ID="btnAdd" 
                                    class="btn btn-sm btn-primary" OnClick="btnAdd_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <br />
            <br />
          <asp:GridView ID="GridView1" runat="server" 
                CssClass="table table-responsive table-striped" AutoGenerateColumns="False" 
                DataKeyNames="UserId" DataSourceID="LibraryDb">
              <Columns>
                 
                  <asp:BoundField DataField="UserId" HeaderText="UserId" 
                      SortExpression="UserId" ReadOnly="True" InsertVisible="False" Visible="False"  />
                  <asp:BoundField DataField="UserName" HeaderText="User Name" 
                      SortExpression="UserName" />
                    <asp:BoundField DataField="Pwd" HeaderText="Password" SortExpression="Pwd" />
                   <asp:CommandField  ShowEditButton="True" />
              </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="LibraryDb" runat="server" 
                ConnectionString="<%$ ConnectionStrings:bs %>" 
                SelectCommand="SELECT * FROM [Users_Table] Where [Role]='Manager'" 
                DeleteCommand="DELETE FROM [Users_Table] WHERE [UserId] = @UserId" 
                UpdateCommand="UPDATE [Users_Table] SET [UserName] = @UserName, [Pwd] = @Pwd  WHERE [UserId] = @UserId">
                <DeleteParameters>
                    <asp:Parameter Name="UserId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Pwd" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Pwd" Type="String" />
                    <asp:Parameter Name="UserId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </center>
</asp:Content>
