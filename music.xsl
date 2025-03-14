<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Music Vault</title>
                <style>
                    body { font-family: 'Poppins', sans-serif; background-color: #1a1a1a; color: #e0e0e0; }
                    h1 { color: #ff6f61; text-align: center; }
                    ul { list-style-type: none; padding: 0; }
                    li { margin: 10px 0; padding: 15px; border: 1px solid #444; border-radius: 8px; background-color: #333; }
                    .songTitle { font-weight: bold; color: #ff6f61; }
                    .artist { color: #6b5b95; }
                    .albums { color: #88b04b; }
                    .debutYear { color: #ffcc5c; }
                </style>
            </head>
            <body>
                <h1>Music Vault</h1>
                <ul>
                    <xsl:for-each select="music/song">
                        <li>
                            <div class="songTitle"><xsl:value-of select="songTitle"/></div>
                            <div class="artist">Artist: <xsl:value-of select="artist"/></div>
                            <div class="albums">
                                Albums:
                                <ul>
                                    <xsl:for-each select="albums/album">
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                            <div class="debutYear">Debut Year: <xsl:value-of select="debutYear"/></div>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>