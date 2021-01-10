<%@ Page Title="" Language="C#" MasterPageFile="~/adminpaneli/admin.Master" AutoEventWireup="true" CodeBehind="blogTypelist.aspx.cs" Inherits="blogproject1.adminpaneli.blogTypelist" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <dx:BootstrapGridView ID="BootstrapGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="blogTypeID">
            <Settings ShowFilterRow="True" />
<SettingsPopup>
<HeaderFilter MinHeight="140px"></HeaderFilter>
</SettingsPopup>
            <SettingsDataSecurity AllowDelete="True" AllowEdit="True" AllowInsert="True" />
            <Columns>
                <dx:BootstrapGridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                </dx:BootstrapGridViewCommandColumn>
                <dx:BootstrapGridViewTextColumn FieldName="blogTypeID" ReadOnly="false" VisibleIndex="1">
                </dx:BootstrapGridViewTextColumn>
                <dx:BootstrapGridViewTextColumn FieldName="blogName" VisibleIndex="2">
                </dx:BootstrapGridViewTextColumn>
            </Columns>
            <SettingsSearchPanel Visible="True" />
        </dx:BootstrapGridView>
     



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connBlog %>" DeleteCommand="DELETE FROM [blogType] WHERE [blogTypeID] = @blogTypeID" InsertCommand="INSERT INTO [blogType] ([blogTypeID], [blogName]) VALUES (@blogTypeID, @blogName)" SelectCommand="SELECT * FROM [blogType]" UpdateCommand="UPDATE [blogType] SET [blogName] = @blogName WHERE [blogTypeID] = @blogTypeID">
            <DeleteParameters>
                <asp:Parameter Name="blogTypeID" Type="Byte" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="blogTypeID" Type="Byte" />
                <asp:Parameter Name="blogName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="blogName" Type="String" />
                <asp:Parameter Name="blogTypeID" Type="Byte" />
            </UpdateParameters>
        </asp:SqlDataSource>
    

    </div>
    <br />
      <div class="alert alert-danger alert-dismissible">
        New Butonuna Basarak Yeni Türler Ekliyebilirsiniz,Edit Diyerek İse Güncelleyebilirsiniz,Delete Diyerek Silebilirsin,<a href="#" class="alert-link">Silmeden Önce Dikkat Edin Delete Butonuna Basınca Direk Siler.</a> 
        </div>


</asp:Content>
