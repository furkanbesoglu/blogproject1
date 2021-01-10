<%@ Page Title="" Language="C#" MasterPageFile="~/adminpaneli/admin.Master" AutoEventWireup="true" CodeBehind="commentdelete.aspx.cs" Inherits="blogproject1.adminpaneli.commentdelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <table class="table  table-bordered table-hover">

        <tr style="background-color: black; color: white;">
          <th scope="col">Profil Fotoğrafı</th>
            <th scope="col">YORUM ID</th>
            <th scope="col">PERSON ID</th>
            <th scope="col">BLOG ID</th>
            <th scope="col">YORUM İÇERİK</th>
            <th scope="col">YORUM TARİH</th>
            <th scope="col">İŞLEMLER</th>

        </tr>

        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                         <td>
                            <asp:Image ID="imageControl" Width="250px" Height="250px" runat="server" ImageUrl='<%# Eval("personimageURL") %>'></asp:Image>
                        </td>

                        <td><%#Eval("commentID")%></td>
                        <td><%#Eval("blogID")%></td>
                        <td><%#Eval("personID")%></td>
                        <td><%#Eval("commentContent")%></td>
                        <td><%#Eval("commentDate")%></td>
                        

                        <td>
                            <asp:HyperLink ID="HyperLink1" Width="100px" Height="35px" Font-Size="Large" NavigateUrl='<%# "~/adminpaneli/commentdelete.aspx?personID="+Eval("personID")%>' runat="server" CssClass="btn btn-primary">SİL</asp:HyperLink>
                        </td>


                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </tbody>

    </table>
    <div class="alert alert-danger alert-dismissible">
       Lütfen Yorumların Hepsini Silmek İçin Aşağıdaki SİL Butonunu Kullanınız.Tek Silmek için İse, <a href="#" class="alert-link">İşlemler Kısmından Sil Butonunu</a>Kullanınız.
        </div>
     <asp:Button ID="Button1" runat="server" Text="Hepsini Sil" CssClass="btn btn-outline-danger" Width="100%" Height="35px" Font-Size="Large" OnClick="Button1_Click"/>
</asp:Content>
