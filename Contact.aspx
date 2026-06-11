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
            <div class="bi-contact-shell">
                <div class="bi-contact-cards">
                    <div class="bi-contact-card">
                        <div class="bi-contact-card-icon">
                            <i class="fas fa-phone"></i>
                        </div>
                        <h4>Phone</h4>
                        <p>
                            <a href="tel:+971067675511">+971 (06) 7675511</a><br />
                            <a href="tel:+971505626707">+971 50 562 6707</a>
                        </p>
                    </div>
                    <div class="bi-contact-card">
                        <div class="bi-contact-card-icon">
                            <i class="far fa-envelope"></i>
                        </div>
                        <h4>Email</h4>
                        <p>
                            <a href="mailto:admissions@brittsimperial.com">admissions@brittsimperial.com</a>
                        </p>
                    </div>
                    <div class="bi-contact-card">
                        <div class="bi-contact-card-icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <h4>Campus Locations</h4>
                        <p>
                            <strong>Britts Imperial Global Education</strong><br />
                            Dubai | Sharjah | Ras Al Khaimah<br />
                            United Arab Emirates
                        </p>
                    </div>
                </div>

                <div class="bi-contact-form-card">
                    <div class="bi-contact-form-heading">
                        <h3>Send an Enquiry</h3>
                        <p>Complete the form below and our admissions team will respond as soon as possible.</p>
                    </div>

                    <asp:Panel ID="pnlMessage" runat="server" Visible="false" CssClass="alert bi-contact-alert"></asp:Panel>

                    <div class="bi-contact-form">
                        <div class="bi-contact-form-grid">
                            <div class="form-group">
                                <label for="<%= txtPhone.ClientID %>">Phone</label>
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="phone number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone is required" CssClass="txt_error" Display="Dynamic" ValidationGroup="EnquiryForm" />
                            </div>
                            <div class="form-group">
                                <label for="<%= txtEmail.ClientID %>">Email</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="email address" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="txt_error" Display="Dynamic" ValidationGroup="EnquiryForm" />
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^^@\s+@^@\s+\.^@\s+$" ErrorMessage="Invalid email format" CssClass="txt_error" Display="Dynamic" ValidationGroup="EnquiryForm" />
                            </div>
                            <div class="form-group bi-contact-form-full">
                                <label for="<%= txtAddress.ClientID %>">Address</label>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="campus address"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required" CssClass="txt_error" Display="Dynamic" ValidationGroup="EnquiryForm" />
                            </div>
                            <div class="bi-contact-form-actions">
                                <asp:Button ID="btnSubmit" runat="server" Text="Send Message" CssClass="btn btn-theme effect btn-md bi-contact-submit" OnClick="btnSubmit_Click" ValidationGroup="EnquiryForm" />
                            </div>
                        </div>
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
