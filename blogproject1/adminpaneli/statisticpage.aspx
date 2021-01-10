<%@ Page Title="" Language="C#" MasterPageFile="~/adminpaneli/admin.Master" AutoEventWireup="true" CodeBehind="statisticpage.aspx.cs" Inherits="blogproject1.adminpaneli.statisticpage" %>

<%@ Register Assembly="DevExpress.XtraCharts.v19.2.Web, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.XtraCharts.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">




        <table class="nav-justified">
            <tr>
                <td>
                                <dx:WebChartControl ID="WebChartControl1" runat="server" CrosshairEnabled="True" Height="500px" Width="600px">
                                    <DiagramSerializable>
                                        <dx:XYDiagram>
                                            <AxisX VisibleInPanesSerializable="-1">
                                            </AxisX>
                                            <AxisY VisibleInPanesSerializable="-1">
                                            </AxisY>
                                        </dx:XYDiagram>
                                    </DiagramSerializable>
                                    <Legend Name="Default Legend"></Legend>
                                    <SeriesSerializable>
                                        <dx:Series Name="Yazılan Türler">
                                        </dx:Series>
                                    </SeriesSerializable>
                                </dx:WebChartControl>
                </td>
            </tr>
        </table>




        <br />
        <div>

            <asp:TextBox ID="TxtTUS" runat="server" CssClass="form-control">Toplam Üye Sayısı: 136</asp:TextBox>
        </div>
        <br />

        <div>

            <asp:TextBox ID="TxtTBS" runat="server" CssClass="form-control">Toplam Blog Sayısı: 14</asp:TextBox>
        </div>
        <br />

        <div>
            <asp:TextBox ID="TxtTKS" runat="server" CssClass="form-control">Toplam Kadın Üye Sayısı: 17</asp:TextBox>
        </div>
        <br />

        <div>
            <asp:TextBox ID="TxtTES" runat="server" CssClass="form-control">Toplam Erkek Üye Sayısı : Matematik</asp:TextBox>
        </div>
        <br />







    </div>
</asp:Content>
