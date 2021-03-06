<?xml version="1.0" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:output method="html"/>

	<xsl:template match="/">
		
		<html>
			<head><title>Cars</title></head>

			<style>
				.genStyle {padding: 10px; text-align: center;} 
			</style>

			<body>

				<h1>Cars! @<xsl:value-of select="cars/car/make"/>&#160;<xsl:value-of select="cars/car/model"/></h1>

				The <xsl:value-of select="cars/car/make"/> is located in the <xsl:value-of select="cars/car/location"/>.
				
				<table border="1" style="border: 5px solid orange; border-radius: 5px;">
					<tr>
						<th class="genStyle">Make</th>
						<th class="genStyle">Model</th>
						<th class="genStyle">SubModel</th>
						<th class="genStyle">Color</th>
						<th class="genStyle">Location</th>
						<th class="genStyle">Nickname</th>
					</tr>
					
					<xsl:for-each select="cars/car">
						<tr>
							<td class="genStyle"><xsl:value-of select="make"/></td>
							<td class="genStyle"><xsl:value-of select="model"/></td>
							<td class="genStyle"><xsl:value-of select="subModel"/></td>
							<td class="genStyle"><xsl:value-of select="color"/></td>
							<td class="genStyle"><xsl:value-of select="location"/></td>

							<xsl:choose>
								<xsl:when test = "nickname">
									<td class="genStyle"><xsl:value-of select="nickname"/></td>
								</xsl:when>
								<xsl:otherwise>
									<td class="genStyle">none</td>
								</xsl:otherwise>
							</xsl:choose>
						</tr>
					</xsl:for-each>

				</table>


			</body>
		</html>


	</xsl:template>
</xsl:stylesheet>