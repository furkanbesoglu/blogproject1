<%@ Page Title="" Language="C#" MasterPageFile="~/adminpaneli/admin.Master" AutoEventWireup="true" CodeBehind="usersociallist.aspx.cs" Inherits="blogproject1.adminpaneli.usersociallist" %>
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
     <h1>ARAMA YAP</h1>
   <input type="text" style="width: 100%; height: 40px; border-radius: 2px; margin-bottom: 10px;" name="search" value="" id="id_search" placeholder="Search" autofocus />
    
    
    <table id="table-id" class="table  table-bordered table-hover">

        <tr style="background-color: #32373d; color: white;">
            <th scope="col">KULLANICI ADI</th>
            <th scope="col">BLOG ID</th>
            <th scope="col">PERSON ID</th>
            <th scope="col">İNSTAGRAM</th>
            <th scope="col">FACEBOOK</th>
            <th scope="col">TWİTTER</th>
            <th scope="col">LİNKEDİN</th>
            <th scope="col">WEB SİTE</th>
            <th scope="col">İŞLEMLER</th>
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

                        <td>
                            <asp:HyperLink ID="HyperLink1" Width="100px" Height="35px" Font-Size="Large" NavigateUrl='<%# "~/adminpaneli/usersocialdelete.aspx?personID="+Eval("personID")%>' runat="server" CssClass="btn btn-primary">SİL</asp:HyperLink>
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
