<%@ Page Title="" Language="C#" MasterPageFile="~/uyesayfalari/ana.Master" AutoEventWireup="true" CodeBehind="singlepost.aspx.cs" Inherits="blogproject1.uyesayfalari.singlepost" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="breadcumb-area" style="background-image: url(img/bg-img/h.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumb-title text-center">
                        <h2>Tam Blog Okuma Sayfası</h2>
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
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" aria-hidden="true"></i>Anasayfa</a></li>
                            <li class="breadcrumb-item"><a href="#">Blog</a></li>
                            <li class="breadcrumb-item active">Tam Blog Okuma Sayfası</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Breadcumb Area End ****** -->
    <hr />


    <!-- welcome Page LOad Popup area -->
    <div class="container">
       
        <!-- Modal -->
        <div class="modal show" id="myModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
  
                        <h4 style="margin-left:27%; color:red;">Üyelerimize Bildirim</h4>
                    </div>
                    <div class="modal-body">
                        <p>Bu Sayfada Blog İçin Yorumlar Bulunur.Lütfen Site İçinde Şikayet Veya Önerileriniz İçin Bizimle İletişime Geçin. Teşekkürler <i class="fa fa-smile-o" aria-hidden="true"></i></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Kapat</button>
                    </div>
                </div>

            </div>
        </div>

    </div>



    <!-- ****** Single Blog Area Start ****** -->






    <section class="single_blog_area section_padding_80">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="row no-gutters">

                        <!-- Single Post Share Info -->
                        <asp:Repeater ID="RepeaterSocial" runat="server">
                            <ItemTemplate>
                                <div class="col-2 col-sm-1">
                                    <div class="single-post-share-info mt-100">
                                        <a href='<%# Eval("facebook") %>' class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                        <a href='<%# Eval("twitter") %>' class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                        <a href='<%# Eval("linkedin") %>' class="googleplus"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                        <a href='<%# Eval("instagram") %>' class="instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                        <a href='<%# Eval("website") %>' class="pinterest"><i class="fa fa-wechat" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>



                        <!-- Single Post -->
                        <div class="col-10 col-sm-11">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <div class="single-post">
                                        <!-- Post Thumb -->
                                        <div class="post-thumb">
                                            <asp:Image runat="server" Height="500px" ImageUrl='<%# Eval("blogimageURL") %>' />
                                        </div>
                                        <!-- Post Content -->

                                        <div class="post-content">
                                            <div class="post-meta d-flex">
                                                <div class="post-author-date-area d-flex">
                                                    <!-- Post Author -->
                                                    <div class="post-author">
                                                        <a href="#"><%# Eval("bloggerName") %></a>
                                                    </div>
                                                    <!-- Post Date -->
                                                    <div class="post-date">
                                                        <a href="#"><%# Eval("blogDate","{0:dd MMM yyyy}") %></a>
                                                    </div>
                                                </div>
                                                <!-- Post Comment & Share Area -->
                                                <div class="post-comment-share-area d-flex">
                                                    <!-- Post Favourite -->
                                                    <div class="post-favourite">
                                                        <a href="#"><i class="fa fa-eye" aria-hidden="true"></i><%# Eval("blogReads") %></a>
                                                    </div>
                                                    <!-- Post Comments -->
                                                    <div class="post-comments">
                                                        <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i><%# Eval("blogCommentReads") %></a>
                                                    </div>
                                                    <!-- Post Share -->
                                                    <div class="post-share">
                                                        <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href="#">
                                                <h2 class="post-headline"><%# Eval("blogBaslik") %></h2>
                                            </a>
                                            <p style="word-break:break-all;"><%#Eval("blogDetail")%></p>

                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>


                            <!-- Tags Area -->
                            <div class="tags-area">
                                <a href="#">Multipurpose</a>
                                <a href="#">Design</a>
                                <a href="#">Ideas</a>
                            </div>

                            <!-- Related Post Area -->
                            <div class="related-post-area section_padding_50">
                                <h4 class="mb-30">İlgili Bloglar</h4>

                                <div class="related-post-slider owl-carousel">
                                    <!-- Single Related Post-->
                                    <asp:Repeater ID="RepeaterRandom" runat="server">
                                        <ItemTemplate>
                                            <div class="single-post">
                                                <!-- Post Thumb -->
                                                <div class="post-thumb">
                                                    <asp:Image runat="server" Height="135px" ImageUrl='<%# Eval("blogimageURL") %>' />
                                                </div>
                                                <!-- Post Content -->
                                                <div class="post-content">
                                                    <div class="post-meta d-flex">
                                                        <div class="post-author-date-area d-flex">
                                                            <!-- Post Author -->
                                                            <div class="post-author">
                                                                <a href="#"><%# Eval("bloggerName") %></a>
                                                            </div>
                                                            <!-- Post Date -->
                                                            <div class="post-date">
                                                                <a href="#"><%# Eval("blogDate","{0:dd MMM yyyy}") %></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <a href='<%# Eval("blogID","singlepost.aspx?blogID={0}") %>'>
                                                        <h6><%# Eval("blogBaslik") %></h6>
                                                    </a>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>


                                </div>
                            </div>

                            <!-- Comment Area Start -->



                            <div class="comment_area section_padding_50 clearfix">

                                <h4 class="mb-30" style="text-align:center;">Bloga Yapılan Yorumlar</h4>
                                <hr />
                                <div class="some-list">
                                    <ol>
                                        <!-- Single Comment Area -->
                                        <asp:Repeater ID="RepeaterSonYorum" runat="server">
                                            <ItemTemplate>
                                                <li class="single_comment_area">
                                                    <div class="comment-wrapper d-flex">
                                                        <!-- Comment Meta -->
                                                        <div class="comment-author">
                                                            <asp:Image runat="server" ImageUrl='<%# Eval("personimageURL") %>' />
                                                        </div>
                                                        <!-- Comment Content -->
                                                        <div class="comment-content">
                                                            <span class="comment-date text-muted"><%# Eval("commentDate","{0:dd MMM yyyy}") %></span>
                                                            <h5><%# Eval("AD SOYAD")%> </h5>
                                                            <p><%# Eval("commentContent") %></p>
                                                            <a href="#">Like</a>
                                                            <a class="active" href="#">Reply</a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>


                                        <%--<asp:Repeater ID="RepeaterSonIki" runat="server">
                                        <ItemTemplate>
                                            <li class="single_comment_area">
                                                <div class="comment-wrapper d-flex">
                                                    <!-- Comment Meta -->
                                                    <div class="comment-author">
                                                        <asp:Image runat="server" ImageUrl='<%# Eval("personimageURL") %>' />
                                                    </div>
                                                    <!-- Comment Content -->
                                                    <div class="comment-content">
                                                        <span class="comment-date text-muted"><%# Eval("commentDate","{0:dd MMM yyyy}") %></span>
                                                        <h5><%# Eval("AD SOYAD")%> </h5>
                                                        <p><%# Eval("commentContent") %></p>
                                                        <a href="#">Like</a>
                                                        <a class="#" href="#">Reply</a>
                                                    </div>
                                                </div>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                    <asp:Repeater ID="RepeaterSonUc" runat="server">
                                        <ItemTemplate>
                                            <li class="single_comment_area">
                                                <div class="comment-wrapper d-flex">
                                                    <!-- Comment Meta -->
                                                    <div class="comment-author">
                                                        <asp:Image runat="server" ImageUrl='<%# Eval("personimageURL") %>' />
                                                    </div>
                                                    <!-- Comment Content -->
                                                    <div class="comment-content">
                                                        <span class="comment-date text-muted"><%# Eval("commentDate","{0:dd MMM yyyy}") %></span>
                                                        <h5><%# Eval("AD SOYAD")%> </h5>
                                                        <p><%# Eval("commentContent") %></p>
                                                        <a href="#">Like</a>
                                                        <a class="#" href="#">Reply</a>
                                                    </div>
                                                </div>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>--%>
                                    </ol>
                                </div>
                            </div>

                            <br />

                            <!-- Leave A Comment -->

                            <div class="container" style="border: 2px solid #e9ecef; padding: 35px;">
                                <div class="row justify-content-center">
                                    <div class="col-md-12">


                                        <h4 style="text-align: center;">Yorum Yap</h4>
                                        <hr />



                                        <!-- Comment Form -->

                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtname" CssClass="col-md-2 control-label">Adınız :</asp:Label>
                                            <div>
                                                <%-- <asp:TextBox runat="server" ID="AGE1" CssClass="form-control"  />--%>

                                                <dx:ASPxTextBox ID="txtname" runat="server" CssClass="form-control" ClientEnabled="false"></dx:ASPxTextBox>

                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtname" CssClass="col-md-4 control-label">Soyadınız :</asp:Label>
                                            <div>

                                                <%-- <asp:TextBox runat="server" ID="AGE1" CssClass="form-control"  />--%>

                                                <dx:ASPxTextBox ID="txtSurname" runat="server" CssClass="form-control" ClientEnabled="false"></dx:ASPxTextBox>

                                            </div>
                                        </div>




                                        <div class="form-group">
                                            <%--<asp:Label runat="server" AssociatedControlID="TextAreaDetail" CssClass="col-md-2 control-label">Blog Detay :</asp:Label>--%>
                                            <div>
                                                <asp:Label ID="lblBlogDetay" runat="server" Text="Yorum İçerik:"></asp:Label>
                                                <textarea id="TextAreaDetail" cols="10" rows="6" class="form-control" runat="server"></textarea>

                                                <%-- <asp:TextBox runat="server" ID="KG" CssClass="form-control"  />--%>
                                                <%-- <asp:RequiredFieldValidator runat="server" ControlToValidate="TextAreaDetail"
                                                                                    CssClass="text-danger" ErrorMessage="LÜTFEN BLOG DETAYINIZI GİRİNİZ" />--%>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DOBcomment" CssClass="col-md-4 control-label">Yorum Tarihi :</asp:Label>
                                            <div>
                                                <%-- <asp:TextBox runat="server" ID="AGE1" CssClass="form-control"  />--%>

                                                <dx:ASPxDateEdit ID="DOBcomment" runat="server" CssClass="form-control"></dx:ASPxDateEdit>

                                            </div>
                                        </div>



                                        <div class="form-group">
                                            <dx:ASPxButton ID="btnYorumGonder" runat="server" Text="Yorum Gönder" CssClass="btnBlog" OnClick="btnYorumGonder_Click"></dx:ASPxButton>

                                            <asp:Label ID="SONUC" runat="server" Text=""></asp:Label>
                                        </div>



                                    </div>
                                </div>
                            </div>



                        </div>
                    </div>
                </div>

                <!-- ****** Blog Sidebar ****** -->
                <div class="col-12 col-sm-8 col-md-6 col-lg-4">
                    <div class="blog-sidebar mt-5 mt-lg-0">
                        <!-- Single Widget Area -->
                        <div class="single-widget-area about-me-widget text-center">
                            <div class="widget-title">
                                <h6>Hakkımızda</h6>
                            </div>
                            <div class="about-me-widget-thumb">
                                <img src="img/about-img/1.jpg" alt="">
                            </div>
                            <h4 class="font-shadow-into-light">Furkan Beşoğlu</h4>
                            <p>Ben Yazılım,Macerama 2019 da başladım ve çok sevdim ondan öncede ilgi duyuyordum zaten kendi geliştirmek için çok proje yaptım sonra aklıma. </p>
                        </div>

                        <!-- Single Widget Area -->
                        <div class="single-widget-area subscribe_widget text-center">
                            <div class="widget-title">
                                <h6>Bizi Buralardan Takip Edebilirsiniz</h6>
                            </div>
                            <div class="subscribe-link">
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-google" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a>
                            </div>
                        </div>

                        <!-- Single Widget Area -->
                        <div class="single-widget-area popular-post-widget">
                            <div class="widget-title text-center">
                                <h6>Popüler Bloglar</h6>
                            </div>
                            <!-- Single Popular Post -->
                            <asp:Repeater ID="RepeaterRandomIki" runat="server">
                                <ItemTemplate>
                                    <div class="single-populer-post d-flex">
                                        <asp:Image runat="server" Height="100px" ImageUrl='<%# Eval("blogimageURL") %>' />
                                        <div class="post-content">
                                            <a href='<%# Eval("blogID","singlepost.aspx?blogID={0}") %>'>
                                                <h6><%# Eval("blogBaslik") %></h6>
                                            </a>
                                            <p><%# Eval("blogDate","{0:dd MMM yyyy}") %></p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <!-- Single Widget Area -->
                            <div class="single-widget-area add-widget text-center">
                                <div class="add-widget-area">
                                    <img src="img/sidebar-img/6.jpg" alt="">
                                    <div class="add-text">
                                        <div class="yummy-table">
                                            <div class="yummy-table-cell">
                                                <h2>Cooking Book</h2>
                                                <p>Buy Book Online Now!</p>
                                                <a href="#" class="add-btn">Buy Now</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Widget Area -->
                            <div class="single-widget-area newsletter-widget">
                                  <div class="widget-title text-center">
                                    <h6>Ziyaretçi ve Online Üye Sayacı</h6>
                                </div>
                                <p style="text-align:center; font-size:medium;">Ziyaretçi Sayımız</p>
                                <hr />
                                <div class="newsletter-form">
                                    <!-- Sayaclar.com Code Start  -->
                                    <div align="center">
                                        <script language="Javascript" src="http://sa.sayaclar.com/c/s4.php?a=ayl4eru&s=2a2"></script>
                                    </div>
                                    <!-- Sayaclar.com Code End -->
                                    <br />
                                    <!-- OnlineKisi.com Code Start  -->
                                    <p style="text-align:center; font-size:medium;">Online Üye Sayımız</p>
                                    <hr />
                                    <div style="margin-left:35%;">
                                        <script>var _q = "ymw591";</script>
                                        <script language="Javascript" src="http://oa.onlinekisi.com/i/ok3.js"></script>
                                        <!-- OnlineKisi.com Code End  -->
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ****** Single Blog Area End ****** -->

    <!-- ****** Instagram Area Start ****** -->
    <div class="instargram_area owl-carousel section_padding_100_0 clearfix" id="portfolio">

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/1.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/2.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/3.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/4.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/5.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/6.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/1.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/2.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
