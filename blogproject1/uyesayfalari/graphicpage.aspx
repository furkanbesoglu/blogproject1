<%@ Page Title="" Language="C#" MasterPageFile="~/uyesayfalari/ana.Master" AutoEventWireup="true" CodeBehind="graphicpage.aspx.cs" Inherits="blogproject1.uyesayfalari.graphicpage" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.XtraCharts.v19.2.Web, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.XtraCharts.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="breadcumb-area" style="background-image: url(img/bg-img/h.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumb-title text-center">
                        <h2>Genel İstatistik Sayfası</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="breadcumb-nav">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" aria-hidden="true"></i>AnaSayfa</a></li>
                            <li class="breadcrumb-item"><a href="#">İstatistik</a></li>
                            <li class="breadcrumb-item active">Genel Grafik Sayfası</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <br />

   

    <table class="table table-bordered table-hover">
        <tr>
            <td>
                <dx:WebChartControl ID="WebChartControl1" runat="server" CrosshairEnabled="True" Height="500px" Width="600px">
                    <BorderOptions Color="DarkGray" Thickness="3" Visibility="True" />
                    <DiagramSerializable>
                        <dx:SwiftPlotDiagram>
                            <AxisX VisibleInPanesSerializable="-1">
                            </AxisX>
                            <AxisY VisibleInPanesSerializable="-1">
                            </AxisY>
                        </dx:SwiftPlotDiagram>
                    </DiagramSerializable>
                    <Legend Name="Default Legend"></Legend>
                    <SeriesSerializable>
                        <dx:Series Name="Bloglar" LabelsVisibility="True">
                            <ViewSerializable>
                                <dx:SwiftPlotSeriesView>
                                    <LineStyle Thickness="3" />
                                </dx:SwiftPlotSeriesView>
                            </ViewSerializable>
                        </dx:Series>
                    </SeriesSerializable>
                </dx:WebChartControl>
                <br />

            </td>
            <td>
                <dx:WebChartControl ID="WebChartControl2" runat="server" CrosshairEnabled="True" Height="500px" Width="600px" BackColor="#D8D8D8">
                    <DiagramSerializable>
                        <dx:SimpleDiagram3D RotationMatrixSerializable="0.63275811242909;0.265005656180496;-0.72759135051728;0;-0.539667942858316;0.824754466335355;-0.168933660680734;0;0.55531584040642;0.499551871633229;0.664885136652558;0;0;0;0;1" PerspectiveAngle="40" ZoomPercent="101">
                        </dx:SimpleDiagram3D>
                    </DiagramSerializable>
                    <Legend Name="Default Legend" BackColor="White" TextColor="Black">
                        <Border Color="White" Thickness="2" />
                        <Title Text="Blog Türleri" TextColor="Black" Visible="True"></Title></Legend>
                    <SeriesSerializable>
                        <dx:Series LegendTextPattern="{A}" Name="Blog Türleri">
                            <ViewSerializable>
                                <dx:Pie3DSeriesView Depth="19">
                                </dx:Pie3DSeriesView>
                            </ViewSerializable>
                        </dx:Series>
                    </SeriesSerializable>
                </dx:WebChartControl>

            </td>
        </tr>

        <tr>
            <td>
                <dx:WebChartControl ID="WebChartControl3" runat="server" CrosshairEnabled="True" Height="500px" Width="600px" PaletteName="Blue" AppearanceNameSerializable="Dark" BackColor="Black" PaletteBaseColorNumber="5">
                    <BorderOptions Color="240, 0, 0" Thickness="4" Visibility="True" />
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
                        <dx:Series Name="Yazar">
                            <ViewSerializable>
                                <dx:StackedBarSeriesView BarWidth="1" Color="240, 0, 0">
                                    <Border Color="146, 208, 80" Thickness="2" />
                                    <FillStyle FillMode="Gradient">
                                        <OptionsSerializable>
                                            <dx:RectangleGradientFillOptions GradientMode="ToCenterVertical" />
                                        </OptionsSerializable>
                                    </FillStyle>
                                </dx:StackedBarSeriesView>
                            </ViewSerializable>
                        </dx:Series>
                    </SeriesSerializable>
                </dx:WebChartControl>

            </td>

            <td>
                <dx:WebChartControl ID="WebChartControl4" runat="server" CrosshairEnabled="True" Height="500px" Width="600px">
                    <BorderOptions Color="DarkGray" Thickness="4" />
                    <DiagramSerializable>
                        <dx:XYDiagram>
                            <AxisX VisibleInPanesSerializable="-1">
                                <WholeRange SideMarginsValue="0" />
                            </AxisX>
                            <AxisY VisibleInPanesSerializable="-1">
                            </AxisY>
                        </dx:XYDiagram>
                    </DiagramSerializable>
                    <Legend Name="Default Legend"></Legend>
                    <SeriesSerializable>
                        <dx:Series Name="Üyelerimiz">
                            <ViewSerializable>
                                <dx:StackedSplineAreaSeriesView LineTensionPercent="86" Transparency="3">
                                </dx:StackedSplineAreaSeriesView>
                            </ViewSerializable>
                        </dx:Series>
                    </SeriesSerializable>
                </dx:WebChartControl>
            </td>
        </tr>
    </table>

</asp:Content>
