<%@ Page Title="" Language="C#" MasterPageFile="~/adminpaneli/admin.Master" AutoEventWireup="true" CodeBehind="blogdelete.aspx.cs" Inherits="blogproject1.adminpaneli.blogdelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="table  table-bordered table-hover">

        <tr style="background-color: black; color: white;">
            <th scope="col">BLOG RESMİ</th>
            <th scope="col">BLOG ID</th>
            <th scope="col">PERSON ID</th>
            <th scope="col">BLOG TÜRÜ</th>
            <th scope="col">BLOG BAŞLIK</th>
            <th scope="col">BLOGGER ADI</th>
            <th scope="col">BLOG ÖN İÇERİK</th>
            <th scope="col">BLOG İÇERİK</th>
            <th scope="col">BLOG TARİH</th>
            <th scope="col">BLOG OKUNMA SAYISI</th>
            <th scope="col">BLOG YORUM SAYISI</th>
            <th scope="col">İŞLEMLER</th>
        </tr>

        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Image ID="imageControl" Width="250px" Height="250px" runat="server" ImageUrl='<%# Eval("blogimageURL") %>'></asp:Image>
                        </td>
                        
                        <td><%#Eval("blogID")%></td>
                        <td><%#Eval("personID")%></td>
                        <td><%#Eval("blogName")%></td>
                        <td><%#Eval("blogBaslik")%></td>
                        <td><%#Eval("bloggerName")%></td>
                        <td><%#Eval("frontContent")%></td>
                        <td><%#Eval("blogDetail")%></td>
                        <td><%#Eval("blogDate")%></td>
                        <td><%#Eval("blogReads")%></td>
                        <td><%#Eval("blogCommentReads")%></td>


                        <td>
                           
                        </td>


                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>
    <div class="alert alert-danger alert-dismissible">
       Lütfen Silme İşlemini Tamamlamadan Önce Yorum Listesinden, <a href="#" class="alert-link">Yorum'u Sildiğizden</a> Emin Olun(İşlem Sırasına Uyalım Lütfen).
        </div>
     <asp:Button ID="Button1" runat="server" Text="Sil" CssClass="btn btn-outline-danger" Width="100%" Height="35px" Font-Size="Large" OnClick="Button1_Click"  />
</asp:Content>
