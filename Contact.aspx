<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="ContactPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">Contact Us</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <div class="breadcrumb-area shadow dark text-center text-light bi-page-hero">
        <div class="container">
            <h1>Contact Us</h1>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="fas fa-home"></i> Home</a></li>
                <li class="active">Contact Us</li>
            </ul>
        </div>
    </div>

    <div class="bi-contact-page">
        <div class="container">
            <div class="bi-contact-split">
                <div class="bi-contact-form-card">
                    <div class="bi-contact-form-heading">
                        <p class="bi-contact-eyebrow">Send an Enquiry</p>
                        <h3>Get in Touch</h3>
                        <p>Complete the form and our admissions team will respond as soon as possible.</p>
                    </div>

                    <asp:Panel ID="pnlMessage" runat="server" Visible="false" CssClass="alert bi-contact-alert"></asp:Panel>

                    <div class="bi-contact-form">
                        <div class="bi-contact-form-stack">
                            <div class="form-group">
                                <label for="<%= txtName.ClientID %>">Name</label>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Your full name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" CssClass="txt_error" Display="Dynamic" ValidationGroup="EnquiryForm" />
                            </div>
                            <div class="bi-contact-form-row">
                                <div class="form-group">
                                    <label for="<%= txtPhone.ClientID %>">Phone</label>
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Your phone number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone is required" CssClass="txt_error" Display="Dynamic" ValidationGroup="EnquiryForm" />
                                </div>
                                <div class="form-group">
                                    <label for="<%= txtEmail.ClientID %>">Email</label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Your email address" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="txt_error" Display="Dynamic" ValidationGroup="EnquiryForm" />
                                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^.+@.+\..+$" ErrorMessage="Invalid email format" CssClass="txt_error" Display="Dynamic" ValidationGroup="EnquiryForm" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="<%= txtMessage.ClientID %>">Message</label>
                                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" placeholder="Your message"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="Message is required" CssClass="txt_error" Display="Dynamic" ValidationGroup="EnquiryForm" />
                            </div>
                            <div class="bi-contact-form-actions">
                                <asp:Button ID="btnSubmit" runat="server" Text="Send Message" CssClass="btn btn-theme effect btn-md bi-contact-submit" OnClick="btnSubmit_Click" ValidationGroup="EnquiryForm" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="bi-contact-info-card">
                    <p class="bi-contact-eyebrow bi-contact-eyebrow--light">Contact Details</p>
                    <h3>We Are Here to Help</h3>
                    <p class="bi-contact-info-lead">Reach our admissions team by phone, email or visit one of our campus locations.</p>

                    <ul class="bi-contact-info-list">
                        <li>
                            <span class="bi-contact-info-icon"><i class="fas fa-phone"></i></span>
                            <div>
                                <strong>Phone</strong>
                                <a href="tel:+61405221940">+61 40 522 1940</a>
                            </div>
                        </li>
                        <li>
                            <span class="bi-contact-info-icon"><i class="far fa-envelope"></i></span>
                            <div>
                                <strong>Email</strong>
                                <a href="mailto:ceo@brittsimperial.com.au">ceo@brittsimperial.com.au</a>
                            </div>
                        </li>
                        <li>
                            <span class="bi-contact-info-icon"><i class="fas fa-map-marker-alt"></i></span>
                            <div>
                                <strong>Campus Locations</strong>
                                <span>Level 3 531 George St,</span>
                                <span>SYDNEY, NSW, 2000</span>
                            </div>
                        </li>
                    </ul>

                    <div class="bi-contact-info-badge">
                        <i class="fas fa-user-shield"></i>
                        <span>RTO Code 5015</span>
                    </div>
                </div>
            </div>

            <div class="bi-contact-footer-note text-center">
                <p>Britts Imperial College Australia Pty Ltd | RTO Code 5015 | ABN 18 072 105 161</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
