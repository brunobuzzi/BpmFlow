other
renderCalendarOn: html calendarDays: calendarDays at: aPoint from: startDate to: endDate width: width color: color dayHasContent: aBoolean parent: sewafWebComposite actionMethod: actionMethod
	"The receiver draw a vertical working day graph from <startDate> to <endDate> where <workingDays> dictionary key's is the day number and value is the color intensity.
	The width of each rectangle day is <width> and color is <color>"
	| numberOfDays currentPosition weekCounter monthName sortedWorkingDays dayColor |

	weekCounter := 0.
	sortedWorkingDays := calendarDays asSortedCollection.

	html svgGroup transform: ( 'translate(', aPoint x printString, ',', aPoint y printString, ')'); with: [
		numberOfDays := endDate asDays - startDate asDays.
		currentPosition := aPoint.

		0 to: numberOfDays do: [:dayIndex | | value currentDate |
			currentDate := startDate addDays: dayIndex.
			(currentDate monthName = monthName) 
			ifFalse: [monthName := currentDate monthName. 
						"draw the name of the months"
						currentPosition := (currentPosition x + width + 10) @ currentPosition y.
						self renderTextOn: html text: (monthName first: 3) at: ((currentPosition x + 10) @ (aPoint y - 10)).].
			weekCounter := weekCounter + 1.
			dayColor := (calendarDays includesKey: currentDate dayOfYear) ifTrue: ['brown'] ifFalse: ['green'].
			(currentDate day = 1) 
				ifFalse: [self renderRectangleOn: html at: currentPosition width: width height: width stroke: color fillColor: dayColor] 
				ifTrue: [self renderRoundRectangleOn: html at: currentPosition width: width height: width rx: 5 ry: 5 strokeWidth: '1px' stroke: 'red' fillColor: dayColor].
			(aBoolean and: [value ~= 0]) 
			ifTrue: [self renderLinkTextOn: html label: currentDate dayOfMonth printString callback: [sewafWebComposite perform: actionMethod with: currentDate] at: ((currentPosition x + 5) @ (currentPosition y + 12)) textSizePx: '10px' color: 'white'.]. 
			"draw the named of the days"
			((currentDate month = 1 or:[(currentDate month = 7)]) "and: [weekCounter odd]")  "is the first column ?"
			ifTrue: [self renderTextOn: html text: (currentDate dayOfWeekName first: 3) at: (aPoint x @ (currentPosition y + 12))]. 
			(weekCounter = 7)
			ifTrue: [weekCounter := 0.
				dayIndex odd ifTrue: [self renderTextOn: html text: currentDate day printString at: (currentPosition x @ (currentPosition y + width + 12))].
				currentPosition := (currentPosition x + width + 5) @ aPoint y] 
			ifFalse: [currentPosition := (currentPosition x) @ (currentPosition y + width + 5)].
		].
	].