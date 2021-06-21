<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="Web_Programlama.DersListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">DERS ID</th>
            <th scope="col">DERS ADI</th>
          
            <th scope="col">İŞLEMLER</th>


        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">


                <ItemTemplate>
                    <tr>
                        <td><%#Eval("DERSID")%></td>
                        <td><%#Eval("DERSAD")%></td>
                       
                        <td>
                            <asp:HyperLink NavigateUrl='<%#"DersSil.aspx?DERSID="+Eval("DERSID") %>' ID="HyperLink1"  CssClass="btn btn-danger" runat="server">SİL</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%#"DersGuncelle.aspx?DERSID="+Eval("DERSID") %>' ID="HyperLink2"  CssClass="btn btn-success" runat="server">GÜNCELLE</asp:HyperLink>
                        </td>

                    </tr>

                </ItemTemplate>
               
            </asp:Repeater>

            
        </tbody>
    </table>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DersEkle.aspx" CssClass="btn btn-info">Ders Ekle</asp:HyperLink>
</asp:Content>
