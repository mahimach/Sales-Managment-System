<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="CreateClient.aspx.cs" Inherits="SALES_SYSTEM.CreateClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script  src="https://code.jquery.com/jquery-3.1.1.js" crossorigin="anonymous"></script>
    <link href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script>
        function filter2(phrase, _id) {
            var words = phrase.value.toLowerCase().split(" ");
            var table = document.getElementById(_id);
            var ele;
            for (var r = 1; r < table.rows.length; r++) {
                ele = table.rows[r].innerHTML.replace(/<[^>]+>/g, "");
                var displayStyle = 'none';
                for (var i = 0; i < words.length; i++) {
                    if (ele.toLowerCase().indexOf(words[i]) >= 0)
                        displayStyle = '';
                    else {
                        displayStyle = 'none';
                        break;
                    }
                }
                table.rows[r].style.display = displayStyle;
            }
        }
        $(function () {
            $("#GridView1").DataTable();
        });
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div>
            <br />
            <br />
            
            <div class="input-group">
                <div class="form-inline">    
                    <h3 class="alert alert-info">Opportunities Management</h3>          
                    <table border="0" cellpadding="5" cellspacing="5" class="table bg-success table-responsive ">
                         <tr class="alert-danger">
                            <td>
                                <span>Name</span>
                            </td>
                            <td>
                                <span>Chance to Close </span>
                            </td>
                             <td>
                                <span>Estimated Budget</span>
                            </td>
                             <td>
                                <span>Type</span>
                            </td>
                              <td>
                                <span>Duration</span>
                            </td>
                            </tr>
                        
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtName"  placeholder="Opportunity Name" required  CssClass="form-control"/>
                            </td>
                            <td>
                                 <asp:TextBox runat="server" ID="txtChance"  placeholder="Chance to Close" required CssClass="form-control"/>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtBudget"  placeholder="Estimated Budget" required  CssClass="form-control"/>
                            </td>
                            <td>
                                <asp:dropdownlist runat="server" ID="ddlType"  required CssClass="form-control" 
                                    DataSourceID="SalesDb" DataTextField="Name" DataValueField="OppId"></asp:dropdownlist>
                              
                                <asp:SqlDataSource ID="SalesDb" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:bs %>" 
                                    SelectCommand="SELECT * FROM [OppType_Table]" >
                                </asp:SqlDataSource>
                              
                            </td>
                             <td>
                                <asp:TextBox runat="server" ID="txtDuration"  placeholder="Duration in days" required  CssClass="form-control"/>
                            </td>
                             </tr>
                        <tr class="alert-danger">
                               <td>
                                <span>Contact Name</span>
                            </td>
                               <td>
                                <span>Contact Number</span>
                            </td>
                               <td>
                                <span>Description </span>
                            </td>
                               <td>
                                <span>Notes</span>
                            </td>                               
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtContactName"  placeholder="Contact Name" required  CssClass="form-control"/>
                            </td>
                            <td>
                                  <asp:TextBox runat="server" ID="txtContactNumber"  placeholder="Contact Number" 
                                      required  CssClass="form-control" MaxLength="10"/>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtDescription"  placeholder="Description" required  CssClass="form-control"/>
                            </td>
                            <td>
                                  <asp:TextBox runat="server" ID="txtNotes"  placeholder="Notes" required  CssClass="form-control"/>
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
            <div style="float:left;padding:10px;">
                Search : <input name="txtTerm" onkeyup="filter2(this, '<%=GridView1.ClientID %>')" type="text" />
            </div>
          <asp:GridView ID="GridView1" runat="server" 
                CssClass="table table-responsive table-striped" AutoGenerateColumns="False" 
                DataKeyNames="Id" DataSourceID="LibraryDb">
              <Columns>
                 
                  <asp:BoundField DataField="Id" HeaderText="Id" 
                      SortExpression="Id" ReadOnly="True" Visible="False" InsertVisible="False"  />
                  <asp:BoundField DataField="Name" HeaderText="Name" 
                      SortExpression="Name" />
                    <asp:BoundField DataField="CreatedUserId" Visible="False" HeaderText="CreatedUserId" 
                      SortExpression="CreatedUserId" />
                   <asp:BoundField DataField="timestamp" HeaderText="DateTime" 
                      SortExpression="timestamp" />
                  <asp:BoundField DataField="CType" HeaderText="Type" SortExpression="CType" />
                  <asp:BoundField DataField="ChanceToClose" HeaderText="ChanceToClose" 
                      SortExpression="ChanceToClose" />
                  <asp:BoundField DataField="EBudget" HeaderText="Budget" 
                      SortExpression="EBudget" />
                  <asp:BoundField DataField="Duration" HeaderText="Duration" 
                      SortExpression="Duration" />
                  <asp:BoundField DataField="ContactName" HeaderText="Contact Name" 
                      SortExpression="ContactName" />
                  <asp:BoundField DataField="ContactMobile" HeaderText="Contact Mobile" 
                      SortExpression="ContactMobile" />
                  <asp:BoundField DataField="Description" HeaderText="Description" 
                      SortExpression="Description" />
                  <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
              </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="LibraryDb" runat="server" 
                ConnectionString="<%$ ConnectionStrings:bs %>" >
            </asp:SqlDataSource>
        </div>
    </center>

</asp:Content>
