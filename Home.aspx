<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SALES_SYSTEM.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="Content/landing-page.css" rel="stylesheet" />

    <div class="intro-header">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-message">
                        <h1>Hello <%=Session["username"].ToString() %></h1>
                        <h3>Welcome to Sales Management</h3>
                        <hr class="intro-divider" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
