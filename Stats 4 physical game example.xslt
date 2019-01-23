<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xsl:template match="/">
  <html>
  <body>
  <h2>Tile Index</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>NameDescription</th>
      <th>DefensiveValue</th>
      <th>EvasionValue</th>
      <th>OffensiveValue</th>
      <th>MovementCost</th>
      <th>MoveOver</th>
      <th>RideOver</th>
    </tr>
    <xsl:for-each select="TileMap/TileIndex/Tile">
    <tr>
      <td><xsl:value-of select="NameDescription"/></td>
      <td><xsl:value-of select="DefensiveValue"/></td>
      <td><xsl:value-of select="EvasionValue"/></td>
      <td><xsl:value-of select="OffensiveValue"/></td>
      <td><xsl:value-of select="MovementCost"/></td>
      <td><xsl:value-of select="MoveOver"/></td>
      <td><xsl:value-of select="RideOver"/></td>
    </tr>
    </xsl:for-each>
  </table>
<h2>Classes</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Name</th>
      <th>Lvl</th>
      <th>Abil</th>
      <th>Type</th>
      <th>__</th>
      <th>Might</th>
      <th>Agil</th>
      <th>Int</th>
      <th>Will</th>
      <th>__</th>
      <th>HP</th>
      <th>Att</th>
      <th>Eva</th>
      <th>Dmg</th>
      <th>Def</th>
      <th>Res</th>
      <th>Move</th>
      <th>Range</th>
      <th>__</th>
      <th>T.HP</th>
      <th>T.Att</th>
      <th>T.CritRan</th>
      <th>T.Eva</th>
      <th>T.Dmg</th>
      <th>T.Def</th>
      <th>T.Res</th>
    </tr>
    <xsl:for-each select="TileMap/ClassesIndex/Class">
    <tr>
      <td><xsl:value-of select="Name"/></td>
      <td><xsl:value-of select="Level"/></td>
      <td><xsl:value-of select="Ability"/></td>
      <td><xsl:value-of select="Type"/></td>
      <td></td>
      <td><xsl:value-of select="Might"/></td>
      <td><xsl:value-of select="Agility"/></td>
      <td><xsl:value-of select="Intelligence"/></td>
      <td><xsl:value-of select="Willpower"/></td>
      <td></td>
      <td><xsl:value-of select="HP"/></td>
      <td><xsl:value-of select="Attack"/></td>
      <td><xsl:value-of select="Evasion"/></td>
      <td><xsl:value-of select="Damage"/></td>
      <td><xsl:value-of select="Defence"/></td>
      <td><xsl:value-of select="Resistance"/></td>
      <td><xsl:value-of select="Movement"/></td>
      <td><xsl:value-of select="Range"/></td>
      <td></td>
      <td><xsl:value-of select="TotalHP"/></td>
      <td><xsl:value-of select="TotalAttack"/></td>
      <td><xsl:value-of select="TotalCrit"/></td>
      <td><xsl:value-of select="TotalEvasion"/></td>
      <td><xsl:value-of select="TotalDamage"/></td>
      <td><xsl:value-of select="TotalDefence"/></td>
      <td><xsl:value-of select="TotalResistance"/></td>
    </tr>
    </xsl:for-each>
  </table>
  <h2>Calculations</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Calculation part 1</th>
      <th>Calculation part 2</th>
      <th>Calculation result</th>
    </tr>
    <xsl:for-each select="TileMap/Calculations/Calculation">
    <tr>
      <td><xsl:value-of select="Part1"/></td>
      <td><xsl:value-of select="Part2"/></td>
      <td><xsl:value-of select="Part3"/></td>
    </tr>
    </xsl:for-each>
  </table>
<h2>Defendor/Attacker</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Level</th>
      <xsl:for-each select="TileMap/DefAtt/Class">
      <th><xsl:value-of select="Name"/></th>
	  <th></th>
	  <th></th>
	  <th></th>
      </xsl:for-each>
    </tr>
    <xsl:for-each select="TileMap/DefAtt/Class">
    <tr>
      <th><xsl:value-of select="Name"/></th>
      <td><xsl:value-of select="FightHit"/></td>
      <td><xsl:value-of select="FightCrit"/></td>
      <td><xsl:value-of select="FightDmg"/>,<xsl:value-of select="FightCritDmg"/></td>
      <td></td>
      <td><xsl:value-of select="ArcherHit"/></td>
      <td><xsl:value-of select="ArcherCrit"/></td>
      <td><xsl:value-of select="ArcherDmg"/>,<xsl:value-of select="ArcherCritDmg"/></td>
      <td></td>
      <td><xsl:value-of select="CavalryHit"/></td>
      <td><xsl:value-of select="CavalryCrit"/></td>
      <td><xsl:value-of select="CavalryDmg"/>,<xsl:value-of select="CavalryCritDmg"/></td>
      <td></td>
      <td><xsl:value-of select="MageConHit"/></td>
      <td><xsl:value-of select="MageConCrit"/></td>
      <td><xsl:value-of select="MageConDmg"/>,<xsl:value-of select="MageConCritDmg"/></td>
      <td></td>
      <td><xsl:value-of select="MageHit"/></td>
      <td><xsl:value-of select="MageCrit"/></td>
      <td><xsl:value-of select="MageDmg"/>,<xsl:value-of select="MageCritDmg"/></td>
      <td></td>
      <td><xsl:value-of select="MountMageHit"/></td>
      <td><xsl:value-of select="MountMageCrit"/></td>
      <td><xsl:value-of select="MountMageDmg"/>,<xsl:value-of select="MountMageCritDmg"/></td>
      <td></td>
      <td><xsl:value-of select="PikemanHit"/></td>
      <td><xsl:value-of select="PikemanCrit"/></td>
      <td><xsl:value-of select="PikemanDmg"/>,<xsl:value-of select="PikemanCritDmg"/></td>
      <td></td>
      <td><xsl:value-of select="RiflemanHit"/></td>
      <td><xsl:value-of select="RiflemanCrit"/></td>
      <td><xsl:value-of select="RiflemanDmg"/>,<xsl:value-of select="RiflemanCritDmg"/></td>
      <td></td>
      <td><xsl:value-of select="CavGunHit"/></td>
      <td><xsl:value-of select="CavGunCrit"/></td>
      <td><xsl:value-of select="CavGunDmg"/>,<xsl:value-of select="CavGunCritDmg"/></td>
    </tr>
    </xsl:for-each>
  </table>
  <h2>Defendor/Attacker</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Level</th>
      <xsl:for-each select="TileMap/DefAttCrit/Class">
      <th><xsl:value-of select="Name"/></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
      </xsl:for-each>
    </tr>
    <xsl:for-each select="TileMap/DefAttCrit/Class">
    <tr>
      <th><xsl:value-of select="Name"/></th>
      <td><xsl:value-of select="FightHit"/></td>
      <td><xsl:value-of select="FightCrit"/></td>
      <td><xsl:value-of select="FightDmg"/>,<xsl:value-of select="FightCritDmg"/></td>
      <td><xsl:value-of select="FightBons"/></td>
      <td></td>
      <td><xsl:value-of select="ArcherHit"/></td>
      <td><xsl:value-of select="ArcherCrit"/></td>
      <td><xsl:value-of select="ArcherDmg"/>,<xsl:value-of select="ArcherCritDmg"/></td>
      <td><xsl:value-of select="ArcherBons"/></td>
      <td></td>
      <td><xsl:value-of select="CavalryHit"/></td>
      <td><xsl:value-of select="CavalryCrit"/></td>
      <td><xsl:value-of select="CavalryDmg"/>,<xsl:value-of select="CavalryCritDmg"/></td>
      <td><xsl:value-of select="CavalryBons"/></td>
      <td></td>
      <td><xsl:value-of select="MageConHit"/></td>
      <td><xsl:value-of select="MageConCrit"/></td>
      <td><xsl:value-of select="MageConDmg"/>,<xsl:value-of select="MageConCritDmg"/></td>
      <td><xsl:value-of select="MageConBons"/></td>
      <td></td>
      <td><xsl:value-of select="MageHit"/></td>
      <td><xsl:value-of select="MageCrit"/></td>
      <td><xsl:value-of select="MageDmg"/>,<xsl:value-of select="MageCritDmg"/></td>
      <td><xsl:value-of select="MageBons"/></td>
      <td></td>
      <td><xsl:value-of select="MountMageHit"/></td>
      <td><xsl:value-of select="MountMageCrit"/></td>
      <td><xsl:value-of select="MountMageDmg"/>,<xsl:value-of select="MountMageCritDmg"/></td>
      <td><xsl:value-of select="MountMageBons"/></td>
      <td></td>
      <td><xsl:value-of select="PikemanHit"/></td>
      <td><xsl:value-of select="PikemanCrit"/></td>
      <td><xsl:value-of select="PikemanDmg"/>,<xsl:value-of select="PikemanCritDmg"/></td>
      <td><xsl:value-of select="PikemanBons"/></td>
      <td></td>
      <td><xsl:value-of select="RiflemanHit"/></td>
      <td><xsl:value-of select="RiflemanCrit"/></td>
      <td><xsl:value-of select="RiflemanDmg"/>,<xsl:value-of select="RiflemanCritDmg"/></td>
      <td><xsl:value-of select="RiflemanBons"/></td>
      <td></td>
      <td><xsl:value-of select="CavGunHit"/></td>
      <td><xsl:value-of select="CavGunCrit"/></td>
      <td><xsl:value-of select="CavGunDmg"/>,<xsl:value-of select="CavGunCritDmg"/></td>
      <td><xsl:value-of select="CavGunBons"/></td>
    </tr>
    </xsl:for-each>
  </table>
  
  <h2>Addvantage/Disadvantage</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Symbol</th>
	  <th>Meaning</th>
    </tr>
    <xsl:for-each select="TileMap/AddDis/Item">
    <tr>
      <th><xsl:value-of select="Symbol"/></th>
      <td><xsl:value-of select="Description"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
