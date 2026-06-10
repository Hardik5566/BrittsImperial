<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

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

    <div class="contact-info-area default-padding">
        <div class="container">
            <div class="contact-info text-center">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="item">
                            <div class="icon"><i class="flaticon-call"></i></div>
                            <div class="info"><h4>Call Us</h4><span>[Phone Number]</span></div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="item">
                            <div class="icon"><i class="flaticon-location"></i></div>
                            <div class="info"><h4>Address</h4><span>[Campus Address]</span></div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="item">
                            <div class="icon"><i class="flaticon-email"></i></div>
                            <div class="info"><h4>Email Us</h4><span>info@brittsimperial.edu.au</span></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row contact-bottom-info" style="margin-top:20px;">
                <div class="maps-form">
                    <div class="col-md-8 col-md-offset-2 form">
                        <div class="heading"><h4>Send an Enquiry</h4></div>
                        <asp:Panel ID="pnlMessage" runat="server" Visible="false" CssClass="alert" style="margin-bottom:20px;"></asp:Panel>
                        <div class="contact-form">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Your Name *"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" CssClass="txt_error" Display="Dynamic" ValidationGroup="Contact" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Your Email *" TextMode="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="txt_error" Display="Dynamic" ValidationGroup="Contact" />
                                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid email format" CssClass="txt_error" Display="Dynamic" ValidationGroup="Contact" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Phone Number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="">Course of Interest</asp:ListItem>
                                            <asp:ListItem Value="BSB30120">BSB30120 – Certificate III in Business</asp:ListItem>
                                            <asp:ListItem Value="BSB40120">BSB40120 – Certificate IV in Business</asp:ListItem>
                                            <asp:ListItem Value="BSB50120">BSB50120 – Diploma of Business</asp:ListItem>
                                            <asp:ListItem Value="BSB50420">BSB50420 – Diploma of Leadership and Management</asp:ListItem>
                                            <asp:ListItem Value="BSB60120">BSB60120 – Advanced Diploma of Business</asp:ListItem>
                                            <asp:ListItem Value="General">General Enquiry</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group comments">
                                        <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" placeholder="Your Message *"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="Message is required" CssClass="txt_error" Display="Dynamic" ValidationGroup="Contact" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Send Message" CssClass="btn btn-theme effect btn-md" OnClick="btnSubmit_Click" ValidationGroup="Contact" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row" style="margin-top:50px;">
                <div class="col-md-12 text-center">
                    <p style="color:var(--bi-slate);">Britts Imperial College Australia Pty Ltd | RTO Code 5015 | ABN 18 072 105 161</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
