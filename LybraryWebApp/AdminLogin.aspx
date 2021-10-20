<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="LybraryWebApp.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card card border-light shadow p-3 mb-5 bg-body rounded">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="https://i.pinimg.com/originals/6a/44/f0/6a44f0e35b10e6ed063eeebf7ed844f9.jpg" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label for=""><b>Admin ID</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtAdminID" runat="server" placeholder="Enter Admin ID"  ToolTip="Admin ID"></asp:TextBox>
                                </div>
                                <br />
                                <label for=""><b>Password</b></label>
                                <div class="form-group ">
                                    <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="Enter Password" ToolTip="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-primary btn-lg" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"  ToolTip="Login"/>
                                </div>
                                <br />
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                 <a href="homepage.aspx"><b><em><< Back to Home</em></b></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
