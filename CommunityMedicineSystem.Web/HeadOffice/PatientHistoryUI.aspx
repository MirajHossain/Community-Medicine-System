﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientHistoryUI.aspx.cs" Inherits="CommunityMedicineSystem.Web.HeadOffice.PatientHistoryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Patient History - Community Medicine System</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />


    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../assets/css/font-awesome.min.css" rel="stylesheet" />

    <link href="../assets/css/style-slide.css" rel="stylesheet" />
    <link href="../assets/css/custom.css" rel="stylesheet" />

    <link href="../assets/css/style.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server" class="form-horizontal">

        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                     <a href="#" class="navbar-brand"><span style=" font-size:x-large; color:yellowgreen">Community Medicine System</span> </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="../index.aspx">Home</a></li>
                        <li><a href="MedicineSetupUI.aspx">Medicine Setup</a></li>
                        <li><a href="DiseaseSetupUI.aspx">Disease Setup</a></li>
                        <li><a href="CreateNewCenterUI.aspx">Create Center</a></li>
                        <li><a href="SendMedicineToCenterUI.aspx">Medicine Center</a></li>
                        <%--<li><a href="#">Search Patient History</a></li>--%>

                    </ul>
                </div>

            </div>
        </div>

        <div id="about-section">
            <div class="container">
                <div class="row main-top-margin text-center">
                    <div class="col-md-8 col-md-offset-2 col-sm-12">
                        <h2>Welcome to Head Office</h2>
                    </div>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="Label1" class="col-sm-4 control-label">Show All History Of A Patient</label>
            <hr />
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">Voter Id</label>
            <div class="col-sm-4">
                <asp:TextBox ID="voterIdTextBox" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class=" col-sm-2">
                <asp:Button ID="showButton" runat="server" CssClass="btn btn-info" Text="Show" OnClick="showButton_Click" />
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">Name</label>
            <div class="col-sm-5">
                <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>

            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">Address</label>
            <div class="col-sm-5">
                <asp:TextBox ID="addressTextBox" runat="server" CssClass="form-control" Height="72px" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>

            </div>
        </div>


        <div class="form-group">
            <div class="col-sm-8">
                <asp:GridView ID="patientHistoryGridView" class="table table-striped" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="PatientId" HeaderText="Patient Id" SortExpression="PatientId" />
                        <asp:BoundField DataField="VoterId" HeaderText="Voter Id" SortExpression="VoterId" />
                        <asp:BoundField DataField="CenterName" HeaderText="Center Name" SortExpression="CenterName" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-4 col-sm-3">
                <asp:Button ID="generatePDFButton" runat="server" CssClass="btn btn-info" Text="Show All History In A PDF Format" OnClick="generatePDFButton_Click" />
            </div>
        </div>
     <nav role="navigation" class="navbar navbar-inverse navbar-fixed-bottom">
        <div class="container">
             <div class="navbar-text pull-left">
                      <p>&copy;2015 Design and developed by Miraj Hossain | All Right Reserved</p> 
             </div>
        </div>
    </nav>

        <script src="../assets/js/jquery.js"></script>
        <script src="../Scripts/bootstrap.min.js"></script>
        <script src="../assets/js/modernizr.custom.79639.js"></script>
        <script src="../assets/js/jquery.ba-cond.min.js"></script>
        <script src="../assets/js/jquery.slitslider.js"></script>
        <script src="../assets/js/custom.js"></script>

    </form>
</body>

</html>
