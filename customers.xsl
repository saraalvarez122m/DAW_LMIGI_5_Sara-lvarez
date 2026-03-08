<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
  <xsl:template match="/">
       <customers>
           <xsl:apply-templates select="DATA/row"/>
       </customers>
  </xsl:template>
  
  <xsl:template match="row">
     <customer>
     <xsl:attribute name="customerNumber">
                <xsl:value-of select="field[@name='customerNumber']"/>
            </xsl:attribute>

            <customerName>
                <xsl:value-of select="field[@name='customerName']"/>
            </customerName>
            
            <phone>
                <xsl:value-of select="field[@name='phone']"/>
            </phone>

            <contact>
                <contactFirstName>
                    <xsl:value-of select="field[@name='contactFirstName']"/>
                </contactFirstName>
                <contactLastName>
                    <xsl:value-of select="field[@name='contactLastName']"/>
                </contactLastName>
            </contact>

            <adress>
                <addressLine1><xsl:value-of select="field[@name='addressLine1']"/></addressLine1>
                <addressLine2><xsl:value-of select="field[@name='addressLine2']"/></addressLine2>
                <city><xsl:value-of select="field[@name='city']"/></city>
                <state><xsl:value-of select="field[@name='state']"/></state>
                <postalCode><xsl:value-of select="field[@name='postalCode']"/></postalCode>
                <country><xsl:value-of select="field[@name='country']"/></country>
            </adress>

            <salesRepEmployeeNumber>
                <xsl:value-of select="field[@name='salesRepEmployeeNumber']"/>
            </salesRepEmployeeNumber>
            
            <creditLimit>
                <xsl:value-of select="field[@name='creditLimit']"/>
            </creditLimit>
        </customer>
    </xsl:template>

</xsl:stylesheet>
     