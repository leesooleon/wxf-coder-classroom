<?xml version="1.0" encoding="UTF-8"?> 
<StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0"> 
	<UserLayer> 
		<UserStyle> 
			<Name>line_dike</Name> 
			<Title>dike</Title> 
			<Abstract>dike</Abstract> 
			<FeatureTypeStyle> 
				<Rule> 
                    <MinScaleDenominator>45230.5</MinScaleDenominator>
					<MaxScaleDenominator>90461</MaxScaleDenominator>
					<LineSymbolizer> 
						<Stroke> 
							<CssParameter name="stroke"> 
								<ogc:Literal>#000000</ogc:Literal> 
							</CssParameter> 
							<CssParameter name="stroke-width"> 
								<ogc:Literal>4</ogc:Literal>
							</CssParameter> 
						</Stroke> 
					</LineSymbolizer> 
					<LineSymbolizer> 
						<Stroke> 
							<CssParameter name="stroke">#FF0000</CssParameter> 
							<CssParameter name="stroke-width">2</CssParameter>
						</Stroke> 
					</LineSymbolizer> 
					<TextSymbolizer>
						<VendorOption name="followLine">true</VendorOption>
							<Label>
							<ogc:PropertyName>name</ogc:PropertyName>
							</Label>
						<Font>
							<CssParameter name="font-style">Normal</CssParameter>
							<CssParameter name="font-size">11</CssParameter>
							<CssParameter name="font-weight">bold</CssParameter>
						</Font>
						<Fill>
							<CssParameter name="fill">#0000FF</CssParameter>
						</Fill>
					</TextSymbolizer>
				</Rule> 
				<Rule> 
                    <MinScaleDenominator>22615.25</MinScaleDenominator>
					<MaxScaleDenominator>45230.5</MaxScaleDenominator>
					<LineSymbolizer> 
						<Stroke> 
							<CssParameter name="stroke"> 
								<ogc:Literal>#000000</ogc:Literal> 
							</CssParameter> 
							<CssParameter name="stroke-width"> 
								<ogc:Literal>5.5</ogc:Literal>
							</CssParameter> 
						</Stroke> 
					</LineSymbolizer> 
					<LineSymbolizer> 
						<Stroke> 
							<CssParameter name="stroke">#FF0000</CssParameter> 
							<CssParameter name="stroke-width">3.5</CssParameter>
						</Stroke> 
					</LineSymbolizer> 
					<TextSymbolizer>
						<VendorOption name="followLine">true</VendorOption>
							<Label>
							<ogc:PropertyName>name</ogc:PropertyName>
							</Label>
						<Font>
							<CssParameter name="font-style">Normal</CssParameter>
							<CssParameter name="font-size">14</CssParameter>
							<CssParameter name="font-weight">bold</CssParameter>
						</Font>
						<Fill>
							<CssParameter name="fill">#0000FF</CssParameter>
						</Fill>
					</TextSymbolizer>
				</Rule> 
				<Rule> 
					<MinScaleDenominator>11307.625</MinScaleDenominator>
					<MaxScaleDenominator>22615.25</MaxScaleDenominator>
					<LineSymbolizer> 
						<Stroke> 
							<CssParameter name="stroke"> 
								<ogc:Literal>#000000</ogc:Literal> 
							</CssParameter> 
							<CssParameter name="stroke-width"> 
								<ogc:Literal>7</ogc:Literal>
							</CssParameter> 
						</Stroke> 
					</LineSymbolizer> 
					<LineSymbolizer> 
						<Stroke> 
							<CssParameter name="stroke">#FF0000</CssParameter> 
							<CssParameter name="stroke-width">5</CssParameter>
						</Stroke> 
					</LineSymbolizer> 
					<TextSymbolizer>
						<VendorOption name="followLine">true</VendorOption>
							<Label>
							<ogc:PropertyName>name</ogc:PropertyName>
							</Label>
						<Font>
							<CssParameter name="font-style">Normal</CssParameter>
							<CssParameter name="font-size">16</CssParameter>
							<CssParameter name="font-weight">bold</CssParameter>
						</Font>
						<Fill>
							<CssParameter name="fill">#0000FF</CssParameter>
						</Fill>
					</TextSymbolizer>
				</Rule> 
				<Rule> 
					<MaxScaleDenominator>11307.625</MaxScaleDenominator>
					<LineSymbolizer> 
						<Stroke> 
							<CssParameter name="stroke"> 
								<ogc:Literal>#000000</ogc:Literal> 
							</CssParameter> 
							<CssParameter name="stroke-width"> 
								<ogc:Literal>8.5</ogc:Literal>
							</CssParameter> 
						</Stroke> 
					</LineSymbolizer> 
					<LineSymbolizer> 
						<Stroke> 
							<CssParameter name="stroke">#FF0000</CssParameter> 
							<CssParameter name="stroke-width">6.5</CssParameter>
						</Stroke> 
					</LineSymbolizer> 
					<TextSymbolizer>
						<VendorOption name="followLine">true</VendorOption>
							<Label>
							<ogc:PropertyName>name</ogc:PropertyName>
							</Label>
						<Font>
							<CssParameter name="font-style">Normal</CssParameter>
							<CssParameter name="font-size">16</CssParameter>
							<CssParameter name="font-weight">bold</CssParameter>
						</Font>
						<Fill>
							<CssParameter name="fill">#0000FF</CssParameter>
						</Fill>
					</TextSymbolizer>
				</Rule> 
			</FeatureTypeStyle>   
		</UserStyle> 
	</UserLayer> 
</StyledLayerDescriptor>