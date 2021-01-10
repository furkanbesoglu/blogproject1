<%@ Page Title="" Language="C#" MasterPageFile="~/uyesayfalari/ana.Master" AutoEventWireup="true" CodeBehind="searchpage.aspx.cs" Inherits="blogproject1.uyesayfalari.searchpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- ****** Welcome Post Area Start ****** -->
    <section class="welcome-post-sliders owl-carousel">



        <!-- Single Slide -->
        <asp:Repeater ID="RepeaterRandomTop7" runat="server">
            <ItemTemplate>
                <div class="welcome-single-slide">
                    <!-- Post Thumb -->
                    <asp:Image runat="server" ImageUrl='<%# Eval("blogimageURL") %>' Height="75%" />
                    <!-- Overlay Text -->
                    <div class="project_title">
                        <div class="post-date-commnents d-flex">
                            <a href="#"><%# Eval("blogDate","{0:dd MMM yyyy}") %></a>
                            <a href="#"><%# Eval("blogCommentReads") %> Yorum</a>
                        </div>
                        <a href='<%# Eval("blogID","singlepost.aspx?blogID={0}") %>'>
                            <h5><%# Eval("blogBaslik") %></h5>
                        </a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/bg-img/slide-2.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#">May 19, 2017</a>
                    <a href="#">5 Comment</a>
                </div>
                <a href="#">
                    <h5>“I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street</h5>
                </a>
            </div>
        </div>

        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/bg-img/slide-3.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#">May 19, 2017</a>
                    <a href="#">5 Comment</a>
                </div>
                <a href="#">
                    <h5>“I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street</h5>
                </a>
            </div>
        </div>

        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/bg-img/slide-4.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#">May 19, 2017</a>
                    <a href="#">5 Comment</a>
                </div>
                <a href="#">
                    <h5>“I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street</h5>
                </a>
            </div>
        </div>

        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/bg-img/slide-4.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#">May 19, 2017</a>
                    <a href="#">5 Comment</a>
                </div>
                <a href="#">
                    <h5>“I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street</h5>
                </a>
            </div>
        </div>

    </section>
    <!-- ****** Welcome Area End ****** -->

    <!-- ****** Categories Area Start ****** -->
    <section class="categories_area clearfix" id="about">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single_catagory wow fadeInUp" data-wow-delay=".3s">
                        <img src="img/catagory-img/1.jpg" alt="">
                        <div class="catagory-title">
                            <a href="yemekpage.aspx">
                                <h5>Yemek</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single_catagory wow fadeInUp" data-wow-delay=".6s">
                        <img src="img/catagory-img/2.jpg" alt="">
                        <div class="catagory-title">
                            <a href="gezipage.aspx">
                                <h5>Gezi</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single_catagory wow fadeInUp" data-wow-delay=".9s">
                        <img src="img/catagory-img/3.jpg" alt="">
                        <div class="catagory-title">
                            <a href="yasamtarzıpage.aspx">
                                <h5>Yaşam Tarzı</h5>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ****** Categories Area End ****** -->

    <!-- ****** Blog Area Start ****** -->
    <section class="blog_area section_padding_0_80">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="row">

                        <!-- Single Post -->
                        <asp:Repeater ID="RepeaterSon" runat="server">
                            <ItemTemplate>

                                <div class="col-12">
                                    <div class="single-post wow fadeInUp" data-wow-delay=".2s">
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
                                                        <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i><%# Eval(" blogCommentReads") %></a>
                                                    </div>
                                                    <!-- Post Share -->
                                                    <div class="post-share">
                                                        <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href='<%# Eval("blogID","singlepost.aspx?blogID={0}") %>'>
                                                <h2 class="post-headline"><%# Eval("blogBaslik") %></h2>
                                            </a>
                                            <p><%# Eval("frontContent") %></p>
                                            <a href='<%# Eval("blogID","singlepost.aspx?blogID={0}") %>' class="read-more">Devamını Oku..</a>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                        <!-- Single Post2 -->
                    

                    </div>
                </div>

                <!-- ****** Blog Area End ****** -->

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
                            <asp:Repeater ID="RepeaterRandom" runat="server">
                                <ItemTemplate>
                                    <div class="single-populer-post d-flex">
                                        <asp:Image runat="server" ImageUrl='<%# Eval("blogimageURL") %>' />
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
    <!-- ****** Blog Area End ****** -->
</asp:Content>
