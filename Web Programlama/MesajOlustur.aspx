<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="MesajOlustur.aspx.cs" Inherits="Web_Programlama.MesajOlustur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
      <form id="form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="DropDownList1" runat="server">Gönderen</asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label for="TxtAlici" runat="server">Alıcı</asp:Label>
                <asp:TextBox ID="TxtAlici" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtBaslik" runat="server">Mesaj Başlık</asp:Label>
                 <asp:TextBox ID="TxtBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

             <br />
            <div>
                <asp:Label for="TxtIcerik" runat="server">Mesaj İçerik</asp:Label>
                <textarea id="TxtIcerik" cols="20" rows="6" class="form-control" runat="server"></textarea>
            </div>
            </div>
          <asp:Button ID="BtnGonder" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info" OnClick="BtnGonder_Click"  />
          </form>

</asp:Content>
