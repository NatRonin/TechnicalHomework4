<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="WebApplication1.Page3" MasterPageFile="~/Main.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Prescription Queue</h2>
        <asp:GridView ID="GridViewPrescriptions" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered">
            <Columns>
                <asp:BoundField DataField="PrescriptionId" HeaderText="Prescription ID" />
                <asp:BoundField DataField="PatientName" HeaderText="Pet Name" />
                <asp:BoundField DataField="PrescriptionOrdered" HeaderText="Prescription Ordered" />
                <asp:BoundField DataField="ReceivingPharmacy" HeaderText="Receiving Pharmacy" />
            </Columns>
        </asp:GridView>

        <h2>Write a New Prescription</h2>
        <div class="mb-3">
            <label for="txtNewPatientName" class="form-label">Pet Name:</label>
            <asp:TextBox ID="txtNewPatientName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label for="txtNewPrescription" class="form-label">Prescription Ordered:</label>
            <asp:TextBox ID="txtNewPrescription" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label for="txtNewRecievingPharmacy" class="form-label">Receiving Pharmacy:</label>
            <asp:TextBox ID="txtNewRecievingPharmacy" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Button ID="btnWritePrescription" runat="server" Text="Write Prescription" CssClass="btn btn-primary" />
    </div>
</asp:Content>