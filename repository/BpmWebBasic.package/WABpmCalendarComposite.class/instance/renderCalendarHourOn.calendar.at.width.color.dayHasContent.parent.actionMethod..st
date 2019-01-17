other
renderCalendarHourOn: html calendar: calendar at: aPoint width: width color: color dayHasContent: aBoolean parent: sewafWebComposite actionMethod: actionMethod
	"The receiver draw a vertical working day graph from <startDate> to <endDate> where <workingDays> dictionary key's is the day number and value is the color intensity.
	The width of each rectangle day is <width> and color is <color>"
	| currentPosition |

	html svgGroup transform: ( 'translate(', aPoint x printString, ',', aPoint y printString, ')'); with: [

		currentPosition := aPoint.

		0 to: 11 do: [:hourIndex |
			self renderHourRectangleOn: html hour: hourIndex calendar: calendar at: currentPosition width: width color: color dayHasContent: aBoolean parent: sewafWebComposite actionMethod: actionMethod.
			currentPosition := (currentPosition x + width + 15) @ currentPosition y.
		].
		currentPosition := aPoint x @ (currentPosition y + 100).
		12 to: 23 do: [:hourIndex | 
			self renderHourRectangleOn: html hour: hourIndex calendar: calendar at: currentPosition width: width color: color dayHasContent: aBoolean parent: sewafWebComposite actionMethod: actionMethod.
			currentPosition := (currentPosition x + width + 15) @ currentPosition y.
		].
	].