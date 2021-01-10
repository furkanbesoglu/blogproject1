<%@ Page Title="" Language="C#" MasterPageFile="~/uyesayfalari/ana.Master" AutoEventWireup="true" CodeBehind="blogupdatepage.aspx.cs" Inherits="blogproject1.uyesayfalari.blogupdatepage" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="breadcumb-area" style="background-image: url(img/bg-img/h.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumb-title text-center">
                        <h2>Blog Güncelleme Sayfası</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row" style="margin: auto">
        <div class="col-md-10">
            <section id="loginForm">
                <div class="form-horizontal">
                    <%-- <h4>Blog Ekleme Sayfası</h4>--%>
                    <div class="breadcumb-nav">
                        <div class="container">
                            <div class="row">
                                <div class="col-12">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" aria-hidden="true"></i>AnaSayfa</a></li>
                                            <li class="breadcrumb-item"><a href="#">Blog</a></li>
                                            <li class="breadcrumb-item active">Blog Güncelleme Sayfası</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <%--buraya control gruplarını ekleyeceğiz.--%>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="imgPicture" CssClass="col-md-2 control-label">Blog Resim :</asp:Label>
                        <div class="col-md-10">

                            <asp:Image ID="imgPicture" Width="450px" Height="450px" runat="server" class="img-thumbnail" alt="Cinque Terre" />
                            <asp:FileUpload ID="fluPicture" onchange="this.form.submit();" runat="server" Width="200" />
                       
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="txtBaslik" CssClass="col-md-2 control-label">Blog Başlık :</asp:Label>
                        <div class="col-md-10">
                            <%-- <asp:TextBox runat="server" ID="AGE1" CssClass="form-control"  />--%>

                            <dx:ASPxTextBox ID="txtBaslik" runat="server" CssClass="form-control"></dx:ASPxTextBox>

                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="txtBloggerName" CssClass="col-md-2 control-label">Blogger Adı :</asp:Label>
                        <div class="col-md-10">
                            <%-- <asp:TextBox runat="server" ID="AGE1" CssClass="form-control"  />--%>

                            <dx:ASPxTextBox ID="txtBloggerName" runat="server" CssClass="form-control"></dx:ASPxTextBox>

                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="txtFrontContent" CssClass="col-md-2 control-label">Ön İçerik :</asp:Label>
                        <div class="col-md-10">
                            <%-- <asp:TextBox runat="server" ID="AGE1" CssClass="form-control"  />--%>

                            <dx:ASPxTextBox ID="txtFrontContent" runat="server" CssClass="form-control"></dx:ASPxTextBox>

                        </div>
                    </div>


                    <div class="form-group">
                        <%--<asp:Label runat="server" AssociatedControlID="TextAreaDetail" CssClass="col-md-2 control-label">Blog Detay :</asp:Label>--%>
                        <div class="col-md-10">
                            <asp:Label ID="lblBlogDetay" runat="server" Text="Blog Detayı:"></asp:Label>
                            <textarea id="TextAreaDetail" cols="20" rows="6" class="form-control" runat="server"></textarea>

                            <%-- <asp:TextBox runat="server" ID="KG" CssClass="form-control"  />--%>
                            <%-- <asp:RequiredFieldValidator runat="server" ControlToValidate="TextAreaDetail"
                                    CssClass="text-danger" ErrorMessage="LÜTFEN BLOG DETAYINIZI GİRİNİZ" />--%>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="xcmbBlogType" CssClass="col-md-2 control-label">Blog Türü:</asp:Label>
                        <div class="col-md-10">
                            <dx:ASPxComboBox ID="xcmbBlogType" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" TextField="blogName" ValueField="blogTypeID"></dx:ASPxComboBox>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="xcmbBlogType"
                                CssClass="text-danger" ErrorMessage="BLOG TÜRÜ SEÇMELİSİNİZ" />

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connBlog %>" SelectCommand="SELECT [blogTypeID], [blogName] FROM [blogType]"></asp:SqlDataSource>


                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="xdateBlog" CssClass="col-md-10 control-label">Blog Yayınlanma Tarihi:</asp:Label>
                        <div class="col-md-10">
                            <dx:ASPxDateEdit ID="xdateBlog" runat="server" CssClass="form-control"></dx:ASPxDateEdit>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="xdateBlog"
                                CssClass="text-danger" ErrorMessage="BLOG YAYINLANMA TARİHİ SEÇMELİSİNİZ" />
                        </div>
                    </div>



                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <dx:ASPxButton ID="btnGuncelle" runat="server" Text="Güncelle" CssClass="btnBlog" UseSubmitBehavior="False" OnClick="btnGuncelle_Click"></dx:ASPxButton>

                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" style="color:red;" ID="SONUC" CssClass="col-md-10 control-label"></asp:Label>

                    </div>
                </div>


            </section>
            <!-- section -->
        </div>
    </div>

</asp:Content>
