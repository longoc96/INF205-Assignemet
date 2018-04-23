<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Assignment._Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="container-fluid">

        <div id="carousel-id" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carousel-id" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-id" data-slide-to="1" class=""></li>
                <li data-target="#carousel-id" data-slide-to="2" class=""></li>
            </ol>
            <div class="carousel-inner">
                <div class="item">
                    <asp:Image ID="Image1" runat="server"
                        AlternateText="Image text" CssClass="img-responsive"
                        ImageUrl="Images/banner1.jpg" />
                    <div class="container">
                        <div class="carousel-caption">
                            <p>
                                <a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <asp:Image ID="Image2" runat="server"
                        AlternateText="Image text" CssClass="img-responsive"
                        ImageUrl="Images/banner2.jpg" />
                    <div class="container">
                        <div class="carousel-caption">

                            <p>
                                <a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="item active">
                    <asp:Image ID="Image3" runat="server"
                        AlternateText="Image text" CssClass="img-responsive"
                        ImageUrl="Images/banner3.jpg" />
                    <div class="container">
                        <div class="carousel-caption">
                            <p>
                                <a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#carousel-id" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#carousel-id" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </div>
    <div class="container">
        <h4>Product</h4>
    </div>
    <div class="container">

            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="row">
                <ItemTemplate>
                        <div class="thumbnail text-center" style="margin:10px;" >
                            <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("image")%>' CssClass="img-thumbnail"  Width="250px" Height="250px" />
                            &nbsp;<div class="caption">
                                <h4 style="font-weight:bold;">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                </h4>
                                <div class="price pull-right">
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("price", "${0}")%>'></asp:Label>
                                </div>
                                <div class="rate">
                                    <span aria-hidden="true" class="glyphicon glyphicon-star"></span><span aria-hidden="true" class="glyphicon glyphicon-star-empty"></span>
                                </div>
                                <div class="buttom">
                                    <a class="btn btn-success" runat="server" href="~/Products">Views</a> <a class="btn btn-default" href="#">Rate</a>
                                </div>
                            </div>
                        </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Top 8 [name], [price], [image] FROM [products]">
            </asp:SqlDataSource>
        </div>
</asp:Content>
