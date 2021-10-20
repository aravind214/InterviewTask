<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminpublishermanagement.aspx.cs" Inherits="LybraryWebApp.Adminpublishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('[id*=GridView1]').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({
                "responsive": true,
               // "sPaginationType": "full_numbers"
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card card border-light shadow p-3 mb-5 bg-body rounded">
                    <div class="card-body">
                        <div class="row ">
                            <div class="col">
                                <center>
                                    <h4>Publisher Details</h4>
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
                            <div class="col-md-4">
                                <label for=""><b>Publisher ID</b></label>
                                <div class="form-group">
                                    <div class="input-group">
                                          <asp:TextBox CssClass="form-control" ID="txtPubId" runat="server" placeholder="Enter ID" ToolTip="Publisher ID"></asp:TextBox>
                                          <asp:Button CssClass="btn btn-secondary " ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8 ">
                                <label for=""><b>Publisher Name</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtPubName" runat="server" placeholder="Enter Publisher Name"  ToolTip="Publisher Name"></asp:TextBox>
                                </div>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group d-grid gap-2  ">
                                    <asp:Button CssClass="btn btn-success btn-lg" ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group d-grid gap-2 ">
                                    <asp:Button CssClass="btn btn-primary btn-lg" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-danger btn-lg" ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
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
                                    <h4>Publishers List</h4>                                    
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:LibraryDbconstr %>' SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-hover table-bordered" ID="GridView1" runat="server" Font-Bold="False" DataSourceID="SqlDataSource1"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
