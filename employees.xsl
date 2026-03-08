<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/">
    <employees>
      <xsl:apply-templates select="DATA/ROW"/>
    </employees>
  </xsl:template>

  <xsl:template match="ROW">
    <employee employeeNumber="{employeeNumber}">
      <lastName><xsl:value-of select="lastName"/></lastName>
      <firstName><xsl:value-of select="firstName"/></firstName>
      <email><xsl:value-of select="email"/></email>
      <reportsTo><xsl:value-of select="reportsTo"/></reportsTo>
      <jobTitle><xsl:value-of select="jobTitle"/></jobTitle>
      
      <office ofCode="{ofCode}">
        <City><xsl:value-of select="ofCity"/></City>
        <Phone><xsl:value-of select="ofPhone"/></Phone>
        <AddressLine1><xsl:value-of select="ofAdd1"/></AddressLine1>
        <AddressLine2><xsl:value-of select="ofAdd2"/></AddressLine2>
        <State><xsl:value-of select="ofState"/></State>
        <Country><xsl:value-of select="ofCountry"/></Country>
        <PostalCode><xsl:value-of select="ofPostalCode"/></PostalCode>
        <Territory><xsl:value-of select="ofTerritory"/></Territory>
      </office>
    </employee>
  </xsl:template>
</xsl:stylesheet>

