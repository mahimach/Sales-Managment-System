<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="OppType.aspx.cs" Inherits="SALES_SYSTEM.OppType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div>
            <br />
            <br />
            
            <div class="input-group">
                <div class="form-inline">              
                    <table border="0" cellpadding="5" cellspacing="5" class="table bg-success ">
                        <tr  class="alert-danger">
                            <td>
                                <span>Opportunity Type</span>
                            </td>                            
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtStudentId" class="form-control" placeholder="Opportunity Type" required  CssClass="form-control"/>
                            </td>                          
                            
                            <td>
                                <asp:Button Text="Add Type" runat="server" ID="btnAdd" 
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
                DataKeyNames="OppId" DataSourceID="LibraryDb">
              <Columns>
                 
                  <asp:BoundField DataField="OppId" HeaderText="OppId" 
                      SortExpression="OppId" ReadOnly="True" Visible="False" InsertVisible="False"  />
                  <asp:BoundField DataField="Name" HeaderText="Name" 
                      SortExpression="Name" />
                  <asp:BoundField DataField="CreatedbyUserId" HeaderText="CreatedbyUserId" 
                      SortExpression="CreatedbyUserId" Visible="False" />
                   <asp:CommandField ShowEditButton="True" />
              </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="LibraryDb" runat="server" 
                ConnectionString="<%$ ConnectionStrings:bs%>"                
                DeleteCommand="DELETE FROM [OppType_Table] WHERE [OppId] = @OppId"                 
                UpdateCommand="UPDATE [OppType_Table] SET [Name] = @Name WHERE [OppId] = @OppId">
                <DeleteParameters>
                    <asp:Parameter Name="OppId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="OppId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </center>

</asp:Content>
