<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:gmi="http://www.isotc211.org/2005/gmi"
    xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:srv="http://www.isotc211.org/2005/srv" xmlns:gco="http://www.isotc211.org/2005/gco" version="2.0">
    <!-- Output a list of all ResponsibleParties in a WAF -->
    <xd:doc xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b>February 11, 2015</xd:p>
            <xd:p><xd:b>Author:</xd:b>john.kozimor@hdfgroup.org</xd:p>
            <xd:p/>
        </xd:desc>
    </xd:doc>
    <xsl:output method="xml"></xsl:output>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="@codeListValue">
        <xsl:variable name="codeListValue" select="."></xsl:variable>
        <xsl:copy>
            <xsl:value-of select="$codeListValue"></xsl:value-of>
        </xsl:copy>
    </xsl:template>
    <!--<xsl:template match="/">
        <xsl:for-each select="//@codeListValue">
            <xsl:variable name="codelistValue" select="."></xsl:variable>
            <xsl:value-of select="$codelistValue"></xsl:value-of>
        </xsl:for-each>
    </xsl:template>-->   
</xsl:stylesheet>
