<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="LybraryWebApp.UserLogin" %>
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
                                    <img width="150px" src="https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
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
                                <label for=""><b>Member ID</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtMemberID" runat="server" placeholder="Enter Member ID"  ToolTip="User ID"></asp:TextBox>
                                </div>
                                <br />
                                <label for=""><b>Password</b></label>
                                <div class="form-group ">
                                    <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="Enter Password" ToolTip="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-primary btn-lg" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" ToolTip="Login" />
                                </div>
                                <br />
                                <div class="form-group ">
                                    <a href="signup.aspx" class="d-grid gap-2 text-decoration-none"><input class="btn btn-info btn-lg" id="btnSignUp" type="button" value="Sign Up" /></a>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                 <a href="homepage.aspx"><< Back to Home</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
