<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="KategoriGuncelle.aspx.cs" Inherits="EntityFramework_23_02_23.KategoriGuncelle" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Kategori Güncelle Sayfası</title>
        <link href="StyleSheet1.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Kategori Güncelle</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">

                    <div class="mb-3">
                        <label class="form-label">Kategori Adı</label>
                        <asp:TextBox ID="txtKategoriAdi" CssClass="form-control" runat="server"></asp:TextBox>
                        <!--Textbox,checkbox,dropdown,radiobutton gibi form elementleri için boş bırakılma durumuna karşılık kullanabilirisiniz.Mekanizmanın geçerli olması için sayfanın başına "UnobtrusiveValidationMode="None"" parametresi eklenmesi gerekmektedir.  -->
                       <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKategoriAdi" ErrorMessage="Boş Bırakılamaz." CssClass="error"></asp:RequiredFieldValidator>--%>

                    </div>
                    <div class="mb-3">
                        <label class="form-label">Açıklama</label>
                        <asp:TextBox ID="txtAciklama" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Kaydet" OnClick="Button1_Click" />

                    <div class="row">
                        <div class="col-md-12">
                            <asp:Label ID="lblBilgi" runat="server"></asp:Label>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </asp:Content>

