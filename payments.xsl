<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <payments>
            <xsl:apply-templates select="DATA/ROW"/>
        </payments>
    </xsl:template>

    <xsl:template match="ROW">
        <check>
            <xsl:attribute name="number">
                <xsl:value-of select="checkNumber"/>
            </xsl:attribute>

            <customer>
                <xsl:attribute name="customerNumber">
                    <xsl:value-of select="customerNumber"/>
                </xsl:attribute>
                
                <customerName>
                    <xsl:value-of select="customerName"/>
                </customerName>

                <adress>
                    <addressLine1>
                        <xsl:value-of select="addressLine1"/>
                    </addressLine1>
                    <city>
                        <xsl:attribute name="country">
                            <xsl:value-of select="country"/>
                        </xsl:attribute>
                        <xsl:value-of select="city"/>
                    </city>
                </adress>

                <salesRepEmployeeNumber>
                    <xsl:value-of select="salesRepEmployeeNumber"/>
                </salesRepEmployeeNumber>

                <creditLimit>
                    <xsl:value-of select="creditLimit"/>
                </creditLimit>
            </customer>

            <date>
                <xsl:value-of select="paymentDate"/>
            </date>
            <amount>
                <xsl:value-of select="amount"/>
            </amount>
        </check>
    </xsl:template>

</xsl:stylesheet>