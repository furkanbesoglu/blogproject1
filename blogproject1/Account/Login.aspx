<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="blogproject1.Account.Login" Async="true" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

      <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3" style="margin: auto; padding:45px 15px 0px 15px">
                <div class="panel panel-login" style="padding: 0px 45px">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-12" style="margin: auto">
                                <a href="#" class="active" id="login-form-link">Üye Girişi</a>
                                
                                <h6>Mommy Blog'a Hoş Geldiniz</h6>
                            </div>
                        </div>
                        <hr>
                    </div>

                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div id="login-form" role="form" style="display: block;">
                                    <div class="form-group">
                                         <a style="font-size: 40px; position: relative; top: 15px; left: 18px; color:  #007bff;"
                                                class="fa fa-user-circle"></a>
                                        <dx:ASPxTextBox ID="txtUsername" NullText="Kullanıcı Adınız" runat="server" CssClass="lform-control" TabIndex="1"></dx:ASPxTextBox>
                                    </div>

                                    <div class="form-group">
                                         <a style="font-size: 40px; position: relative; top: 18px; left: 18px; color:  #007bff;"
                                                class="fa fa-unlock-alt"></a>
                                        <dx:ASPxTextBox ID="txtSifre" NullText="Şifre" runat="server" CssClass="lform-control" TabIndex="1" Password="True"></dx:ASPxTextBox>
                                    </div>
                                    <div>
                                        <div class="row">

                                            <div class="col-xs-6 col-md-6">
                                                <asp:CheckBox runat="server" ID="RememberMe" />
                                                <asp:Label runat="server" AssociatedControlID="RememberMe">&nbsp Remember me?</asp:Label>
                                            </div>
                                            <div class="col-xs-6 col-md-6" style="border-radius: 9px; border: #000000; border-style: none;" >
                                                <a href="register.aspx" class="fa fa-user-plus" style="font-size: 14px; color: #007bff; font-weight: bold;">&nbsp  Yeni Kayıt Oluştur</a>

                                            </div>

                                        </div>
                                        <div class="col-lg-12">
                                            <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                                                <p class="alert text-danger">
                                                    <asp:Literal runat="server" ID="FailureText" />
                                                </p>
                                            </asp:PlaceHolder>
                                        </div>
                                        <div class="form-group">
                                            <div style="margin-top: 70px;">
                                                <div>
                                                    <dx:ASPxButton ID="btnGiris" CssClass="btnBlog" runat="server" Text="GİRİŞ YAP" OnClick="btnGiris_Click"></dx:ASPxButton>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <dx:ASPxLabel ID="lblGirisHatalar" runat="server" Text=""></dx:ASPxLabel>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="text-center">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div>
            <div class="col-md-4">
                <section id="socialLoginForm">
                    <uc:openauthproviders runat="server" id="OpenAuthLogin" Visible="False" />
                </section>
            </div>
        </div>
    </div>
</asp:Content>
