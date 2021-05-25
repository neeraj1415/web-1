<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="https://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
 <body>
 <h2>Student list in descending order of their CGPA.</h2>
 <table border="1">
 <tr bgcolor="lightblue">
 <th>ID</th>
 <th>Name</th>
 <th>Branch</th>
 <th>CGPA</th>
 </tr>
 <xsl:for-each select="class/student">
 <xsl:sort select="cgpa" order="descending" data-type="number"/>
 <tr>
 <td><xsl:value-of select="id"/></td>
 <td><xsl:value-of select="name"/></td>
 <td><xsl:value-of select="branch"/></td>
 <td><xsl:value-of select="cgpa"/></td>
 </tr>
 </xsl:for-each>
 </table>
 </body>
 </html>
</xsl:template>
</xsl:stylesheet>