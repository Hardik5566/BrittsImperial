<%@ Page Title="Search" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="SiteSearchPage" %>



<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">Search</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server"></asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">

    <div class="breadcrumb-area shadow dark text-center text-light bi-page-hero">

        <div class="container">

            <h1>Search</h1>

            <ul class="breadcrumb">

                <li><a href="Default.aspx"><i class="fas fa-home"></i> Home</a></li>

                <li class="active">Search</li>

            </ul>

        </div>

    </div>



    <section class="bi-search-page">

        <div class="container">

            <div class="bi-search-form-wrap">

                <div class="bi-search-form">

                    <asp:TextBox ID="txtQuery" runat="server" CssClass="form-control" placeholder="Search courses, policies, downloads and pages..." />

                    <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-theme effect btn-md bi-search-submit" OnClick="btnSearch_Click" Text="Search" />

                </div>

            </div>



            <asp:Panel ID="pnlResults" runat="server" Visible="false">

                <p class="bi-search-summary"><asp:Literal ID="litSummary" runat="server" /></p>

                <div class="bi-search-results">

                    <asp:Repeater ID="rptResults" runat="server">

                        <ItemTemplate>

                            <article class="bi-search-result">

                                <span class="bi-search-result-cat"><%# Eval("Category") %></span>

                                <h2><a href="<%# Eval("Url") %>"><%# Eval("Title") %></a></h2>

                                <p><%# Eval("Description") %></p>

                                <a href="<%# Eval("Url") %>" class="bi-search-result-link">View <i class="fas fa-arrow-right"></i></a>

                            </article>

                        </ItemTemplate>

                    </asp:Repeater>

                </div>

            </asp:Panel>



            <asp:Panel ID="pnlEmpty" runat="server" Visible="false" CssClass="bi-search-empty">

                <i class="fas fa-search"></i>

                <h3>No results found</h3>

                <p>Try different keywords such as course code, policy, fees, enrolment or download.</p>

            </asp:Panel>



            <asp:Panel ID="pnlPrompt" runat="server" Visible="false" CssClass="bi-search-prompt">

                <p>Search across courses, policies, downloads and key pages on our website.</p>

            </asp:Panel>

        </div>

    </section>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>

