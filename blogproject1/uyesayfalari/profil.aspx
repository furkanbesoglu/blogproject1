<%@ Page Title="" Language="C#" MasterPageFile="~/uyesayfalari/ana.Master" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="blogproject1.uyesayfalari.profil" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="container bootstrap snippet">
            <div class="row">

                <div class="col-sm-10" style="margin-left: 45%;">
                    <h4 style="color: darkblue; font-size: xx-large; font-family: auto; font-weight: lighter;">Profil Düzenle</h4>
                </div>

            </div>
            <div class="row">
                <div class="col-sm-3">
                    <!--left col-->


                    <div class="text-center" style="padding: 20px; border: 2px solid rgba(0, 0, 0, 0.12);">
                        <div>
                            <h5>Profil Resmi</h5>
                        </div>
                        <hr />
                        <asp:Image ID="imgPicture" Width="200px" Height="200px" runat="server" ImageUrl="~/uyesayfalari/images/uploadFoto.jpg" class="img-circle" Style="border-radius: 50%;" />
                        <br />
                        <hr />
                        <h6>Yüklemek İstediğiniz Fotoğrafı Seçiniz...</h6>
                        <asp:FileUpload ID="fluPicture" onchange="this.form.submit();" runat="server" Width="210" />
                        
                    </div>

                    <br />
                    <hr />

                    <div class="panel panel-default">
                        <div class="panel-heading">Sosyal Medya</div>
                        <div class="panel-body">
                            <i class="fa fa-facebook fa-2x"></i><i class="fa fa-github fa-2x"></i><i class="fa fa-twitter fa-2x"></i><i class="fa fa-pinterest fa-2x"></i><i class="fa fa-google-plus fa-2x"></i>
                        </div>
                    </div>




                    <div class="panel panel-default">
                        <ul class="list-group">

                            <dx:ASPxTextBox ID="txtfacebook" runat="server" CssClass="form-control" NullText="www.facebook.com" ClientEnabled="False"></dx:ASPxTextBox>
                            <dx:ASPxTextBox ID="txtinstagram" runat="server" CssClass="form-control" NullText="www.instagram.com" ClientEnabled="False"></dx:ASPxTextBox>
                            <dx:ASPxTextBox ID="txtTwitter" runat="server" CssClass="form-control" NullText="www.Twitter.com" ClientEnabled="False"></dx:ASPxTextBox>
                            <dx:ASPxTextBox ID="txtLinkedin" runat="server" CssClass="form-control" NullText="tr.linkedin.com" ClientEnabled="False"></dx:ASPxTextBox>
                            <dx:ASPxTextBox ID="txtWebsite" runat="server" CssClass="form-control" NullText="www.Website.com" ClientEnabled="False"></dx:ASPxTextBox>


                        </ul>

                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/uyesayfalari/socialpage.aspx">Sosyal Medya Düzenle</asp:HyperLink>

                    </div>






                </div>
                <!--/col-3-->
                <div class="col-sm-9">



                    <div class="tab-content">
                        <div class="tab-pane active" id="home">
                            <hr>

                            <div class="form-group">

                                <div class="col-xs-6">
                                    <%-- <asp:Label ID="lblName" runat="server" Text="">Adınız :</asp:Label>--%>
                                    <a style="font-size: 35px; position: absolute; top: 35px; left: 25px; color: #007bff;"
                                        class="fa fa-user"></a>
                                    <dx:ASPxTextBox ID="xtxtname" runat="server" CssClass="lform-control" NullText="Adınız"></dx:ASPxTextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="xtxtname"
                                        CssClass="text-danger" ErrorMessage="ADINI GİRMELİSİN" />
                                </div>
                            </div>
                            <div class="form-group">

                                <div class="col-xs-6">
                                    <%--<asp:Label ID="lblSecondname" runat="server" Text="">İkinci Adınız :</asp:Label>--%>
                                    <a style="font-size: 35px; position: absolute; top: 117px; left: 25px; color: #007bff;"
                                        class="fa fa-user"></a>
                                    <dx:ASPxTextBox ID="xtxtSecondname" runat="server" CssClass="lform-control" NullText="İkinci Adınız(Zorunlu Değil)"></dx:ASPxTextBox>
                                    <br />
                                </div>
                            </div>

                            <div class="form-group">

                                <div class="col-xs-6">
                                    <%--<asp:Label ID="lblsurname" runat="server" Text="">Soyadınız :</asp:Label>--%>
                                    <a style="font-size: 35px; position: absolute; top: 198px; left: 25px; color: #007bff;"
                                        class="fa fa-user"></a>
                                    <dx:ASPxTextBox ID="xtxtSurname" runat="server" CssClass="lform-control" NullText="Soyadınız"></dx:ASPxTextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="xtxtSurname"
                                        CssClass="text-danger" ErrorMessage="SOYADINI GİRMELİSİN" />
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-6">
                                    <%--<asp:Label ID="lblmail" runat="server" Text="">E-mail Adresiniz :</asp:Label>--%>
                                    <a style="font-size: 30px; position: absolute; top: 284px; left: 23px; color: #007bff;"
                                        class="fa fa-envelope"></a>

                                    <dx:ASPxTextBox ID="xtxtmail" runat="server" CssClass="lform-control" NullText="E-Mail Address"></dx:ASPxTextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="DOB"
                                        CssClass="text-danger" ErrorMessage="E-MAİL ADRESSİ SEÇMELİSİNİZ" />
                                </div>
                            </div>
                            <div class="form-group">

                                <div class="col-xs-6">
                                    <%--<asp:Label ID="lblDob" runat="server" Text="">Doğum Tarihiniz :</asp:Label>--%>
                                    <a style="font-size: 30px; position: absolute; top: 366px; left: 25px; color: #007bff;"
                                        class="fa fa-calendar"></a>
                                    <dx:ASPxDateEdit ID="DOB" runat="server" CssClass="lform-control" NullText="Doğum Tarihiniz"></dx:ASPxDateEdit>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="DOB"
                                        CssClass="text-danger" ErrorMessage="DOOĞUM TARİHİ SEÇMELİSİNİZ" />
                                </div>
                            </div>

                            <div class="form-group">

                                <div class="col-xs-6">
                                    <%--<asp:Label ıd="lblgender" runat="server" Text="">Cinsiyetiniz :</asp:Label>--%>
                                    <a style="font-size: 30px; position: absolute; top: 447px; left: 21px; color: #007bff;"
                                        class="fa fa-venus-mars"></a>
                                    <dx:ASPxComboBox ID="xcmbgender" runat="server" CssClass="lform-control" NullText="Cinsiyetiniz" DataSourceID="SqlDataSource1" TextField="genderName" ValueField="genderID"></dx:ASPxComboBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="xcmbgender"
                                        CssClass="text-danger" ErrorMessage="CİNSİYET SEÇMELİSİNİZ" />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connBlog %>" SelectCommand="SELECT [genderID], [genderName] FROM [gender]"></asp:SqlDataSource>
                                </div>
                            </div>

                            <div class="form-group">

                                <div class="col-xs-6">
                                    <%--<asp:Label ID="lblBlogType" runat="server" Text="">Blog Türü :</asp:Label>--%>
                                    <a style="font-size: 30px; position: absolute; top: 530px; left: 23px; color: #007bff;"
                                        class="fa fa-arrow-circle-down"></a>
                                    <dx:ASPxComboBox ID="xcmblogType" runat="server" CssClass="lform-control" NullText="Blog Türü" DataSourceID="SqlDataSource2" TextField="blogName" ValueField="blogTypeID"></dx:ASPxComboBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="xcmblogType"
                                        CssClass="text-danger" ErrorMessage="BLOG TÜRÜ SEÇMELİSİNİZ" />
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connBlog %>" SelectCommand="SELECT [blogTypeID], [blogName] FROM [blogType]"></asp:SqlDataSource>
                                </div>



                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <br>
                                        <dx:ASPxButton ID="btnKaydol" runat="server" Text="Kaydol" CssClass="btnRegister" OnClick="btnKaydol_Click"></dx:ASPxButton>
                                        <dx:ASPxButton ID="btnGüncelle" runat="server" Text="Güncelle" CssClass="btnRegister" OnClick="btnGüncelle_Click"></dx:ASPxButton>
                                    </div>
                                    <br />
                                    <div>
                                        <dx:ASPxLabel ID="SONUC" style="font-size:medium; color:red;" runat="server" Text=""></dx:ASPxLabel>
                                    </div>
                                </div>

                                <br />

                                <hr>
                            </div>
                            <!--/tab-pane-->

                        </div>
                        <!--/tab-pane-->
                    </div>
                    <!--/tab-content-->

                </div>
                <!--/col-9-->
            </div>
            <!--/row-->
        </div>
    </div>
</asp:Content>
