<%@ Page Title="" Language="C#" MasterPageFile="~/uyesayfalari/ana.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="blogproject1.uyesayfalari.about" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container contact" style="padding: 40px 0px 30%;">
        <div class="row">
            <div class="col-md-3">
                <div class="contact-info">
                    <img src="https://image.ibb.co/kUASdV/contact-image.png" alt="image" />
                    <h2>Bizimle İletişime Geçin</h2>
                    <h4>Sizden Tavsiyelerinizi Duymak İsteriz!</h4>
                </div>
            </div>
            <div class="col-md-9">
                <div class="contact-form">
                  <%--  <div class="form-group">
                        <label class="control-label col-sm-2" for="fname">Adınız:</label>
                        <div class="col-sm-10">
                            <dx:ASPxTextBox ID="xtxtname" runat="server" CssClass="form-control" NullText="Name"></dx:ASPxTextBox>
                        </div>
                    </div>--%>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="lname">Gönderen Kişi :</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                           <%-- <dx:ASPxTextBox ID="xtxtemail" runat="server" CssClass="form-control" NullText="E-mail"></dx:ASPxTextBox>--%>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="email">Konu :</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="TextBox1" runat="server"  CssClass="form-control"></asp:TextBox>
                            <%--<dx:ASPxTextBox ID="xtxtSurname" runat="server" CssClass="form-control" NullText="Surname"></dx:ASPxTextBox>--%>
                        </div>

                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="comment">İçerik :</label>
                        <div class="col-sm-10">
                            <textarea id="TextArea1" cols="20" rows="8" runat="server" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <dx:ASPxButton ID="btnGonder" runat="server" Text="Gönder" CssClass="btnBlog" OnClick="btnGonder_Click"></dx:ASPxButton>
                        </div>                      
                    </div>
                    <div>
                        <asp:Label ID="SONUC" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
