<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="Web_Programlama.Grafikler" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <table class="table table-bordered table-hover">
            <tr>
                <td>
                    <center><p><b>MATEMATİK DERSİ NOT DAĞILIMI</b></p></center> 
                    <asp:Chart ID="Chart1" runat="server" Width="500px">
                        <series>
                            <asp:Series Name="Notlar" ChartType="Line">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
                <td>
                    <center><p><b>ÖĞRENCİLERİN CİNSİYET DAĞILIMI</b></p></center> 
                    <asp:Chart ID="Chart2" runat="server" Width="500px">
                        <series>
                            <asp:Series Name="Cinsiyet" ChartType="Bubble" YValuesPerPoint="4">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td>
                    <center><p><b>HER BRANŞTAKİ ÖĞRETMEN SAYISI</b></p></center> 
                    <asp:Chart ID="Chart3" runat="server" Width="500px">
                        <series>
                            <asp:Series Name="DersAd" ChartType="Bar">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
                <td>
                   <center><p><b>DERSLERE AİT ÖĞRENCİ SAYISI</b></p></center> 
                    
                    <asp:Chart ID="Chart4" runat="server" Width="500px">
                        <series>
                            <asp:Series Name="Dersler">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
