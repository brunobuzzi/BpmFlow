browsing
renderItemComponentOn: html
	| columnsTemplate width |

	selectedLateralItem ifNil: [^self].
	width := (100 // selectedLateralItem chartsPerColumn) printString, '%'.
	columnsTemplate := ''.
	1 to: selectedLateralItem chartsPerColumn do: [:index | columnsTemplate := columnsTemplate, width, ' ']. 

	html div style: ('width: 100%; display: grid; grid-template-columns: ', columnsTemplate, ';') ;with: [
	self getCurrentDashboardItemsAsOrderedCollection keysAndValuesDo: [:index :dashboardInstance | | chartDefinition |
			chartDefinition := dashboardInstance itemDefinition chartDefinition.
			html div style: 'display: inline-grid; background-color: white; margin: 2px;'; with: [
				renderChartOptions 
				ifTrue: [html div with: [self renderActionsOn: html forChart: dashboardInstance itemDefinition in: dashboardInstance]].
				html div with: [chartDefinition renderReport: dashboardInstance report on: html].
			].
		].
	].