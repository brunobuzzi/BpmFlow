render
renderContentOn: html
	| jsEcElement |

	multiChartIsEnabled ifTrue: [^self renderMultiChartsDefinitionsOn: html].
 
	self setChartDefinition.

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html.
				jsEcElement := self createEcSearchAreaJsObject.
				jsEcElement callInitIconFunction; callInitElementFunction;callInitElementSiblingFunction.
				html script: jsEcElement.].

	self showChartExecuted ifFalse: [^self renderComponentButChartOn: html]."render a component if the chart is not rendered. Used in one case"
	self resetShowChartExecuted.

	self setPropertiesTo: chartDefinition distribution.
	chartDefinition dateGroupName: self getDateGroup. 

	(self componentValueAt: 'queryBlock-error') ifNotNil: [:value | ^self].
  
	chartDefinition renderOn: html.