<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="https://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
 <body>
 <h2>citizen list in descending order of their Age.</h2>
 <table border="1">
 <tr bgcolor="lightblue">
 <th>aadar</th>
 <th>name</th>
 <th>mobile</th>
 <th>age</th>
 </tr>
 <xsl:for-each select="class/citizen">
 <xsl:sort select="age" order="descending" data-type="number"/>
 <tr>
 <td><xsl:value-of select="aadar"/></td>
 <td><xsl:value-of select="name"/></td>
 <td><xsl:value-of select="mobile"/></td>
 <td><xsl:value-of select="age"/></td>
 </tr>
 </xsl:for-each>
 </table>
 </body>
 </html>
</xsl:template>
</xsl:stylesheet>