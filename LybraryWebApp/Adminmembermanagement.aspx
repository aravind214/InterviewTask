<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminmembermanagement.aspx.cs" Inherits="LybraryWebApp.Adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        $(function () {
            $('[id*=GridView1]').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({
                "scrollX": true,
                
                "sPaginationType": "full_numbers"
            });
        });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card card border-light shadow p-3 mb-5 bg-body rounded ">
                    <div class="card-body">
                        <div class="row ">
                            <div class="col">
                                <center>
                                    <h4>Member Details</h4>
                                </center>
                            </div><br />
                            <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png" />
                                </center>
                            </div>
                        </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label for=""><b>Member ID</b></label>
                                <div class="form-group">
                                    <div class="input-group">
                                          <asp:TextBox CssClass="form-control" ID="txtMemId" runat="server" placeholder="Enter Member ID" ToolTip="Member ID"></asp:TextBox>
                                          <asp:LinkButton Width="36px" CssClass="btn btn-primary " ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                          <%--<asp:Button CssClass="btn btn-secondary " ID="Button1" runat="server" Text="Go" />--%>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 ">
                                <label for=""><b>Full Name</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtFullName" runat="server" placeholder=" FullName"  ToolTip="Full Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-5">
                                <label for=""><b>Account Status</b></label>
                                <div class="form-group">
                                    <div class="input-group">
                                          <asp:TextBox CssClass="form-control" ID="txtAcStatus" runat="server" placeholder=" Status" ToolTip="Account Status" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton Width="36px" CssClass="btn btn-success " ID="lbtnActive" runat="server" OnClick="lbtnActive_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton Width="36px" CssClass="btn btn-warning " ID="LbtnPending" runat="server" OnClick="LbtnPending_Click"><i class="fas fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton Width="34px" CssClass="btn btn-danger " ID="LbtnDeactive" runat="server" OnClick="LbtnDeactive_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-3 ">
                                <label for=""><b>DOB</b></label>
                                <div class="form-group">
                                          <asp:TextBox CssClass="form-control" ID="txtDOB" runat="server" placeholder="mm-dd-yy" ToolTip="DOB" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 ">
                                <label for=""><b>Contact No</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtContactNum" runat="server" placeholder=" Contact Number"  ToolTip="Contact Number" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-5">
                                <label for=""><b>Email ID</b></label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtEmailID" runat="server" placeholder=" Email ID" ToolTip="Email ID" ReadOnly="True" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4 ">
                                <label for=""><b>State</b></label>
                                <div class="form-group">
                                          <asp:TextBox CssClass="form-control" ID="txtState" runat="server" placeholder="Check State" ReadOnly="True" ToolTip="State" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 ">
                                <label for=""><b>City</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtCity" runat="server" placeholder=" City" ReadOnly="True" ToolTip="City"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-4">
                                <label for=""><b>PinCode</b></label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtPincode" runat="server" placeholder="Pincode" ToolTip="Pincode" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div><br />
                        <div class="row ">
                            <div class="col">
                                 <label for=""><b>Full Postal Address</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtFullAddress" runat="server" placeholder="Enter Address"  ToolTip="Address" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                       <br />
                        <div class="row">
                            <div class="col">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-danger btn-lgd" ID="btnDelete" runat="server" Text="Delete User Permanently" OnClick="btnDelete_Click" />
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
                                    <h4>Members List</h4>                                    
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:LibraryDbconstr %>' SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-hover table-bordered display nowrap" ID="GridView1" runat="server" Font-Bold="False" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" SortExpression="member_id" ReadOnly="True"></asp:BoundField>
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name"></asp:BoundField>
                                        <asp:BoundField DataField="account_status" HeaderText="Status" SortExpression="account_status"></asp:BoundField>
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no"></asp:BoundField>
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email"></asp:BoundField>
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state"></asp:BoundField>
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city"></asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
