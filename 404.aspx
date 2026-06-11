<%@ Page Title="Page Not Found" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="404.aspx.cs" Inherits="_404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">Page Not Found</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <div class="breadcrumb-area shadow dark text-center text-light bi-page-hero">
        <div class="container"><h1>404</h1></div>
    </div>
    <div class="error-page-area default-padding">
        <div class="container">
            <div class="error-items">
                <div class="row">
                    <div class="col-md-6">
                        <div class="thumb">
                            <img src="assets/img/404.svg" alt="Page not found">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="error-box">
                            <h1>404</h1>
                            <h2>Sorry, Page Was Not Found!</h2>
                            <p>The page you are looking for does not exist or has been moved.</p>
                            <div class="bi-btn-group">
                                <a href="Default.aspx" class="btn btn-theme effect btn-md">Back to Home</a>
                                <a href="Contact.aspx" class="btn btn-dark border btn-md">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
