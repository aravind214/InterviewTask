<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookissuing.aspx.cs" Inherits="LybraryWebApp.AdminBookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card card border-light shadow p-3 mb-5 bg-body rounded">
                    <div class="card-body">
                        <div class="row ">
                            <div class="col">
                                <center>
                                    <h4>Book Issuing</h4>
                                </center>
                            </div><br />
                            <div class="row">
                            <div class="col">
                                <center>
                                    <img width="230px" src="https://logopond.com/logos/8b08e56b91f6ca28a5daefd497ef35de.png" />
                                </center>
                            </div>
                        </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 ">
                                <label for=""><b>Member ID</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtMemId" runat="server" placeholder="Enter Member ID"  ToolTip="Member ID"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <label for=""><b>Book ID</b></label>
                                <div class="form-group">
                                    <div class="input-group">
                                          <asp:TextBox CssClass="form-control" ID="txtBookId" runat="server" placeholder="Enter Book ID" ToolTip="Book ID"></asp:TextBox>
                                          <asp:Button CssClass="btn btn-secondary " ID="btnGo" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-6 ">
                                <label for=""><b>Member Name</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtMemName" runat="server" placeholder="Enter Member Name"  ToolTip="Member Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <label for=""><b>Book Name</b></label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtBookName" runat="server" placeholder="Enter Book Name" ToolTip="Book Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-6 ">
                                <label for=""><b>Start Date</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtStartDate" runat="server" placeholder="Enter or Select Date"  ToolTip="Start Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <label for=""><b>End Date</b></label>
                                <div class="form-group">
                                          <asp:TextBox CssClass="form-control" ID="txtEndDate" runat="server" placeholder="Enter or Select Date" ToolTip="End Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-primary btn-lg" ID="btnIssue" runat="server" Text="Issue" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-success btn-lg" ID="btnReturn" runat="server" Text="Return" />
                                </div>
                            </div>
                        </div><br />
                        <div class="row ">
                            <div class="col">
                                <a href="homepage.aspx"><b><em><< Back to Home</em></b></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-md-7">
                <div class="card card border-light shadow p-3 mb-5 bg-body rounded">
                    <div class="card-body">                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Issued Books List</h4>                                    
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
                                <asp:GridView class="table table-striped table-hover table-bordered" ID="GridView1" runat="server" Font-Bold="False"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
