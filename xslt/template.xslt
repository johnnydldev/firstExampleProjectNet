<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="Menu">

      <xsl:for-each select="Opciones/Opcion">
        <xsl:value-of select="@Texto"/>
        <br></br>
      </xsl:for-each>

      <xsl:for-each select="Platillos/Tipo">
        <xsl:choose>
          <xsl:when test="@Nombre = 'Desayunos'">
            <h1 style="color:red;">
              <xsl:value-of select="@Nombre"/>
            </h1>
            <xsl:for-each select="Platillo">
              <ul>
                <li>
                  <xsl:value-of select="@Nombre"/>
                </li>
                <li>
                  <xsl:value-of select="Descripcion"/>
                </li>
                <li>
                  <xsl:value-of select="Precio"/>
                </li>
              </ul>
            </xsl:for-each>
          </xsl:when>

          <xsl:when test="@Nombre = 'Comidas'">
            <h1 style="color:Yellow;">
              <xsl:value-of select="@Nombre"/>
            </h1>
          </xsl:when>
          
          <xsl:otherwise>
            <h2 style="color:green;">
              <xsl:value-of select="@Nombre"/>
            </h2>
          </xsl:otherwise>
          
        </xsl:choose>
        
      </xsl:for-each>
      
     
      
    </xsl:template>
</xsl:stylesheet>
