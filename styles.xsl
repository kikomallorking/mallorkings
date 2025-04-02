<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <!-- Plantilla principal para aplicar al documento -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Catàleg de Vehicles</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 20px;
          }
          .vehicle {
            margin-bottom: 20px;
            border: 1px solid #ccc;
            padding: 10px;
            width: 250px;
            float: left;
            margin-right: 20px;
            text-align: center;
          }
          .vehicle img {
            width: 100%;
            height: auto;
          }
          h1 {
            text-align: center;
            margin-bottom: 40px;
          }
        </style>
      </head>
      <body>
        <h1>Catàleg de Vehicles</h1>
        
        <!-- Recorre cada vehículo en el XML -->
        <xsl:for-each select="concessionari/vehicle">
          <div class="vehicle">
            <h2><xsl:value-of select="marca"/> <xsl:value-of select="model"/></h2>
            <!-- Imagen del vehículo -->
            <img>
              <xsl:attribute name="src">
                <xsl:value-of select="imagen"/>
              </xsl:attribute>
            </img>
            <p><strong>Any:</strong> <xsl:value-of select="any"/></p>
            <p><strong>Preu:</strong> <xsl:value-of select="preu"/> €</p>
            <p><strong>Potència:</strong> <xsl:value-of select="potencia"/> CV</p>
            <p><strong>Autonomia:</strong> <xsl:value-of select="autonomia"/> km</p>
            <p><strong>Consum:</strong> <xsl:value-of select="consum"/></p>
            <p><strong>Tipus:</strong> <xsl:value-of select="tipus"/></p>
            <p><strong>Features:</strong> <xsl:value-of select="features"/></p>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>
