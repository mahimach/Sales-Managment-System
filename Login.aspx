<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SALES_SYSTEM.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/signin.css" rel="stylesheet" />
    <style type="text/css">
       body {
    background-image: url('Images/bg9.jpg');
        }
    </style>
    <script language="javascript" type="text/javascript">

        function inputPassword_onclick() {

        }

    </script>
</head>
<body>
   <div class="container">
        <form id="Form1" class="form-signin" runat="server">
            <h3 class="alert alert-success">Sales Management</h3>
            <label for="inputEmail" class="sr-only">User Name</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="User Name" runat="server" />
             
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" runat="server" id="inputPassword" class="form-control" placeholder="Password" onclick="return inputPassword_onclick()" />
            <asp:Button ID="btnLogin" runat="server" 
                CssClass="btn btn-lg btn-success btn-block" Text="Sign In" 
                onclick="btnLogin_Click"  />
        </form>
    </div>
</body>
</html>


