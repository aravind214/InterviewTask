<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs" Inherits="LybraryWebApp.viewbooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            
            <div class="col-md-12">
                <div class="card card border-light shadow p-3 mb-5 bg-body rounded">
                    <div class="card-body">                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Inventory List</h4>                                    
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
                        <br />
                        <div class="row ">
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
