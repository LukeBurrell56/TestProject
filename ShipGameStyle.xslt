<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema">
<xsl:template match="/">
  <html>
  <body>
  <h2>Ship Game</h2>
  <table border="1">
     <tr bgcolor="#9acd32">
      <th>Ship hull Types</th>
      <th>Cost</th>
      <th>Crew Size</th>
      <th>Area</th>
      <th>Deck</th>
      <th>space</th>
      <th>Inate Hull</th>
      <th>Basic Armor</th>
      <th>Basic Prop</th>
      <th>Stealth</th>
      <th>Detection</th>
      <th>Manuevering</th>
    </tr>
    <xsl:for-each select="ShipGame/ShipDesigns/ShipDesign">
		<tr>
			<xsl:choose>
				<xsl:when test="position() mod 2 = 1">
					<td><xsl:value-of select="ShipHullType"/></td>
					<td><xsl:value-of select="Cost"/></td>
					<td><xsl:value-of select="CrewSize"/></td>
					<td><xsl:value-of select="Area"/></td>
					<td><xsl:value-of select="Decks"/></td>
					<td><xsl:value-of select="Space"/></td>
					<td><xsl:value-of select="InateHull"/></td>
					<td><xsl:value-of select="BasicArmor"/></td>
					<td><xsl:value-of select="BasicProp"/></td>
					<td><xsl:value-of select="Stealth"/></td>
					<td><xsl:value-of select="Detection"/></td>
					<td><xsl:value-of select="Manuevering"/></td>
				</xsl:when>
			<xsl:otherwise>
					<td bgcolor="#e6e6e6"><xsl:value-of select="ShipHullType"/></td>
					<td bgcolor="#e6e6e6"><xsl:value-of select="Cost"/></td>
					<td bgcolor="#e6e6e6"><xsl:value-of select="CrewSize"/></td>
					<td bgcolor="#e6e6e6"><xsl:value-of select="Area"/></td>
					<td bgcolor="#e6e6e6"><xsl:value-of select="Decks"/></td>
					<td bgcolor="#e6e6e6"><xsl:value-of select="Space"/></td>
					<td bgcolor="#e6e6e6"><xsl:value-of select="InateHull"/></td>
					<td bgcolor="#e6e6e6"><xsl:value-of select="BasicArmor"/></td>
					<td bgcolor="#e6e6e6"><xsl:value-of select="BasicProp"/></td>
					<td bgcolor="#e6e6e6"><xsl:value-of select="Stealth"/></td>
					<td bgcolor="#e6e6e6"><xsl:value-of select="Detection"/></td>
					<td bgcolor="#e6e6e6"><xsl:value-of select="Manuevering"/></td>
				</xsl:otherwise>
			</xsl:choose>
		</tr>
    </xsl:for-each>
  </table>
<h2>List of Ships</h2>
    <table border="1">
    <tr bgcolor="#9acd32">
	  <th>Ship Hull Name</th>
      <th>Manufacturer</th>
      <th>Ship Hull Types</th>
      <th>Cost</th>
      <th>Crew Size</th>
      <th>Area</th>
      <th>Deck</th>
      <th>space</th>
      <th>Inate Hull</th>
      <th>Basic Armor</th>
      <th>Basic Prop</th>
      <th>Stealth</th>
      <th>Detection</th>
      <th>Manuevering</th>
    </tr>
    <xsl:for-each select="ShipGame/ShipHulls/ShipHull">
	<xsl:sort select="ShipHullName"/>
    <tr>
	<xsl:choose>
		<xsl:when test="position() mod 2 = 1">
			<td><xsl:value-of select="ShipHullName"/></td>
			<td><xsl:value-of select="Manufacturer"/></td>
			<td><xsl:value-of select="ShipHullType"/></td>
			<td><xsl:value-of select="Cost"/></td>
			<td><xsl:value-of select="CrewSize"/></td>
			<td><xsl:value-of select="Area"/></td>
			<td><xsl:value-of select="Decks"/></td>
			<td><xsl:value-of select="Space"/></td>
			<td><xsl:value-of select="InateHull"/></td>
			<td><xsl:value-of select="BasicArmor"/></td>
			<td><xsl:value-of select="BasicProp"/></td>
			<td><xsl:value-of select="Stealth"/></td>
			<td><xsl:value-of select="Detection"/></td>
			<td><xsl:value-of select="Manuevering"/></td>
		</xsl:when>
		<xsl:otherwise>
			<td bgcolor="#e6e6e6"><xsl:value-of select="ShipHullName"/></td>
			<td bgcolor="#e6e6e6"><xsl:value-of select="Manufacturer"/></td>
			<td bgcolor="#e6e6e6"><xsl:value-of select="ShipHullType"/></td>
			<td bgcolor="#e6e6e6"><xsl:value-of select="Cost"/></td>
			<td bgcolor="#e6e6e6"><xsl:value-of select="CrewSize"/></td>
			<td bgcolor="#e6e6e6"><xsl:value-of select="Area"/></td>
			<td bgcolor="#e6e6e6"><xsl:value-of select="Decks"/></td>
			<td bgcolor="#e6e6e6"><xsl:value-of select="Space"/></td>
			<td bgcolor="#e6e6e6"><xsl:value-of select="InateHull"/></td>
			<td bgcolor="#e6e6e6"><xsl:value-of select="BasicArmor"/></td>
			<td bgcolor="#e6e6e6"><xsl:value-of select="BasicProp"/></td>
			<td bgcolor="#e6e6e6"><xsl:value-of select="Stealth"/></td>
			<td bgcolor="#e6e6e6"><xsl:value-of select="Detection"/></td>
			<td bgcolor="#e6e6e6"><xsl:value-of select="Manuevering"/></td>
		</xsl:otherwise>
	</xsl:choose>	  
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>