<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="1.0" encoding="utf-8" indent="yes" />
    <xsl:template match="/">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html></xsl:text>
        <html lang="es">
            <head>
                <meta name="author" content="Diego Santos Neila" />
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <meta http-equiv="X-UA-Compatible" content="ie=edge" />
                <title>Rutas Turisticas en Asturias</title>
                <link rel="stylesheet" type="text/css" href="style.css"/>
            </head>
            <body>
                <header>
                    <h1>Rutas Turisticas Asturianas</h1>
                </header>
                <main>
                    <xsl:for-each select="rutas/ruta">
                        <section>
                            <h2 class="nombreRuta">
                                <xsl:value-of select= "nombre"/>
                            </h2>
                            <h3>Informacion de la ruta</h3>
                            <ul class = "listaRuta">
                                <li>Tipo: <xsl:value-of select= "nombre"/></li>
                                <li>Transporte: <xsl:value-of select= "transporte"/></li>
                                <li>Fecha de inicio: <xsl:value-of select= "fechaInicio"/></li>
                                <li>Hora de inicio: <xsl:value-of select= "horaInicio"/></li>
                                <li>Duración: <xsl:value-of select= "duracion"/></li>
                                <li>Agencia: <xsl:value-of select= "agencia"/></li>
                                <li>Descripcion: <xsl:value-of select= "descripcion"/></li>
                                <li>Personas adecuadas: <xsl:value-of select= "personasAdecuadas"/></li>
                                <li>Lugar inicio: <xsl:value-of select= "lugarInicio"/></li>
                                <li>Dirección de inicio: <xsl:value-of select= "direccionInicio"/></li>
                                <li>Coordenadas de inicio: <xsl:value-of select= "coordenadasInicio"/></li>
                                <li>Recomendación de la ruta: <xsl:value-of select= "recomendacion"/></li>
                            </ul>
                        </section>
                        <section>
                            <h3>Referencias</h3>
                            <xsl:for-each select="referencias/referencia">
                                <a href="{.}"> <xsl:value-of select= "."/> </a>
                            </xsl:for-each>
                        </section>
                        <section>
                            <h2>Hitos de la ruta</h2>
                            <xsl:for-each select="hitos/sitio">
                                <h3 class = "nombreHito">
                                    <xsl:value-of select= "nombreSitio"/>
                                </h3>
                                <ul class = "listaHito">
                                    <li>descripcion: <xsl:value-of select= "descripcionHito"/></li>
                                    <li>coordenadas <xsl:value-of select= "coordenadas"/></li>
                                    <li>distancia con anterior: <xsl:value-of select= "distanciaAnterior"/></li>
                                </ul>
                                <h4>Fotografías sobre el hito:</h4>
                                <xsl:for-each select="galeriaFotos/fotografia">
                                    <img src="{.}" alt = "imagen hito"/>
                                </xsl:for-each>
                                <h4>Videos sobre el hito:</h4>
                                <xsl:for-each select="galeriaVideos/video">
                                    <a href="{.}"> <xsl:value-of select= "."/> </a>
                                </xsl:for-each>
                            </xsl:for-each>
                        </section>
                    </xsl:for-each>
                <footer>
                    <section>
                        <h5>Autor</h5>
                        <ul>
                            <li><a href="mailto:uo264872@uniovi.es">UO264872@uniovi.es</a></li>
                        </ul>
                    </section>
                </footer>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>