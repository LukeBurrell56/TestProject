<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xsl:template match="/">
        <xsl:for-each select="Characters/Character">
          <h2>Character</h2>
          <!-- Content:Character Header -->
		  	<xsl:value-of select="HomeWorld"/>
			<xsl:value-of select="Background"/>
			<xsl:value-of select="Career"/>
			<xsl:value-of select="Fate"/>
			<xsl:value-of select="HP"/>
			<!-- <xsl:for-each select="Aptitudes/Aptitude"> -->
			<table border="1">
                <tr>
                  <td><xsl:value-of select="Aptitudes/Aptitude1"/></td>
				  <td><xsl:value-of select="Aptitudes/Aptitude2"/></td>
				  <td><xsl:value-of select="Aptitudes/Aptitude3"/></td>
				  <td><xsl:value-of select="Aptitudes/Aptitude4"/></td>
				  <td><xsl:value-of select="Aptitudes/Aptitude5"/></td>
				  <td><xsl:value-of select="Aptitudes/Aptitude6"/></td>
				  <td><xsl:value-of select="Aptitudes/Aptitude7"/></td>
				  <td><xsl:value-of select="Aptitudes/Aptitude8"/></td>
				  <td><xsl:value-of select="Aptitudes/Aptitude9"/></td>
                </tr>
			</table>
			<xsl:value-of select="PowerName"/><xsl:value-of select="PowerDescription"/>

          <!-- Content:Character Ability Scores -->
          <h2>Character Ability Scores</h2>
		  <table border="1">
            <tr bgcolor="#0052b3">
              <th>Ability Score Name</th>
              <th>Value</th>
              <th>Basic Cost</th>
              <th>Intermediate Cost</th>
              <th>Advanced Cost</th>
              <th>Expert Cost</th>
              <th>Mastery Cost</th>
            </tr>
            <xsl:for-each select="AbilScrs/AbilScr">
              <tr>
                <td><xsl:value-of select="AbilScrName"/></td>
                <td><xsl:value-of select="AbilScrValue"/></td>
                <td><xsl:value-of select="AbilScrCostLvl1"/></td>
                <td><xsl:value-of select="AbilScrCostLvl2"/></td>
                <td><xsl:value-of select="AbilScrCostLvl3"/></td>
                <td><xsl:value-of select="AbilScrCostLvl4"/></td>
                <td><xsl:value-of select="AbilScrCostLvl5"/></td>
              </tr>
            </xsl:for-each>
          </table>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
