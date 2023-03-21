<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EntityFramework_23_02_23.index" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <%-- Repeater => bir koleksiyon içerisindeki verileri kullanıcı tarafında liste halinde gösterebilmek için kullanılan bir form elementidir.kendi içerisine aldığı koleksiyonları bir döngü içerisine alıp kullanıcı tarafına tamamını gösterir. --%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Ürünler Sayfası</title>
</asp:Content>

    
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h1>Kategori Listesi</h1>
                </div>
                <div class="col-md-6">
                   <p class="text-end mt-3"> <a href="KategoriEkle.aspx" class="btn btn-info">Yeni Kategori Ekle</a></p>
                </div>
                 <div class="col-md-12">
                   <p class="text-end mt-3"> <a href="LogIn.aspx" class="btn btn-info">Giriş Yap</a></p>
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
                            <td>Kategori Adı</td>
                            <td>Açıklama</td>
                            <td align="right">İşlemler</td>
                        </tr>
                    </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("CategoryName") %></td>
                        <td><%#Eval("Description") %></td>
                        <td align="right">
                            <a href="KategoriGuncelle.aspx?id=<%#Eval("CategoryID") %>" class="btn btn-warning">Düzenle</a>
                            <a href="?id=<%#Eval("CategoryID")%>" class="btn btn-danger" onclick="return confirm('Silme işlemini gerçekleştirmek istediğinizden emin misiniz?')">Sil</a>
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

