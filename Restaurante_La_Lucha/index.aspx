<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Restaurante.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="banner full">
        <article>
            <img src="assets/images/slide01.jpg" alt="" />
            <div class="inner">
                <header>
                    <p>La Lucha</p>
                    <h2>Sanguchería</h2>
                </header>
            </div>
        </article>
        <article>
            <img src="assets/images/slide02.jpg" alt="" />
            <div class="inner">
                <header>
                    <p>EL MEJOR SABOR</p>
                    <h2>Como en casa</h2>
                </header>
            </div>
        </article>
        <article>
            <img src="assets/images/slide03.jpg" alt="" />
            <div class="inner">
                <header>
                    <p>LOS MEJORES PRECIOS</p>
                    <h2>Para tu estómago</h2>
                </header>
            </div>
        </article>
        <article>
            <img src="assets/images/slide04.jpg" alt="" />
            <div class="inner">
                <header>
                    <p>EN EL MEJOR LUGAR</p>
                    <h2>Para tu familia</h2>
                </header>
            </div>
        </article>
        <article>
            <img src="assets/images/slide05.jpg" alt="" />
            <div class="inner">
                <header>
                    <p>DONDE TODOS SALEN</p>
                    <h2>Satisfechos</h2>
                </header>
            </div>
        </article>
    </section>
    <!-- One -->
    <section id="one" class="wrapper style2">
        <div class="inner">
            <div class="grid-style">
                <div>
                    <div class="box">
                        <div class="image fit">
                            <img src="assets/images/1.jpg" alt="" width="10" height="300" />
                        </div>
                        <div class="content">
                            <header class="align-center">
                                <p>nuestros locales son</p>
                                <h2>los más acogedores</h2>
                            </header>
                            <p>Dentro de los locales de la lucha, podrás disfrutar de un cómodo y acogedor ambiente, en el cual se puede pasar un momento perfecto con cualquier compañia.</p>
                            <footer class="align-center">
                                <a href="#" class="button alt">Learn More</a>
                            </footer>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="box">
                        <div class="image fit">
                            <img src="assets/images/2.jpg" alt="" width="50" height="300" />
                        </div>
                        <div class="content">
                            <header class="align-center">
                                <p>nuestros cocineros</p>
                                <h2>preparan los mejores sanguches</h2>
                            </header>
                            <p> los productos que vendemos son de la mejor calidad y a un buen precio, contamos con un variado menú para poder satisfacer las necesidades de todos nuestros clientes</p>
                            <footer class="align-center">
                                <a href="#" class="button alt">Learn More</a>
                            </footer>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Two -->
    <section id="two" class="wrapper style3">
        <div class="inner">
            <header class="align-center">
                <p>No te pierdas la oportunidad</p>
                <h2>y ven a probar nuestra comida</h2>
            </header>
        </div>
    </section>
    <!-- Three -->
    <section id="three" class="wrapper style2">
        <div class="inner">
            <header class="align-center">
                <p class="special">cada pedido es especial para nosotros</p>
                <h2>por eso los clientes vuelven</h2>
            </header>
        </div>
    </section>
</asp:Content>
