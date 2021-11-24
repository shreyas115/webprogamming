<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 
<xsl:param name="searchword" />
<xsl:template match = "/class" name="MyTemplate">
		<html>
			<body>
				<table border = "1">
					<tr>
						<th>Synonym</th>
						<th>Antynom</th>
					</tr>
					<xsl:for-each select = "thesaurus">
						<xsl:if test = "$searchword = @word">
							<tr>
								<td><xsl:value-of select = "@synonyms"/></td>
								<td><xsl:value-of select = "@antonyms"/></td>
							</tr>
						</xsl:if> 
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>