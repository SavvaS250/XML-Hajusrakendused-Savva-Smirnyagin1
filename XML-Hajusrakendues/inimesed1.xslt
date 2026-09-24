<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output encoding="UTF-8" method="text" />
 <xsl:template match="/">
 <xsl:value-of select="/inimesed/inimene[1]/perenimi" />, 
 <xsl:value-of select="/inimesed/inimene[1]/sugu" />,
 <xsl:value-of select="substring(/inimesed/inimene[1]/peremini, 1, 1)" />;
 <xsl:value-of select="/inimesed/inimene[2]/perenimi" />, 
 <xsl:value-of select="/inimesed/inimene[2]/sugu" />;
 <xsl:value-of select="/inimesed/inimene[3]/perenimi" />, 
 <xsl:value-of select="/inimesed/inimene[3]/sugu" />;
 <xsl:value-of select="/inimesed/inimene[5]/perenimi" />, 
 <xsl:value-of select="/inimesed/inimene[5]/sugu" />;
	 <ul>
		 <xsl:for-each select="inimesed/inimene/eesnimi">
			 <li>
				 <xsl:value-of select="." />
			 </li>
		 </xsl:for-each>
	 </ul>
 </xsl:template>
</xsl:stylesheet>