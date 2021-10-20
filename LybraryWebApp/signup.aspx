<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="LybraryWebApp.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card card border-light shadow p-3 mb-5 bg-body rounded">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>User Registration</h4>
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
                            <div class="col-md-6">
                                <label for=""><b>Full Name</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtFullName" runat="server" placeholder="Enter FullName" ToolTip="FullName"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label for=""><b>Date of Birth</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtDOB" runat="server" placeholder="" TextMode="Date" ToolTip="Date of Birth"></asp:TextBox>
                                </div>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-6">
                                <label for=""><b>Contact No</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtContact" runat="server" placeholder="Enter Contact Number" TextMode="Number" ToolTip="Contact No"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label for=""><b>Email</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder="Enter Email Id" TextMode="Email" ToolTip="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4">
                                <label for=""><b>State</b></label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" ToolTip="Select State">
                                        <asp:ListItem class="" Text="Select State" Value="Select State"></asp:ListItem>
                                        <asp:ListItem class="" Text="Andhra Pradesh" Value="Andhra Pradesh"></asp:ListItem>
                                        <asp:ListItem class="" Text="Arunachal Pradesh" Value="Arunachal Pradesh"></asp:ListItem>
                                        <asp:ListItem class="" Text="Assam" Value="Assam"></asp:ListItem>
                                        <asp:ListItem class="" Text="Bihar" Value="Bihar"></asp:ListItem>
                                        <asp:ListItem class="" Text="Chhattisgarh" Value="Chhattisgarh"></asp:ListItem>
                                        <asp:ListItem class="" Text="Goa" Value="Goa"></asp:ListItem>
                                        <asp:ListItem class="" Text="Gujarat" Value="Gujarat"></asp:ListItem>
                                        <asp:ListItem class="" Text="Haryana" Value="Haryana"></asp:ListItem>
                                        <asp:ListItem class="" Text="Himachal Pradesh" Value="Himachal Pradesh"></asp:ListItem>
                                        <asp:ListItem class="" Text="Jammu and Kashmir" Value="Jammu and Kashmir"></asp:ListItem>
                                        <asp:ListItem class="" Text="Jharkhand" Value="Jharkhand"></asp:ListItem>
                                        <asp:ListItem class="" Text="Karnataka" Value="Karnataka"></asp:ListItem>
                                        <asp:ListItem class="" Text="Kerala" Value="Kerala"></asp:ListItem>
                                        <asp:ListItem class="" Text="Madhya Pradesh" Value="Madhya Pradesh"></asp:ListItem>
                                        <asp:ListItem class="" Text="Maharastra" Value="Maharastra"></asp:ListItem>
                                        <asp:ListItem class="" Text="Manipur" Value="Manipur"></asp:ListItem>
                                        <asp:ListItem class="" Text="Meghalaya" Value="Meghalaya"></asp:ListItem>
                                        <asp:ListItem class="" Text="Mizoram" Value="Mizoram"></asp:ListItem>
                                        <asp:ListItem class="" Text="Nagaland" Value="Nagaland"></asp:ListItem>
                                        <asp:ListItem class="" Text="Odissa" Value="Odissa"></asp:ListItem>
                                        <asp:ListItem class="" Text="Punjab" Value="Punjab"></asp:ListItem>
                                        <asp:ListItem class="" Text="Rajasthan" Value="Rajasthan"></asp:ListItem>
                                        <asp:ListItem class="" Text="Sikkim" Value="Sikkim"></asp:ListItem>
                                        <asp:ListItem class="" Text="TamiNadu" Value="TamiNadu"></asp:ListItem>
                                        <asp:ListItem class="" Text="Telangana" Value="Telangana"></asp:ListItem>
                                        <asp:ListItem class="" Text="Thripura" Value="Thripura"></asp:ListItem>
                                        <asp:ListItem class="" Text="Uttar Pradesh" Value="Uttar Pradesh"></asp:ListItem>
                                        <asp:ListItem class="" Text="UttaraKhand" Value="UttaraKhand"></asp:ListItem>
                                        <asp:ListItem class="" Text="WestBengal" Value="WestBengal"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for=""><b>City</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtCity" runat="server" placeholder="Enter City"  ToolTip="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for=""><b>PinCode</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtPincode" runat="server" placeholder="Enter Pin Code" TextMode="Number" ToolTip="Pincode"></asp:TextBox>
                                </div>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col">
                                <label for=""><b>Full Address</b></label>
                                <div class="form-group ">
                                    <asp:TextBox CssClass="form-control" ID="txtAddress" runat="server" placeholder="Enter Full Address" TextMode="MultiLine" ToolTip="Full Address"></asp:TextBox>
                                </div>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col">
                                 <center>
                                    <span class="badge rounded-pill bg-primary">User Login Credentials</span>
                                 </center>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-6">
                                <label for=""><b>User ID</b></label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="txtUserId" runat="server" placeholder="Enter User ID" ToolTip="User ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label for=""><b>Password</b></label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="txtPassword" runat="server" placeholder="Enter Password" TextMode="Password" ToolTip="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col">
                                <div class="form-group d-grid gap-2 text-decoration-none">
                                    <%--<asp:Button runat="server" class="btn btn-info btn-lg" id="btnSignUp" type="button"  "></asp:Button>--%>
                                    <asp:Button class="btn btn-info btn-lg" ID="btnSignUp" runat="server" Text="Sign Up" ToolTip="Sign Up" OnClick="btnSignUp_Click" />
                                </div>
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
