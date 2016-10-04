<%@ Page Title="Tip Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tip.aspx.cs" Inherits="week5.tip" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Tip Calculator</h1>
    <div class="form-group">
        <label for="txtAmount" class="control-label col-sm-2">Amount: </label>
        <asp:TextBox ID="txtAmount" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" display="Dynamic" 
            ErrorMessage="Required" ControlToValidate="txtAmount" CssClass="alert-danger">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Invalid Input" display="Dynamic" 
            ControlToValidate="txtAmount" MaximumValue="999999" MinimumValue="0.01" Type="Currency" 
            CssClass="alert-danger"></asp:RangeValidator>
    </div>
    <div class="form-group">
        <label for="ddlPercent" class="control-label col-sm-2">Tip %</label>
        <asp:DropDownList ID="ddlPercent" runat="server">
            <asp:ListItem Text="-Choose-" />
            <asp:ListItem Value=".1" Text="10%" />
            <asp:ListItem Value=".15" Text="15%" />
            <asp:ListItem Value=".2" Text="20%" />
        </asp:DropDownList>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Choose a Tip %"  ControlToValidate="ddlPercent"
            CssClass="alert-danger" Type="Double" MinimumValue="0.1" MaximumValue=".2"></asp:RangeValidator>
    </div>
    <asp:Button ID="btnCalculate" runat="server" Text="Calculate Tip" CssClass="btn btn-success col-sm-offset-2" OnClick="btnCalculate_Click" />
    <div>
        Tips: <asp:Label ID="lblTip" runat="server" />
    </div>
    <div>
        Total: <asp:Label ID="lblTotal" runat="server" />
    </div>
</asp:Content>
