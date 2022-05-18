<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="html"/>
    <xsl:template match="/tienda">
        
        <html lang="en">
            <head>
                <title><xsl:value-of select="title"/></title>
                <link rel="stylesheet" href="/3_tienda.css"/>
            </head>
            <body>
                <header><xsl:value-of select="nombre"/></header>
                <section id="intro">
                    <h1><xsl:value-of select="encabezado"/></h1>
                    <p><xsl:value-of select="descripcion"/></p>
                </section>
                <section id="galeria">
                    <h2>Mis productos:</h2>
                    <div class="contenedor-productos">
                        <xsl:for-each select="/tienda/galeria/producto">
                            <div class="producto">
                                <h3><xsl:value-of select="titulo"/></h3>
                                <p><xsl:value-of select="descripcion"/></p>
                                <p><xsl:value-of select="precio"/></p>
                            </div>
                        </xsl:for-each>
                    </div>
                </section>
            </body>
        </html>
    </xsl:template>
    
    
    
</xsl:stylesheet>
