<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<CISDocument>
<ApiHeader>
<OperationName>
<xsl:value-of   select="'str1234'"/>
</OperationName>
<ClientID>
<xsl:value-of   select="'123'"/>
</ClientID>
</ApiHeader>
<Shipment>
<xsl:for-each select="/row/sn">
<SN>
<xsl:value-of   select="."/>
</SN>
</xsl:for-each>
<mtccode>
<xsl:value-of   select="/row/mtccode"/>
</mtccode>
<LogisticsGroupCode>
<xsl:value-of   select="'str1234'"/>
</LogisticsGroupCode>
<DivisionCode>
<xsl:value-of   select="'str1234'"/>
</DivisionCode>
<SystemPlanID>
<xsl:value-of   select="'12'"/>
</SystemPlanID>
<ShipmentDescription>
<xsl:value-of   select="'str1234'"/>
</ShipmentDescription>
<FreightTermsEnumVal>
<xsl:value-of   select="'str1234'"/>
</FreightTermsEnumVal>
<UrgentFlag>
<xsl:value-of   select="'true'"/>
</UrgentFlag>
<ShipFromLocationTypeEnumVal>
<xsl:value-of   select="'str1234'"/>
</ShipFromLocationTypeEnumVal>
<CX>
<xsl:value-of   select="/row/cx"/>
</CX>
<ShipToLocationTypeEnumVal>
<xsl:value-of   select="'str1234'"/>
</ShipToLocationTypeEnumVal>
<DN>
<xsl:value-of   select="/row/dn"/>
</DN>
<ShipToAddress>
<Block>
<xsl:value-of   select="'12'"/>
</Block>
<Street>
<xsl:value-of   select="'str1234'"/>
</Street>
<City>
<xsl:value-of   select="'str1234'"/>
</City>
<State>
<xsl:value-of   select="'str1234'"/>
</State>
<CountryCode>
<xsl:value-of   select="'str1234'"/>
</CountryCode>
<PostalCode>
<xsl:value-of   select="'12'"/>
</PostalCode>
</ShipToAddress>
<PFDT>
<xsl:value-of   select="/row/pfdt"/>
</PFDT>
<PTDT>
<xsl:value-of   select="/row/ptdt"/>
</PTDT>
<DFDT>
<xsl:value-of   select="/row/dfdt"/>
</DFDT>
<DTDT>
<xsl:value-of   select="/row/dtdt"/>
</DTDT>
<CommodityCode>
<xsl:value-of   select="'str1234'"/>
</CommodityCode>
<UnitOfMeasure>
<SystemUnitOfMeasureEnumVal>
<xsl:value-of   select="'str1234'"/>
</SystemUnitOfMeasureEnumVal>
<WeightUnitOfMeasureEnumVal>
<xsl:value-of   select="'str1234'"/>
</WeightUnitOfMeasureEnumVal>
<LengthUnitOfMeasureEnumVal>
<xsl:value-of   select="'str1234'"/>
</LengthUnitOfMeasureEnumVal>
<DistanceUnitOfMeasureEnumVal>
<xsl:value-of   select="'str1234'"/>
</DistanceUnitOfMeasureEnumVal>
</UnitOfMeasure>
<IgnoreReferenceNumbersFlag>
<xsl:value-of   select="'true'"/>
</IgnoreReferenceNumbersFlag>
<ReferenceNumberStructure>
<ReferenceNumberTypeCode>
<xsl:value-of   select="'str1234'"/>
</ReferenceNumberTypeCode>
<xsl:for-each select=".">
<ReferenceNumber>
<xsl:value-of   select="'str1234'"/>
</ReferenceNumber>
</xsl:for-each>
</ReferenceNumberStructure>
<IgnoreContainersFlag>
<xsl:value-of   select="'true'"/>
</IgnoreContainersFlag>
<Container>
<ContainerTypeCode>
<xsl:value-of   select="'str1234'"/>
</ContainerTypeCode>
<Quantity>
<xsl:value-of   select="/row/quantity"/>
</Quantity>
<ContainerShippingInformation>
<Volume>
<xsl:value-of   select="'12'"/>
</Volume>
<OrderValue>
<xsl:value-of   select="'5'"/>
</OrderValue>
<Pieces>
<xsl:value-of   select="'5'"/>
</Pieces>
<Skids>
<xsl:value-of   select="'5'"/>
</Skids>
<LadenLength>
<xsl:value-of   select="'5'"/>
</LadenLength>
</ContainerShippingInformation>
<IgnoreWeightByFreightClassFlag>
<xsl:value-of   select="'true'"/>
</IgnoreWeightByFreightClassFlag>
<WeightByFreightClass>
<FreightClassNominalWeight>
<xsl:value-of   select="'12'"/>
</FreightClassNominalWeight>
<FreightClassCode>
<xsl:value-of   select="'5'"/>
</FreightClassCode>
</WeightByFreightClass>
<IgnoreShipmentItemsFlag>
<xsl:value-of   select="'true'"/>
</IgnoreShipmentItemsFlag>
</Container>
<IgnoreChargeOverridesFlag>
<xsl:value-of   select="'true'"/>
</IgnoreChargeOverridesFlag>
<ChargeOverrides>
<ApplyAPOptionEnumVal>
<xsl:value-of   select="'str1234'"/>
</ApplyAPOptionEnumVal>
<xsl:for-each select=".">
<ChargeCode>
<xsl:value-of   select="'str1234'"/>
</ChargeCode>
</xsl:for-each>
</ChargeOverrides>
<ShipmentPriority>
<xsl:value-of   select="'5'"/>
</ShipmentPriority>
<SummarizedEntryModeFlag>
<xsl:value-of   select="'true'"/>
</SummarizedEntryModeFlag>
</Shipment>
<IgnoreAllShipmentReferenceNumbersFlag>
<xsl:value-of   select="'true'"/>
</IgnoreAllShipmentReferenceNumbersFlag>
<ExecuteAPRatingFlag>
<xsl:value-of   select="'true'"/>
</ExecuteAPRatingFlag>
<ExecuteARRatingFlag>
<xsl:value-of   select="'true'"/>
</ExecuteARRatingFlag>
<ResultContents>
<xsl:value-of   select="'str1234'"/>
</ResultContents>
</CISDocument>
</xsl:template>
</xsl:stylesheet>