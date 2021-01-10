<%@ Page Title="" Language="C#" MasterPageFile="~/uyesayfalari/login.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="blogproject1.uyesayfalari.register" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3"  style="margin: auto; padding:45px 15px 0px 15px">
                <div class="panel panel-login" style="padding: 0px 45px">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-12" style="margin: auto">
                                <a href="#" class="active" id="register-form-link">Kayıt Ol</a>
                            </div>
                        </div>
                        <hr>
                    </div>

                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div id="register-form" role="form" style="display: block;">
                                    <div class="form-group">
                                          <a style="font-size: 40px; position: relative; top: 15px; left: 18px; color:  #007bff;"
                                                class="fa fa-user-circle"></a>
                                        <dx:ASPxTextBox ID="txtEmail" NullText="Kullanıcı Adınız" runat="server" CssClass="lform-control" TabIndex="1"></dx:ASPxTextBox>
                                    </div>
                                    <div class="form-group">
                                         <a style="font-size: 40px; position: relative; top: 18px; left: 18px; color:  #007bff;"
                                                class="fa fa-unlock-alt"></a>
                                        <dx:ASPxTextBox ID="txtPassword" NullText="Şifre" runat="server" CssClass="lform-control" TabIndex="1" Password="True"></dx:ASPxTextBox>
                                    </div>
                                    <div class="form-group">
                                         <a style="font-size: 40px; position: relative; top: 18px; left: 18px; color:  #007bff;"
                                                class="fa fa-unlock-alt"></a>
                                        <dx:ASPxTextBox ID="txtPasswordOnay" NullText="Tekrar Şifre" runat="server" CssClass="lform-control" TabIndex="1" Password="True"></dx:ASPxTextBox>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-12 col-sm-offset-3" style="margin: auto 0px 5%;">
                                                <dx:ASPxButton ID="btnKayitol" CssClass="btnBlog" runat="server" Text="Kayıt Oluştur" OnClick="btnKayitol_Click" ></dx:ASPxButton>
                                                <dx:ASPxLabel ID="lblRegisterHatalar" runat="server" Text=""></dx:ASPxLabel>
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

</asp:Content>
