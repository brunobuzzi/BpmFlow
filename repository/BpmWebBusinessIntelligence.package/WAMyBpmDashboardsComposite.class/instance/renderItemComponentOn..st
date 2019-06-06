browsing
renderItemComponentOn: html
	| columnsTemplate width |

	selectedLateralItem ifNil: [^self].
	width := (100 // selectedLateralItem chartsPerColumn) printString, '%'.
	columnsTemplate := ''.
	1 to: selectedLateralItem chartsPerColumn do: [:index | columnsTemplate := columnsTemplate, width, ' ']. 

	html div style: ('width: 100%; display: grid; grid-template-columns: ', columnsTemplate, ';') ;with: [
		self getCurrentDashboardItems do: [:eachCollection | 
			eachCollection keysAndValuesDo: [:index :dashboardInstance | | chartDefinition |
				chartDefinition := dashboardInstance itemDefinition chartDefinition.
				html div style: 'display: inline-grid;'; with: [
					html div with: [self renderActionsOn: html forChart: chartDefinition in: dashboardInstance].
					html div with: [chartDefinition renderReport: dashboardInstance report on: html].
				].
			].
		].
	].