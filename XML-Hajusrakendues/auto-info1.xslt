<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output encoding="UTF-8" method="html" />
 <xsl:template match="/">
	 <h2>Auto registrinumber</h2>
	 <ul>
		 <xsl:for-each select="/auto/autoInfo/registrinumber">
			 <li>
				 <xsl:value-of select="." />
			 </li>
		 </xsl:for-each>
	 </ul>
	 <h2>Auto registrinumbri numbrite osa</h2>
	 <ul>
		 <xsl:for-each select="/auto/autoInfo">
			 <li>
				 <xsl:value-of select="substring(registrinumber, 1, 3)" />
			 </li>
		 </xsl:for-each>
	 </ul>
	 <h2>Auto registrinumbri tähtede osa</h2>
	 <ul>
		 <xsl:for-each select="/auto/autoInfo">
			 <li>
				 <xsl:value-of select="substring(registrinumber, 5, 7)" />
			 </li>
		 </xsl:for-each>
	 </ul>
	 <h2>Auto omaniku perekonnanime esimene täht</h2>
	 <ul>
		 <xsl:for-each select="/auto/autoInfo/omanik">
			 <li>
				 <xsl:value-of select="substring(perenimi, 1, 1)" />
			 </li>
		 </xsl:for-each>
	 </ul>
	 <h2>Auto omaniku perekonnanime esimene täht</h2>
	 <ul>
		 <xsl:for-each select="/auto/autoInfo/omanik">
			 <li>
				 <xsl:value-of select="substring(perenimi, string-length(perenimi), 1)" />
			 </li>
		 </xsl:for-each>
	 </ul>
	 <h2>Mitme inimese perekonnanimi on Kaalikas</h2>
	 <ul>
		 <xsl:for-each select=".">
			 <li>
				 <xsl:value-of select="count(/auto/autoInfo/omanik[perenimi='Kaalikas'])" />
			 </li>
		 </xsl:for-each>
	 </ul>
	 <h2>Mitme inimese perekonnanimi algab K-tähega</h2>
	 <ul>
		 <xsl:for-each select=".">
			 <li>
				 <xsl:value-of select="count(/auto/autoInfo/omanik[starts-with(perenimi, 'K')])" />
			 </li>
		 </xsl:for-each>
	 </ul>
	 <h2>Mitme auto registrimärgi viimane number on 2</h2>
	 <ul>
		 <xsl:for-each select=".">
			 <li>
				 <xsl:value-of select="count(/auto/autoInfo[substring(registrinumber, 3, 1) = '2'])" />
			 </li>
		 </xsl:for-each>
	 </ul>
	 <h2>Mitme auto registrimärgi viimane number on 1 või 2</h2>
	 <ul>
		 <xsl:for-each select=".">
			 <li>
				 <xsl:value-of select="count(/auto/autoInfo[substring(registrinumber, 3, 1) = '1' or substring(registrinumber, 3, 1) = '2'])" />
			 </li>
		 </xsl:for-each>
	 </ul>
 </xsl:template>
</xsl:stylesheet>