<%@ Page Title="" Language="C#" MasterPageFile="~/UI_Templates/html/ltr/Underwriter_Master.Master" AutoEventWireup="true" CodeBehind="POL1101.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.POL1101" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .entry{
            width: 200px;
            border-radius: 5px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<form runat="server">--%>
       <div style="text-align: center;">
           <br />
           <h2>Motor Policy Data Setup&reg;</h2>
           <br />
               <div>
                   <input id="btn01" type="button" value="Policy Info" /> &nbsp;
                   <input id="btn02" type="button" value="Policy Interest" /> &nbsp;
                   <input id="btn03" type="button" value="Policy Profile" /> &nbsp;
                   <input id="btn04" type="button" value="Doc Upload" /> &nbsp;
               </div>
           <hr />
           <table cellpadding="1" cellspacing="1" style="margin: auto;">
        <tr>
            <td>Policy Number:</td>
            <td> <asp:TextBox ID="TextBox1" runat="server" class="entry"></asp:TextBox> </td>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td>Insured Name:</td>
            <td> <asp:TextBox ID="TextBox3" runat="server" class="entry"></asp:TextBox> </td>
            <td colspan="2"></td>
        </tr>

        <tr>
            <td>Insurance Product:</td>
            <td>
                <asp:DropDownList ID="cboInsProduct" runat="server" CssClass="entry">
                    <asp:ListItem Selected="True" Text="-- select--" Value="*"></asp:ListItem>
                    <asp:ListItem Text="Private Motor" Value="01"></asp:ListItem>
                    <asp:ListItem Text="Marine Cargo" Value="02"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>Insurance Class</td>
            <td> <asp:TextBox ID="TextBox5" runat="server" class="entry"></asp:TextBox> </td>
        </tr>
        <tr>
            <td>Sum Insured:</td>
            <td> <asp:TextBox ID="TextBox2" runat="server" class="entry"></asp:TextBox> </td>

            <td>Premium:</td>
            <td> <asp:TextBox ID="TextBox4" runat="server" class="entry"></asp:TextBox> </td>
        </tr>
    </table>
           <hr />
           <asp:Button ID="Button1" runat="server" Text="Submit" style="border-radius: 7px;" OnClick="Button1_Click"/>
           <asp:Button ID="Button2" runat="server" Text="Cancel" style="border-radius: 7px;"/>
           <br /><br />
           <asp:Label ID="Errorlbl" runat="server" Text="" style="color: red;"></asp:Label>
       </div>
        
        <%--</form>--%>
    

</asp:Content>
