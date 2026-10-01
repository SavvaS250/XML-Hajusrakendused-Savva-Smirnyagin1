<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="html" />
	<xsl:template match="/">
		<h2>Kõikide sünniaastad</h2>
		<ul>
			<xsl:for-each select="sugupuu//pereliige">
				<li>
					<xsl:value-of select="nimi" />,
					sünniaasta: <xsl:value-of select="@synniaasta" />
				</li>
			</xsl:for-each>
		</ul>

		<h2>Vähemalt kaks last</h2>
		<ul>
			<xsl:for-each select="sugupuu//pereliige">
				<xsl:if test="count(pereliikmed/pereliige) &gt;= 2">
					<li>
						<xsl:value-of select="nimi" />,
						lapsi: <xsl:value-of select="count(pereliikmed/pereliige)"/>
					</li>
				</xsl:if>
			</xsl:for-each>
		</ul>

		<h2>Sugupuu tabelina</h2>
		<table border="1">
			<tr>
				<th>Nimi</th>
				<th>Sünniaasta</th>
				<th>Lapsed</th>
				<th>Vanem</th>
				<th>Vanavanem</th>
				<th>Vanus</th>
				<th>Vanema vanus sünni hetkel</th>
			</tr>
			<xsl:for-each select="//pereliige">
				<tr style="border:1px solid black">
					<td style="border:1px solid black">
						<xsl:value-of select="nimi"/>
					</td>
					<td style="border:1px solid black">
						<xsl:value-of select="@synniaasta"/>
					</td>
					<td style="border:1px solid black">
						<xsl:for-each select="pereliikmed/pereliige">
							<xsl:value-of select="nimi"/>
							<xsl:if test="position() != last()">, </xsl:if>
						</xsl:for-each>
					</td>
					<td style="border:1px solid black">
						<xsl:value-of select="../../nimi"/>
					</td>
					<td style="border:1px solid black">
						<xsl:value-of select="../../../../nimi"/>
					</td>
					<td style="border:1px solid black">
						<xsl:value-of select="2026 - @synniaasta"/>
						<xsl:if test="count(pereliikmed/pereliige) = 0">
							<xsl:text xml:space="preserve"> Laps</xsl:text>
						</xsl:if>
					</td>
					<td style="border:1px solid black">
						<xsl:if test="../../@synniaasta">
							<xsl:variable name="lapseVanus" select="2026 - @synniaasta"/>
							<xsl:variable name="vanemaVanus" select="2026 - ../../@synniaasta"/>
							<xsl:value-of select="$vanemaVanus - $lapseVanus"/>
						</xsl:if>
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>