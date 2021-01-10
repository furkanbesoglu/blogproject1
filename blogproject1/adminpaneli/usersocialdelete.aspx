<%@ Page Title="" Language="C#" MasterPageFile="~/adminpaneli/admin.Master" AutoEventWireup="true" CodeBehind="usersocialdelete.aspx.cs" Inherits="blogproject1.adminpaneli.usersocialdelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table  table-bordered table-hover">

        <tr style="background-color: black; color: white;">
         <th scope="col">KULLANICI ADI</th>
            <th scope="col">BLOG ID</th>
            <th scope="col">PERSON ID</th>
            <th scope="col">İNSTAGRAM</th>
            <th scope="col">FACEBOOK</th>
            <th scope="col">TWİTTER</th>
            <th scope="col">LİNKEDİN</th>
            <th scope="col">WEB SİTE</th>
           

        </tr>

        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("userName")%></td>
                        <td><%#Eval("blogID")%></td>
                        <td><%#Eval("personID")%></td>
                        <td><%#Eval("instagram")%></td>
                        <td><%#Eval("facebook")%></td> 
                        <td><%#Eval("twitter")%></td> 
                        <td><%#Eval("linkedin")%></td> 
                        <td><%#Eval("website")%></td> 

                       

                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </tbody>

    </table>
    <div class="alert alert-danger alert-dismissible">
       Lütfen Yorumların Hepsini Silmek İçin Aşağıdaki SİL Butonunu Kullanınız.Tek Silmek için İse, <a href="#" class="alert-link">İşlemler Kısmından Sil Butonunu</a>Kullanınız.
        </div>
     <asp:Button ID="Button1" runat="server" Text="Sil" CssClass="btn btn-outline-danger" Width="100%" Height="35px" Font-Size="Large" OnClick="Button1_Click"/>
</asp:Content>
