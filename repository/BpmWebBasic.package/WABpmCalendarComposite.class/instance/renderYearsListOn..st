other
renderYearsListOn: html
	| yearsToRender |

	yearsToRender := Array with: (Date today year - 1) with: Date today year with: (Date today year + 1).

	html div class: 'calendar-year-list'; with: [
		yearsToRender do: [:intYear| | bkColor |
			bkColor := (intYear = selectedYear) ifTrue: ['calendar-year-selected'] ifFalse: ['calendar-year-unselected'].
			html div class: ('margin-left-5px calendar-year ', bkColor); with: [
				html anchor 
							class: 'cursor-pointer';
							callback: [self selectYear: intYear];
								with: [html text: intYear]
			]
		].
	].