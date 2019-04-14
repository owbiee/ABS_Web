<%@ Page Title="" Language="C#" MasterPageFile="/UI_Templates/html/ltr/Underwriter_Master.Master" AutoEventWireup="true" CodeBehind="POL1401.aspx.cs" Inherits="ABS_Web.UI_Templates.Policy.POL1401" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style>
        .entry{
            width: 200px;
            border-radius: 5px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Main Content-->

    
    <%--<table>
        <tr>
            <td>Policy Number:</td>
            <td> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </td>
        </tr>
        <tr>
            <td>Insured Name:</td>
            <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> </td>
        </tr>
    </table>--%>
    <%--<form runat="server">--%>
       <div style="text-align: center;">
           <br />
           <h2>Fire Policy &reg;</h2>
           <br />
           <table style="margin: auto;">
        <tr>
            <td>Policy Number:</td>
            <td> <asp:TextBox ID="TextBox1" runat="server" class="entry"></asp:TextBox> </td>
            
            <td>Insured Name:</td>
            <td> <asp:TextBox ID="TextBox3" runat="server" class="entry"></asp:TextBox> </td>
        </tr>
        <tr>
            <td>Sum Insured:</td>
            <td> <asp:TextBox ID="TextBox2" runat="server" class="entry"></asp:TextBox> </td>

            <td>Premium:</td>
            <td> <asp:TextBox ID="TextBox4" runat="server" class="entry"></asp:TextBox> </td>
        </tr>
    </table>
           <hr />
           <asp:Button ID="Button1" runat="server" Text="Submit" style="border-radius: 7px;"/>
           <asp:Button ID="Button2" runat="server" Text="Cancel" style="border-radius: 7px;"/>
      
                      <br /><br />
           <asp:Label ID="Errorlbl" runat="server" Text="" style="color: red;"></asp:Label>

           </div>
        <%--</form>--%>
    


   
</asp:Content>
