<%@ Page Title="" Language="C#" MasterPageFile="~/lesson4.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>ASP.NET Input Validation</h3>
    <h6>All fields must be filled out.</h6>
    <fieldset>
        <label for="txtName" class="col-sm-3">Name:</label>
        <asp:TextBox ID="txtName" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Required"></asp:RequiredFieldValidator>
    </fieldset>
    <fieldset>
        <label for="txtPassword" class="col-sm-3">Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtPassword" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator runat="server" ErrorMessage="Hold On there sailor. Passwords need to match" ControlToValidate="txtPassword" ControlToCompare="txtConfirm" Type="String" Operator="Equal" ></asp:CompareValidator>
    </fieldset>

    <fieldset>
        <label for="txtConfirm" class="col-sm-3">Confirm Password:</label>
        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Don't be hasty now" ControlToValidate="txtConfirm"></asp:RequiredFieldValidator>
    </fieldset>
    <fieldset>
        <label for="txtAge" class="col-sm-3">Age:</label>
        <asp:TextBox ID="txtAge" runat="server" />
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Don't be shy" ControlToValidate="txtAge" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RangeValidator runat="server" ErrorMessage="Please put a real age" ControlToValidate="txtAge" MinimumValue="18" MaximumValue="120" Type="Integer" ></asp:RangeValidator>
        
    </fieldset>
        <asp:Button ID="btnsubmit" Text="Submit" runat="server" CssClass="btn btn-primary" OnClick="btnsubmit_Click" />
    <asp:Label ID="lblMessage" runat="server" />

</asp:Content>
