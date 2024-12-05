<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>
  
  <!-- Main Template-->
  <xsl:param name="TipoMenu" select="TypeMenu"></xsl:param>
    <xsl:template name="Home">
      <h1>Hola desde Home</h1>
    </xsl:template>

  <xsl:template name="Carta">
    <h1>Hola desde Carta</h1>
    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Platillos</h2>
          <p>Nuestros Platillos</p>
        </div>

        <div class="row">

          <xsl:for-each select="Platillos/Tipo[@Nombre != 'Bebidas']/Platillos[@Orden=1]">
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

    
  </xsl:template>
  <xsl:template name="Contacto">
    <h1>Hola desde Contacto</h1>
  </xsl:template>
  <xsl:template name="PlayRoom">
    <h1>Hola desde PlayRoom</h1>
  </xsl:template>
  
  
</xsl:stylesheet>
