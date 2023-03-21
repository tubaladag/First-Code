<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="EntityFramework_23_02_23.Urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Ürünler Sayfası</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
   
    <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h1>Ürün Listesi</h1>
                </div>
                <div class="col-md-6">
                   <p class="text-end mt-3"> <a href="KategoriEkle.aspx" class="btn btn-info">Yeni Kategori Ekle</a></p>
                </div>
            </div>
            <p>
                <asp:Label ID="lblBilgi" runat="server" ></asp:Label>
            </p>

            <div class="row">
                <div class="col-md-12">
                    <table class="table table-hover">
           
            <asp:Repeater ID="rptListe" runat="server">
                <HeaderTemplate>
                    <thead>
                        <tr>
                            <td>Ürün Adı</td>
                            <td>Kategori Adı</td>
                            <td>Tedarikçi</td>
                            <td>Birim Fiyat</td>
                            <td>Stok Adedi</td>
                            <td align="right">İşlemler</td>
                        </tr>
                    </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("ProductName") %></td>
                        <td><%#Eval("CategoryID") %></td>
                        <td><%#Eval("SupplierID") %></td>
                        <td><%#Eval("UnitPrice") %></td>
                        <td><%#Eval("UnitsInStock") %></td>
                       
                        <td align="right">
                            <a href="UrunGuncelle.aspx?id=<%#Eval("ProductID") %>" class="btn btn-warning">Düzenle</a>
                            <a href="?id=<%#Eval("ProductID")%>" class="btn btn-danger" onclick="return confirm('Silme işlemini gerçekleştirmek istediğinizden emin misiniz?')">Sil</a>
                        </td>
                    </tr>
                </ItemTemplate>
                <%-- Eval => backend tarafında repeater içerisine alınan verileri okumamızı sağlar. --%>
            </asp:Repeater>
        </table>
                </div>
            </div>
        </div>
        
</asp:Content>
