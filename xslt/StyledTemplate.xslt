﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="Menu">
      <html lang="en">

        <head>
          <meta charset="utf-8"></meta>
          <meta content="width=device-width, initial-scale=1.0" name="viewport"></meta>

          <title>Restaurantly Bootstrap Template - Index</title>
          <meta content="" name="description"></meta>
          <meta content="" name="keywords"></meta>

          <!-- Favicons -->
          <link href="assets/img/favicon.png" rel="icon"></link>
          <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"></link>

          <!-- Google Fonts -->
          <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"></link>

          <!-- Vendor CSS Files -->
          <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet"></link>
          <link href="assets/vendor/aos/aos.css" rel="stylesheet"></link>
          <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"></link>
          <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"></link>
          <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet"></link>
          <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet"></link>
          <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet"></link>

          <!-- Template Main CSS File -->
          <link href="assets/css/style.css" rel="stylesheet"></link>

          <!-- =======================================================
  * Template Name: Restaurantly - v3.1.0
  * Template URL: https://bootstrapmade.com/restaurantly-restaurant-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
        </head>

        <body>

          <!-- ======= Top Bar ======= -->
          <div id="topbar" class="d-flex align-items-center fixed-top">
            <div class="container d-flex justify-content-center justify-content-md-between">

              <div class="contact-info d-flex align-items-center">
                <i class="bi bi-phone d-flex align-items-center">
                  <span>+1 5589 55488 55</span>
                </i>
                <i class="bi bi-clock d-flex align-items-center ms-4">
                  <span> Mon-Sat: 11AM - 23PM</span>
                </i>
              </div>

              <div class="languages d-none d-md-flex align-items-center">
                <ul>
                  <li>En</li>
                  <li>
                    <a href="#">De</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <!-- ======= Header ======= -->
          <header id="header" class="fixed-top d-flex align-items-cente">
            <div class="container-fluid container-xl d-flex align-items-center justify-content-lg-between">

              <h1 class="logo me-auto me-lg-0">
                <a href="index.html">Restaurantly</a>
              </h1>
              <!-- Uncomment below if you prefer to use an image logo -->
              <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

              <nav id="navbar" class="navbar order-last order-lg-0">
                <ul>
                  <xsl:for-each select="Opciones/Opcion">
                    <li>
                      <xsl:choose>
                        <xsl:when test="@Id = 1">
                          <a class="nav-link scrollto active" href="{@Url}">
                            <xsl:value-of select="@Texto"/>
                          </a>
                        </xsl:when>
                        <xsl:otherwise>
                          <a class="nav-link scrollto" href="{@Url}">
                            <xsl:value-of select="@Texto"/>
                          </a>
                        </xsl:otherwise>
                      </xsl:choose> 
                    </li>
                  </xsl:for-each>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
              </nav>
              <!-- .navbar -->
              <a href="#book-a-table" class="book-a-table-btn scrollto d-none d-lg-flex">Book a table</a>

            </div>
          </header>
          <!-- End Header -->

          <!-- ======= Hero Section ======= -->
          <section id="hero" class="d-flex align-items-center">
            <div class="container position-relative text-center text-lg-start" data-aos="zoom-in" data-aos-delay="100">
              <div class="row">
                <div class="col-lg-8">
                  <h1>
                    Bienvenido a 
                    <span>
                      <xsl:value-of select="Datos/NombreRestaurant"/>
                    </span>
                  </h1>
                  <h2>
                    <xsl:value-of select="Datos/Descripcion"/>
                  </h2>

                  <div class="btns">
                    <a href="#menu" class="btn-menu animated fadeInUp scrollto">Nuestro Menu</a>
                    
                  </div>
                </div>
                <div class="col-lg-4 d-flex align-items-center justify-content-center position-relative" data-aos="zoom-in" data-aos-delay="200">
                  <a href="https://www.youtube.com/watch?v=GlrxcuEDyF8" class="glightbox play-btn"></a>
                </div>

              </div>
            </div>
          </section>
          <!-- End Hero -->
          
          <!-- ====== Choose Section =====-->
         <!-- <xsl:choose>
            <xsl:when test="$TipoMenu = 0">
              <xsl:call-template name="Home"></xsl:call-template>
            </xsl:when>
            <xsl:when test="$TipoMenu = 1">
              <xsl:call-template name="Carta"></xsl:call-template>
            </xsl:when>
            <xsl:when test="$TipoMenu = 2">
              <xsl:call-template name="Contacto"></xsl:call-template>
            </xsl:when>
            <xsl:when test="$TipoMenu = 3">
              <xsl:call-template name="PlayRoom"></xsl:call-template>
            </xsl:when>
            <xsl:otherwhise>
              <xsl:call-template name="Home"></xsl:call-template>
            </xsl:otherwhise>
          </xsl:choose> -->

          <!-- ====== End Choose Section =====-->

          <main id="main">

            <!-- ======= About Section ======= -->
            <section id="about" class="about">
              <div class="container" data-aos="fade-up">

                <div class="row">
                  <div class="col-lg-6 order-1 order-lg-2" data-aos="zoom-in" data-aos-delay="100">
                    <div class="about-img">
                      <img src="assets/img/about.jpg" alt=""></img>
                    </div>
                  </div>
                  <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
                    <h3>Voluptatem dignissimos provident quasi corporis voluptates sit assumenda.</h3>
                    <p class="fst-italic">
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                      magna aliqua.
                    </p>
                    <ul>
                      <li>
                        <i class="bi bi-check-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.
                      </li>
                      <li>
                        <i class="bi bi-check-circle"></i> Duis aute irure dolor in reprehenderit in voluptate velit.
                      </li>
                      <li>
                        <i class="bi bi-check-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.
                      </li>
                    </ul>
                    <p>
                      Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                      velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                      culpa qui officia deserunt mollit anim id est laborum
                    </p>
                  </div>
                </div>

              </div>
            </section>
            <!-- End About Section -->

            <!-- ======= Why Us Section ======= -->
            <section id="why-us" class="why-us">
              <div class="container" data-aos="fade-up">

                <div class="section-title">
                  <h2>Platillos</h2>
                  <p>Nuestros Platillos</p>
                </div>

                <div class="row">

                  <xsl:for-each select="Platillos/Tipo[@Nombre != 'Bebidas']/Platillo[@Orden=1]">
                    <div class="col-lg-4">
                      <div class="box" data-aos="zoom-in" data-aos-delay="100">

                        <div class="section-title">
                          <h2>
                            <xsl:value-of select="../@Nombre"/>
                          </h2>
                        </div>
                        <br></br>

                        <img src="{Imagen}" alt="{Imagen}" style="width:100%; height:auto;"></img>
                        <br></br>
                        <h4>
                          <span style="display:contents;">
                            <xsl:value-of select="substring(@Nombre, 1, 1)"/>
                          </span>
                          <xsl:value-of select="substring(@Nombre, 2, string-length(@Nombre))"/>
                        </h4>
                        <h5>
                          <xsl:value-of select="Precio"/>
                        </h5>
                        <p>
                          <xsl:value-of select="Descripcion"/>
                        </p>

                      </div>
                    </div>
                  </xsl:for-each>

                </div>

              </div>
            </section>
            <!-- End Why Us Section -->

            <!-- ======= Events Section ======= -->
            <section id="events" class="events">
              <div class="container" data-aos="fade-up">

                <div class="section-title">
                  <h2>Especialidades</h2>
                  <p>Conoce nuestros platillos especiales</p>
                </div>

                <div class="events-slider swiper-container" data-aos="fade-up" data-aos-delay="100">
                  <div class="swiper-wrapper">

                    <xsl:for-each select="Platillos/Tipo/Platillo[@Especialidad= 'SI']">
                      <div class="swiper-slide">
                        <div class="row event-item">
                      <div class="col-lg-6">
                        <img src="{Imagen[position()=1]}" class="img-fluid" alt="{Imagen[position()=1]}"></img>
                      </div>
                      <div class="col-lg-6 pt-4 pt-lg-0 content">
                        <h3>
                          <xsl:value-of select="@Nombre"/>
                        </h3>
                        <div class="price">
                          <p>
                            <span>
                              <xsl:value-of select="Price"/>
                            </span>
                          </p>
                        </div>

                        <p class="fst-italic">
                          <xsl:value-of select="TextoEspecial"/>
                        </p>

                        <div class="col-lg-12">
                          <div class="col-lg-12">
                            <div class="col-lg-6 pt-4 pt-lg-0 content">
                              <h3>
                                <xsl:value-of select="Ingredientes/Ingrediente[position()=1]/@Nombre"/>
                              </h3>

                              <p>
                                <xsl:value-of select="Ingredientes/Ingrediente[position()=1]"/>
                              </p>

                              <img src="{Imagen[position()=2]}" class="img-fluid" alt=""></img>
                              <!--End image Item-->
                            </div>
                            
                          </div>
                          
                          <div class="col-lg-12">
                            <div class="row event-item">
                              <xsl:for-each select="Ingredientes/Ingrediente[position()>1]">
                                <div class="col-lg-6 pt-4 pt-lg-0 content">
                                  <h3>
                                    <xsl:value-of select="@Nombre"/>
                                  </h3>
                                  <!--End title item-->
                                  <p>
                                    <xsl:value-of select="Ingredientes/Ingrediente[position()=1]"/>
                                  </p>
                                  <!--End values of item-->
                                  <img src="{@Imagen}" class="img-fluid" alt=""></img>
                                  <!--End image item-->

                                </div>
                                <!--End container info-->
                              </xsl:for-each>
                              <!--End loop-->
                            </div>
                            <!-- End row event item-->
                          </div>
                        </div>
                        
                        </div>

                      </div>
                        </div>
                    </xsl:for-each>
                      
                  </div>
                  <div class="swiper-pagination"></div>
                </div>

              </div>
            </section>
            <!-- End Events Section -->

            <!-- ======= Specials Section ======= -->
            <section id="specials" class="specials">
              <div class="container" data-aos="fade-up">

                <div class="section-title">
                  <h2>Specials</h2>
                  <p>Check Our Specials</p>
                </div>

                <div class="row" data-aos="fade-up" data-aos-delay="100">

                  <div class="col-lg-3">
                    <ul class="nav nav-tabs flex-column">
                      <xsl:for-each select="Platillos/Tipo[@Nombre = 'Bebidas']/Platillo">
                        <xsl:choose>
                          <xsl:when test="@Orden = 1">
                            <li class="nav-item">
                              <a class="nav-link active show" data-bs-toggle="tab" href="#tab-{@Orden}">
                                <xsl:value-of select="@Nombre"/>
                              </a>
                            </li>
                          </xsl:when>
                          <xsl:otherwise>
                            <li class="nav-item">
                              <a class="nav-link" data-bs-toggle="tab" href="#tab-{@Orden}">
                                <xsl:value-of select="@Nombre"/>
                              </a>
                            </li>
                          </xsl:otherwise>
                        </xsl:choose>
                        <!--End item nav list-->
                      </xsl:for-each>
                      <!--End loop-->
                    </ul>
                  </div>
                  
                  <div class="col-lg-9 mt-4 mt-lg-0">
                    <div class="tab-content">

                       
                        <xsl:for-each select="Platillos/Tipo[@Nombre = 'Bebidas']/Platillo">
                          <xsl:choose>
                            <xsl:when test="@Orden = 1">
                              <div class="tab-pane active show" id="tab-{@Orden}">

                                <div class="row">
                                  <div class="col-lg-8 details order-2 order-lg-1">
                                    <h3>
                                      <xsl:value-of select="Precio"/>
                                    </h3>
                                    <p class="fst-italic">
                                      <xsl:value-of select="Descripcion"/>
                                    </p>

                                  </div>
                                  <div class="col-lg-4 text-center order-1 order-lg-2">
                                    <img src="{Imagen}" alt="" class="img-fluid"></img>
                                  </div>
                                </div>
                              </div>
                            </xsl:when>
                            <xsl:otherwise>
                              <div class="tab-pane" id="tab-{@Orden}">

                                <div class="row">
                                  <div class="col-lg-8 details order-2 order-lg-1">
                                    <h3>
                                      <xsl:value-of select="Precio"/>
                                    </h3>
                                    <p class="fst-italic">
                                      <xsl:value-of select="Descripcion"/>
                                    </p>

                                  </div>
                                  <div class="col-lg-4 text-center order-1 order-lg-2">
                                    <img src="{Imagen}" alt="" class="img-fluid"></img>
                                  </div>
                                </div>
                              </div>
                            </xsl:otherwise>
                          </xsl:choose>
                        </xsl:for-each>
                        </div>
                      </div>
                  </div>
                
                </div>
              
            </section>
            <!-- End Specials Section -->
            
          </main>
          <!-- End #main -->

          <!-- ======= Footer ======= -->
          <footer id="footer">
            <div class="footer-top">
              <div class="container">
                <div class="row">

                  <div class="col-lg-3 col-md-6">
                    <div class="footer-info">
                      <h3>Restaurantly</h3>
                      <p>
                        A108 Adam Street <br></br>
                        NY 535022, USA<br></br>
                        <br></br>
                        <strong>Phone:</strong> +1 5589 55488 55<br></br>
                        <strong>Email:</strong> info@example.com<br></br>
                      </p>
                      <div class="social-links mt-3">
                        <a href="#" class="twitter">
                          <i class="bx bxl-twitter"></i>
                        </a>
                        <a href="#" class="facebook">
                          <i class="bx bxl-facebook"></i>
                        </a>
                        <a href="#" class="instagram">
                          <i class="bx bxl-instagram"></i>
                        </a>
                        <a href="#" class="google-plus">
                          <i class="bx bxl-skype"></i>
                        </a>
                        <a href="#" class="linkedin">
                          <i class="bx bxl-linkedin"></i>
                        </a>
                      </div>
                    </div>
                  </div>

                  <div class="col-lg-2 col-md-6 footer-links">
                    <h4>Useful Links</h4>
                    <ul>
                      <li>
                        <i class="bx bx-chevron-right"></i>
                        <a href="#">Home</a>
                      </li>
                      <li>
                        <i class="bx bx-chevron-right"></i>
                        <a href="#">About us</a>
                      </li>
                      <li>
                        <i class="bx bx-chevron-right"></i>
                        <a href="#">Services</a>
                      </li>
                      <li>
                        <i class="bx bx-chevron-right"></i>
                        <a href="#">Terms of service</a>
                      </li>
                      <li>
                        <i class="bx bx-chevron-right"></i>
                        <a href="#">Privacy policy</a>
                      </li>
                    </ul>
                  </div>

                  <div class="col-lg-3 col-md-6 footer-links">
                    <h4>Our Services</h4>
                    <ul>
                      <li>
                        <i class="bx bx-chevron-right"></i>
                        <a href="#">Web Design</a>
                      </li>
                      <li>
                        <i class="bx bx-chevron-right"></i>
                        <a href="#">Web Development</a>
                      </li>
                      <li>
                        <i class="bx bx-chevron-right"></i>
                        <a href="#">Product Management</a>
                      </li>
                      <li>
                        <i class="bx bx-chevron-right"></i>
                        <a href="#">Marketing</a>
                      </li>
                      <li>
                        <i class="bx bx-chevron-right"></i>
                        <a href="#">Graphic Design</a>
                      </li>
                    </ul>
                  </div>

                  <div class="col-lg-4 col-md-6 footer-newsletter">
                    <h4>Our Newsletter</h4>
                    <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
                    <form action="" method="post">
                      <input type="email" name="email"></input>
                      <input type="submit" value="Subscribe"></input>

                    </form>

                  </div>

                </div>
              </div>
            </div>

            <div class="container">
              <div class="copyright">
                Copyright <strong>
                  <span>Restaurantly</span>
                </strong>. All Rights Reserved
              </div>
              <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/restaurantly-restaurant-template/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
              </div>
            </div>
          </footer>
          <!-- End Footer -->

          <div id="preloader"></div>
          <a href="#" class="back-to-top d-flex align-items-center justify-content-center">
            <i class="bi bi-arrow-up-short"></i>
          </a>

          <!-- Vendor JS Files -->
          <script src="assets/vendor/aos/aos.js"></script>
          <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
          <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
          <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
          <script src="assets/vendor/php-email-form/validate.js"></script>
          <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

          <!-- Template Main JS File -->
          <script src="assets/js/main.js"></script>

        </body>

      </html>
    </xsl:template>
</xsl:stylesheet>