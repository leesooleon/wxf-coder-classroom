<?xml version="1.0" encoding="GBK"?>
<StyledLayerDescriptor version="1.0.0"
xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns="http://www.opengis.net/sld"
xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<NamedLayer>
		<UserStyle>
			<FeatureTypeStyle>
				<Rule>
					<MaxScaleDenominator>3000000</MaxScaleDenominator>
					<MinScaleDenominator>183000</MinScaleDenominator>
					<PointSymbolizer>
						<Graphic>
							<Mark>
								<WellKnownName>circle</WellKnownName>
							<Fill>
								<CssParameter name="fill">
									<ogc:Literal>#FFFFFF</ogc:Literal>
								</CssParameter>
							</Fill>
							<Stroke>
								<CssParameter name="stroke">
									<ogc:Literal>#0000FF</ogc:Literal>
								</CssParameter>
								<CssParameter name="stroke-width">
									<ogc:Literal>2</ogc:Literal>
								</CssParameter>
							</Stroke>
							</Mark>
							<Opacity>
								<ogc:Literal>1.0</ogc:Literal>
							</Opacity>
							<Size>
								<ogc:Literal>10</ogc:Literal>
							</Size>
						</Graphic>
					</PointSymbolizer>
					<TextSymbolizer>
						<Label>
							<ogc:PropertyName>name</ogc:PropertyName>
						</Label>
						<Font>
							<CssParameter name="font-style">Normal</CssParameter>
							<CssParameter name="font-size">15</CssParameter>
						</Font>
						<Fill>
							<CssParameter name="fill">#FF0000</CssParameter>
						</Fill>
					</TextSymbolizer>
				</Rule>
			</FeatureTypeStyle>
		</UserStyle>
	</NamedLayer>
</StyledLayerDescriptor>