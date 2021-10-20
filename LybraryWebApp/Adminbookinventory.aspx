<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminbookinventory.aspx.cs" Inherits="LybraryWebApp.Adminbookinventory" %>
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
                                    <h4>Book Details</h4>
                                </center>
                            </div><br />
                            <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" height="140px" src="https://www.graphicsfuel.com/wp-content/uploads/2012/07/books-icon-512.png" />
                                </center>
                            </div>
                        </div>
                        </div>
                        <div class="row ">
                            <div class="col custom-file">
                                <hr />
                            </div>
                        </div>
                        <div class="row ">
                            <div class="col custom-file">
                                <asp:FileUpload class=" form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-3">
                                <label for=""><b>Book ID</b></label>
                                <div class="form-group">
                                    <div class="input-group">
                                          <asp:TextBox CssClass="form-control" ID="txtBookId" runat="server" placeholder="Enter ID" ToolTip="Book ID"></asp:TextBox>
                                          <asp:Button CssClass="btn btn-secondary " ID="btnGo" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9 ">
                                <label for=""><b>Book Name</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtPubName" runat="server" placeholder="Enter Book Name"  ToolTip="Book Name"></asp:TextBox>
                                </div>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4">
                                <div class="row">
                                    <div class="col">
                                     <label for=""><b>Languages</b></label>
                                     <div class="form-group">
                                        <asp:DropDownList CssClass="form-control" ID="DpDlang" runat="server">
                                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                        <asp:ListItem Text="Telugu" Value="Telugu"></asp:ListItem>
                                        <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                        <asp:ListItem Text="Spanish" Value="Spanish"></asp:ListItem>
                                    </asp:DropDownList>
                                    </div>
                                    </div>
                                </div><br />
                                <div class="row">
                                    <div class="col">
                                    <label for=""><b>Publisher Name</b></label>
                                    <div class="form-group">
                                        <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="Publisher1" Value="Publisher1"></asp:ListItem>
                                        <asp:ListItem Text="Publisher2" Value="Publisher2"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    </div>
                                </div>
                               
                            </div>
                            <div class="col-md-4">
                                <div class="row">
                                    <div class="col">
                                     <label for=""><b>Author Name</b></label>
                                     <div class="form-group">
                                        <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="A1" Value="A1"></asp:ListItem>
                                        <asp:ListItem Text="A2" Value="A2"></asp:ListItem>
                                    </asp:DropDownList>
                                    </div>
                                    </div>
                                </div><br />
                                <div class="row">
                                    <div class="col">
                                    <label for=""><b>Publish Date</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtPubDate" runat="server" placeholder="Publisher Date" TextMode="Date" ToolTip="Publisher Date"></asp:TextBox>
                                    </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for=""><b>Genre</b></label>
                                <div class="form-group">
                                    <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                        <asp:ListItem Text="Action" Value="Action"></asp:ListItem>
                                        <asp:ListItem Text="Adventure" Value="Adventure"></asp:ListItem>
                                        <asp:ListItem Text="Comic Book" Value="Comic Book"></asp:ListItem>
                                        <asp:ListItem Text="Self Help" Value="Self Help"></asp:ListItem>
                                        <asp:ListItem Text="Healthy Living" Value="Healthy Living"></asp:ListItem>
                                        <asp:ListItem Text="Motivation" Value="Motivation"></asp:ListItem>
                                        <asp:ListItem Text="Wellness" Value="Wellness"></asp:ListItem>
                                        <asp:ListItem Text="Crime" Value="Crime"></asp:ListItem>
                                        <asp:ListItem Text="Drama" Value="Drama"></asp:ListItem>
                                        <asp:ListItem Text="Fantasy" Value="Fantasy"></asp:ListItem>
                                        <asp:ListItem Text="Horror" Value="Horror"></asp:ListItem>
                                        <asp:ListItem Text="Poetry" Value="Poetry"></asp:ListItem>
                                        <asp:ListItem Text="Personal Development" Value="Personal Development"></asp:ListItem>
                                        <asp:ListItem Text="Romance" Value="Romance"></asp:ListItem>
                                        <asp:ListItem Text="Science Fiction" Value="Science Fiction"></asp:ListItem>
                                        <asp:ListItem Text="Suspense" Value="Suspense"></asp:ListItem>
                                        <asp:ListItem Text="Thriller" Value="Thriller"></asp:ListItem>
                                        <asp:ListItem Text="Art" Value="Art"></asp:ListItem>
                                        <asp:ListItem Text="Autobiography" Value="Autobiography"></asp:ListItem>
                                        <asp:ListItem Text="Encyclopedia" Value="Encyclopedia"></asp:ListItem>
                                        <asp:ListItem Text="Heath" Value="Health"></asp:ListItem>
                                        <asp:ListItem Text="History" Value="History"></asp:ListItem>
                                        <asp:ListItem Text="Math" Value="Math"></asp:ListItem>
                                        <asp:ListItem Text="Textbook" Value="Textbook"></asp:ListItem>
                                        <asp:ListItem Text="Science" Value="Science"></asp:ListItem>
                                        <asp:ListItem Text="Travel" Value="Travel"></asp:ListItem>
                                    </asp:ListBox>
                                </div>
                            </div>
                        </div>
                            <br />
                        <div class="row">
                            <div class="col-md-4">
                                <label for=""><b>Edition</b></label>
                                <div class="form-group ">
                                    <asp:TextBox CssClass="form-control" ID="txtEdition" runat="server" placeholder="Book Edition"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for=""><b>Book Cost</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtBookCost" runat="server" placeholder="Book Cost(per Unit)" TextMode="Number" ToolTip="Cost of Book"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for=""><b>Pages</b></label>
                                <div class="form-group ">
                                    <asp:TextBox CssClass="form-control" ID="txtPages" runat="server" placeholder="Enter Pages" ToolTip="No of Pages" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4">
                                <label for=""><b>Actual Stock</b></label>
                                <div class="form-group ">
                                    <asp:TextBox CssClass="form-control" ID="txtActualStock" runat="server" placeholder="Actual Stock" TextMode="Number" ToolTip="Actual Stock"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for=""><b>Current Stock</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtCurrentStock" runat="server" placeholder="Current Stock" TextMode="Number" ToolTip="Current Stock" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for=""><b>Issued Books</b></label>
                                <div class="form-group ">
                                    <asp:TextBox CssClass="form-control" ID="txtIssuedBooks" runat="server" placeholder="Issued Books" ToolTip="No of Issued Books" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div><br />
                        <div class="row ">
                            <div class="col">
                                <label for=""><b>Book Description</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtBookDesc" runat="server" placeholder="Enter Description" TextMode="MultiLine" ToolTip="Book Description" ></asp:TextBox>
                                </div>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group d-grid gap-2 ">
                                    <asp:Button CssClass="btn btn-success btn-lg" ID="btnAdd" runat="server" Text="Add" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-primary btn-lg" ID="btnUpdate" runat="server" Text="Update" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-danger btn-lg" ID="btnDelete" runat="server" Text="Delete" />
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
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
