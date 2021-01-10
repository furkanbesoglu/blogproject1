<%@ Page Title="" Language="C#" MasterPageFile="~/uyesayfalari/ana.Master" AutoEventWireup="true" CodeBehind="socialpage.aspx.cs" Inherits="blogproject1.uyesayfalari.socialpage" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header" style="text-align: center;">Sosyal Medya Düzenle</div>
                    <div class="card-body">

                        <div class="form-group row">
                            <label for="full_name" class="col-md-4 col-form-label text-md-right">İnstagram Link :</label>
                            <div class="col-md-6">
                                <dx:ASPxTextBox ID="xtxtInstagram" runat="server" Width="100%" CssClass="form-control" NullText="İnstagram"></dx:ASPxTextBox>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="full_name" class="col-md-4 col-form-label text-md-right">Facebook Link :</label>
                            <div class="col-md-6">
                                <dx:ASPxTextBox ID="xtxtFacebook" runat="server" Width="100%" CssClass="form-control" NullText="Facebook"></dx:ASPxTextBox>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="full_name" class="col-md-4 col-form-label text-md-right">Twitter Link :</label>
                            <div class="col-md-6">
                                <dx:ASPxTextBox ID="xtxtTwitter" runat="server" Width="100%" CssClass="form-control" NullText="Twitter"></dx:ASPxTextBox>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email_address" class="col-md-4 col-form-label text-md-right">Linkedin Link :</label>
                            <div class="col-md-6">
                                <dx:ASPxTextBox ID="xtxtLinkedin" runat="server" Width="100%" CssClass="form-control" NullText="Linkedin"></dx:ASPxTextBox>
                            </div>
                        </div>

                         <div class="form-group row">
                            <label for="email_address" class="col-md-4 col-form-label text-md-right">Website Link :</label>
                            <div class="col-md-6">
                                <dx:ASPxTextBox ID="xtxtwebSite" runat="server" Width="100%" CssClass="form-control" NullText="Website"></dx:ASPxTextBox>
                            </div>
                        </div>


                 
                        <div class="col-md-6 offset-md-4" style="margin: auto;">
                            <dx:ASPxButton ID="btnKaydol" runat="server" Text="Ekle" CssClass="btnRegister" OnClick="btnKaydol_Click" ></dx:ASPxButton>
                            <dx:ASPxButton ID="btnGüncelle" runat="server" Text="Güncelle" CssClass="btnRegister" OnClick="btnGüncelle_Click"></dx:ASPxButton>                            
                            <dx:ASPxLabel ID="SONUC" runat="server" Text=""></dx:ASPxLabel>
                        </div>

                       


                    </div>

                </div>
            </div>
        </div>
    </div>







</asp:Content>
