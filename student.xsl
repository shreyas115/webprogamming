<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 

<xsl:template match = "/class">

	<html>
		<body>
			<h2>Student Mark List</h2>
			
			<table border = "1">
				<tr bgcolor="yellow">
					<th>First Name</th>
					<th>Last Name</th>
					<th>Cat 1</th>
					<th>Cat 2</th>
					<th>Fat</th>
					<th>Total</th>
				</tr>
				<xsl:for-each select = "student">
					<tr>
						<td><xsl:value-of select = "firstname"/></td>
						<td><xsl:value-of select = "lastname"/></td>
						<td><xsl:value-of select = "cat1"/></td>
						<td><xsl:value-of select = "cat2"/></td>
						<td><xsl:value-of select = "fat"/></td>
						<td>
							<xsl:attribute name="bgcolor">
								<xsl:choose>
									<xsl:when test="total &gt; 35">
										#BBFF33
									</xsl:when>
									<xsl:otherwise>
										#ED360A
									</xsl:otherwise>
								</xsl:choose>
							</xsl:attribute>
						<xsl:value-of select = "total"/></td>
					</tr>
				
				</xsl:for-each>
				
			</table>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>