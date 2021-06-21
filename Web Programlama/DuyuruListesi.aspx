<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="Web_Programlama.DuyuruListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">İÇERİK</th>
            <th scope="col">ÖĞRETMEN</th>
            <th scope="col">İŞLEMLER</th>


        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">


                <ItemTemplate>
                    <tr>
                        <td><%#Eval("DUYURUID")%></td>
                        <td><%#Eval("DUYURUBASLIK")%></td>
                        <td><%#Eval("DUYURUICERIK")%></td>
                        <td><%#Eval("DUYURUOGRT")%></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%#"DuyuruSil.aspx?DuyuruID="+Eval("DuyuruID") %>' ID="HyperLink1"  CssClass="btn btn-danger" runat="server">SİL</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%#"DuyuruGuncelle.aspx?DuyuruID="+Eval("DuyuruID") %>' ID="HyperLink2"  CssClass="btn btn-success" runat="server">GÜNCELLE</asp:HyperLink>
                        </td>

                    </tr>

                </ItemTemplate>
               
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

<%-- NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+Eval("OGRID") %>'--%>
