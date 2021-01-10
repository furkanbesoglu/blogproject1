<%@ Page Title="" Language="C#" MasterPageFile="~/adminpaneli/admin.Master" AutoEventWireup="true" CodeBehind="userlistpage.aspx.cs" Inherits="blogproject1.adminpaneli.userlistpage" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <select class="form-control" name="state" id="maxRows">
        <option value="5000">Show ALL Rows</option>
        <option value="5">5</option>
        <option value="10">10</option>
        <option value="15">15</option>
        <option value="20">20</option>
        <option value="50">50</option>
        <option value="70">70</option>
        <option value="100">100</option>
    </select>

    <div>
        <asp:Label ID="lblsearch" runat="server" Text="Label">Buradan Kullanıcı Adını Yazarak Arama Yapabilirsiniz: <span class="fa fa-search mr-3"></span> </asp:Label>
        <asp:TextBox ID="txtserach" runat="server" Width="83%" TextMode="Search"></asp:TextBox> <asp:Button ID="btnAra" Width="200px" runat="server" Text="Ara" OnClick="btnAra_Click" />
    </div>
 <br />
    
    
    <table id="table-id" class="table  table-bordered table-hover">

        <tr style="background-color: #32373d; color: white; height:50px;">
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
                            <asp:HyperLink ID="HyperLink1"  Height="35px" Font-Size="Large" NavigateUrl='<%# "~/adminpaneli/userdelete.aspx?personID="+Eval("personID")%>' runat="server" Width="100px" CssClass="btn btn-danger">SİL</asp:HyperLink>
                        </td>


                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>

     <div class='pagination-container' style="text-align: center; margin-left:42%;">
        <nav>
            <ul class="pagination">

                <li data-page="prev">
                    <span>< <span class="sr-only">(current)</span></span>
                </li>
                <!--	Here the JS Function Will Add the Rows -->
                <li data-page="next" id="prev">
                    <span>> <span class="sr-only">(current)</span></span>
                </li>
            </ul>
        </nav>
         </div>
</asp:Content>
