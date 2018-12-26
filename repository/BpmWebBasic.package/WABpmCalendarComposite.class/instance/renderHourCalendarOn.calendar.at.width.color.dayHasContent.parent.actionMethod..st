other
renderHourCalendarOn: html calendar: calendar at: aPoint width: width color: color dayHasContent: aBoolean parent: sewafWebComposite actionMethod: actionMethod
	"The receiver draw a vertical working day graph from <startDate> to <endDate> where <workingDays> dictionary key's is the day number and value is the color intensity.
	The width of each rectangle day is <width> and color is <color>"
	| currentPosition  hourColor |

	html svgGroup transform: ( 'translate(', aPoint x printString, ',', aPoint y printString, ')'); with: [

		currentPosition := aPoint.

		0 to: 11 do: [:hourIndex | | value rectHour currentTime |
			currentTime := Time fromString: hourIndex printString ,':00'.
			hourColor := (calendar timeIntervalExistFrom: currentTime to: (currentTime addSeconds: (60*60) - 1)) ifTrue: ['brown'] ifFalse: ['green'].
			rectHour := self renderRoundRectangleOn: html at: currentPosition width: width height: width rx: 5 ry: 5 strokeWidth: '1px' stroke: 'red' fillColor: hourColor opacity: '1'.
			(aBoolean and: [value ~= 0]) 
			ifTrue: [self renderLinkTextOn: html label: currentTime printString callback: [sewafWebComposite perform: actionMethod with: currentTime] at: ((currentPosition x + 5) @ (currentPosition y + 12)) textSizePx: '10px' color: 'white']. 
			"draw the named of the days"
			currentPosition := (currentPosition x + width + 15) @ currentPosition y
		].

		currentPosition := aPoint x @ (currentPosition y + 100).
		12 to: 23 do: [:hourIndex | | value rectHour currentTime |
			currentTime := Time fromString: hourIndex printString ,':00'.
			hourColor := (calendar timeIntervalExistFrom: currentTime to: (currentTime addSeconds: (60*60) - 1)) ifTrue: ['brown'] ifFalse: ['green'].
			rectHour := self renderRoundRectangleOn: html at: currentPosition width: width height: width rx: 5 ry: 5 strokeWidth: '1px' stroke: 'red' fillColor: hourColor opacity: '1'.
			(aBoolean and: [value ~= 0]) 
			ifTrue: [self renderLinkTextOn: html label: currentTime printString callback: [sewafWebComposite perform: actionMethod with: currentTime] at: ((currentPosition x + 5) @ (currentPosition y + 12)) textSizePx: '10px' color: 'white']. 
			"draw the named of the days"
			currentPosition := (currentPosition x + width + 15) @ currentPosition y
		].
	].