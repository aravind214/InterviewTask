<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Practice.aspx.cs" Inherits="LybraryWebApp.Practice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Boostrap/CSS/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/CustomStylesheet.css" rel="stylesheet" />
    <script src="Boostrap/JS/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <div class="container shadow p-3 mb-5 bg-body rounded">
                <div class="row mt-3">
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="STATES :" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
                            <asp:DropDownList CssClass="form-control" ID="ddlState" OnSelectedIndexChanged="ddlState_SelectedIndexChanged1" runat="server" AutoPostBack="True" Font-Size="X-Large"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="CITIES :" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
                            <asp:DropDownList class="form-control" ID="ddlCity" runat="server" AutoPostBack="True" Font-Size="X-Large" ></asp:DropDownList>
                            
                        </div>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12">
                        <div class="form-group d-grid gap-2 ">
                            <center>
                                 <asp:Button CssClass="btn btn-lg  btn-magick btn3d btn-block " ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                            </center>
                        </div>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col">
                        <div class="form-group">
                            <center>
                            <asp:Label ID="Label3" runat="server" Text="VIEW EMPLOYEES DETAILS BASED ON CITIES " Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
                            </center>
                            <asp:GridView CssClass="table table-hover  table-striped  table-bordered table-success shadow-lg p-3 mb-5 bg-body rounded " ID="GridView1" runat="server" AutoGenerateColumns="true">
                            </asp:GridView>
                        </div>
                    </div>                   
                </div>
            </div>
        </div>
    </form>
</body>
</html>
