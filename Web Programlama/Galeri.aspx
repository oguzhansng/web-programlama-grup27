<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Galeri.aspx.cs" Inherits="Web_Programlama.Galeri" %>

<%@ Register Assembly="DevExpress.Web.v20.2, Version=20.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    

    <form id="form1" runat="server">
        <dx:ASPxImageGallery ID="ASPxImageGallery1" runat="server" DataSourceID="SqlDataSource1" ImageUrlField="OgrFotograf" EnableTheming="True" Theme="MetropolisBlue" ThumbnailHeight="300px">
            <SettingsFolder ImageCacheFolder="~/Thumb/" />
            <Items>
                <dx:ImageGalleryItem ImageUrl="Link Girin">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem>
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem>
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem>
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem>
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem>
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem>
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem>
                </dx:ImageGalleryItem>
            </Items>
            <SettingsTableLayout RowsPerPage="2" />
        </dx:ASPxImageGallery>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ 
            ConnectionStrings:WebProjeDbConnectionString %>" SelectCommand="SELECT 
            [OGRFOTOGRAF] FROM [TBL_OGRENCI]"></asp:SqlDataSource>
    </form>

    

</asp:Content>
