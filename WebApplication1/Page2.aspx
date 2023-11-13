<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="WebApplication1.Page2" MasterPageFile="~/Main.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="container">
            <h3>Prescription Submission Form</h3>
            <div class="mb-3">
                <label for="txtPatientName" class="form-label">Pet Name:</label>
                <asp:TextBox ID="txtPatientName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtPrescription" class="form-label">Prescription Ordered:</label>
                <asp:TextBox ID="txtPrescription" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtRecievingPharmacy" class="form-label">Receiving Pharmacy:</label>
                <asp:TextBox ID="txtRecievingPharmacy" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Prescription" CssClass="btn btn-primary" />
        </div>
    </div>
</asp:Content>
