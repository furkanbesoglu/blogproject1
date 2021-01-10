<%@ Page Title="" Language="C#" MasterPageFile="~/adminpaneli/admin.Master" AutoEventWireup="true" CodeBehind="ara.aspx.cs" Inherits="blogproject1.adminpaneli.ara" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table  table-bordered table-hover">

        <tr style="background-color: black; color: white;">
            <th scope="col">PROFİL RESMİ</th>
            <th scope="col">ID</th>
            <th scope="col">KULLANICI ADI</th>
            <th scope="col">ADI</th>
            <th scope="col">İKİNCİ ADI</th>
            <th scope="col">SOYADI</th>
            <th scope="col">DOĞUM TARİHİ</th>
            <th scope="col">CİNSİYET </th>
            <th scope="col">BLOG TÜRÜ</th>
            <th scope="col">MAİL</th>
            <th scope="col">İŞLEMLER</th>
        </tr>

        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Image ID="imageControl" Width="150px" Height="150px" runat="server" ImageUrl='<%# Eval("personimageUrl") %>'></asp:Image>
                        </td>
                        <td><%#Eval("personID")%></td>
                        <td><%#Eval("userName")%></td>
                        <td><%#Eval("personName")%></td>
                        <td><%#Eval("personSecondName")%></td>
                        <td><%#Eval("personSurname")%></td>
                        <td><%#Eval("dateOFbirth")%></td>
                        <td><%#Eval("genderName")%></td>
                        <td><%#Eval("blogName")%></td>
                        <td><%#Eval("mail")%></td>

                        <td>
                           
                        </td>


                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>
</asp:Content>
