<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xsl:template match="/">
  <html>
  <body>
  <xsl:for-each select="ClassesIndex/Class">
  <h2>Class: <xsl:value-of select="Name"/></h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Level</th>
      <th>HP</th>
      <th>MP</th>
      <th>Attack</th>
      <th>Damage</th>
      <th>Defence</th>
      <th>Resistance</th>
      <th>Dodge</th>
      <th>Movement</th>
    </tr>
    <xsl:for-each select="Level">
    <tr>
	  <td><xsl:number format="01"/></td>
      <td><xsl:value-of select="HP"/></td>
      <td><xsl:value-of select="MP"/></td>
      <td><xsl:value-of select="Attack"/></td>
      <td><xsl:value-of select="Damage"/></td>
      <td><xsl:value-of select="Defence"/></td>
      <td><xsl:value-of select="Resistance"/></td>
      <td><xsl:value-of select="Dodge"/></td>
      <td><xsl:value-of select="Movement"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </xsl:for-each>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>