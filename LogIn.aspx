﻿<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="EntityFramework_23_02_23.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <link href="StyleSheet5.css" rel="stylesheet" />

    <link href="StyleSheet2.css" rel="stylesheet" />

    <link href="StyleSheet3.css" rel="stylesheet" />

    <link href="StyleSheet4.css" rel="stylesheet" />
    <script nonce="5dee51f6-05c1-4cb8-97e5-3edf53b5c923">(function (w, d) { !function (bv, bw, bx, by) { bv[bx] = bv[bx] || {}; bv[bx].executed = []; bv.zaraz = { deferred: [], listeners: [] }; bv.zaraz.q = []; bv.zaraz._f = function (bz) { return function () { var bA = Array.prototype.slice.call(arguments); bv.zaraz.q.push({ m: bz, a: bA }) } }; for (const bB of ["track", "set", "debug"]) bv.zaraz[bB] = bv.zaraz._f(bB); bv.zaraz.init = () => { var bC = bw.getElementsByTagName(by)[0], bD = bw.createElement(by), bE = bw.getElementsByTagName("title")[0]; bE && (bv[bx].t = bw.getElementsByTagName("title")[0].text); bv[bx].x = Math.random(); bv[bx].w = bv.screen.width; bv[bx].h = bv.screen.height; bv[bx].j = bv.innerHeight; bv[bx].e = bv.innerWidth; bv[bx].l = bv.location.href; bv[bx].r = bw.referrer; bv[bx].k = bv.screen.colorDepth; bv[bx].n = bw.characterSet; bv[bx].o = (new Date).getTimezoneOffset(); if (bv.dataLayer) for (const bI of Object.entries(Object.entries(dataLayer).reduce(((bJ, bK) => ({ ...bJ[1], ...bK[1] }))))) zaraz.set(bI[0], bI[1], { scope: "page" }); bv[bx].q = []; for (; bv.zaraz.q.length;) { const bL = bv.zaraz.q.shift(); bv[bx].q.push(bL) } bD.defer = !0; for (const bM of [localStorage, sessionStorage]) Object.keys(bM || {}).filter((bO => bO.startsWith("_zaraz_"))).forEach((bN => { try { bv[bx]["z_" + bN.slice(7)] = JSON.parse(bM.getItem(bN)) } catch { bv[bx]["z_" + bN.slice(7)] = bM.getItem(bN) } })); bD.referrerPolicy = "origin"; bD.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(bv[bx]))); bC.parentNode.insertBefore(bD, bC) };["complete", "interactive"].includes(bw.readyState) ? zaraz.init() : bv.addEventListener("DOMContentLoaded", zaraz.init) }(w, d, "zarazData", "script"); })(window, document);</script>
</head>
<body class="hold-transition login-page">
    <form id="form1" runat="server">
    
        

        <div class="card">
            <div class="card-body login-card-body">
                <p class="login-box-msg">GİRİŞ EKRANI</p>
                <formaction="../../index3.html" method="post">
                    <div class="input-group mb-3">
                        <input type="email" id="email" class="form-control" placeholder="Kullanıcı Adı">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <input type="password" id="sifre" class="form-control" placeholder="Şifre">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="icheck-primary">
                                <input type="checkbox" id="remember">
                                <label for="remember">
                                   Beni Hatırla
                                </label>
                            </div>
                        </div>

                        <div class="col-4">
                            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" class="btn btn-primary btn-block" OnClick="Button1_Click" />
                           
                        </div>

                    </div>
                </div>
                

                <p class="mb-1">
                    <a href="forgot-password.html">Şifremi Unuttum</a>
                </p>
                <p class="mb-0">
                    <a href="register.html" class="text-center">Üye Ol</a>
                </p>
           

    <script src="../../plugins/jquery/jquery.min.js"></script>

    <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="../../dist/js/adminlte.min.js?v=3.2.0"></script>
        <asp:Literal ID="mesaj" runat="server"></asp:Literal>
                </form>
                

                </body>
</html>
