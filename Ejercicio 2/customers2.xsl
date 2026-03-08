<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Customer Details</title>
        <style>
          table { border-collapse: collapse; width: 100%; font-family: Arial, sans-serif; }
          th, td { border: 1px solid black; padding: 8px; text-align: left; }
          th { background-color: black; color: white; }
          tr:nth-child(even) { background-color: #f2f2f2; }
        </style>
      </head>
      <body>
        <h2>Lista de Clientes</h2>
        <table>
          <thead>
            <tr>
              <th>Customer Number</th>
              <th>Customer Name</th>
              <th>Phone</th>
              <th>Contact First Name</th>
              <th>Contact Last Name</th>
              <th>Address Line 1</th>
              <th>Address Line 2</th>
              <th>City</th>
              <th>State</th>
              <th>Postal Code</th>
              <th>Country</th>
              <th>Sales Rep</th>
              <th>Credit Limit</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="customers/customer">
              <tr>
                <td><xsl:value-of select="@customerNumber"/></td>
                <td><xsl:value-of select="customerName"/></td>
                <td><xsl:value-of select="phone"/></td>
                
                <td><xsl:value-of select="contact/contactFirstName"/></td>
                <td><xsl:value-of select="contact/contactLastName"/></td>
                
                <td><xsl:value-of select="adress/addressLine1"/></td>
                <td><xsl:value-of select="adress/addressLine2"/></td>
                <td><xsl:value-of select="adress/city"/></td>
                <td><xsl:value-of select="adress/state"/></td>
                <td><xsl:value-of select="adress/postalCode"/></td>
                <td><xsl:value-of select="adress/country"/></td>
                
                <td><xsl:value-of select="salesRepEmployeeNumber"/></td>
                <td><xsl:value-of select="creditLimit"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>