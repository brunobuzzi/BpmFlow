other
renderHourRectangleOn: html hour: intHour calendar: calendar at: aPoint width: width color: color dayHasContent: aBoolean parent: sewafWebComposite actionMethod: actionMethod
	"The receiver draw a vertical working day graph from <startDate> to <endDate> where <workingDays> dictionary key's is the day number and value is the color intensity.
	The width of each rectangle day is <width> and color is <color>"
	| hourColor currentTime printEndTime |


	currentTime := Time fromString: intHour printString ,':00'.
	printEndTime := (Time fromString: intHour printString ,':59') printString.
	hourColor := (calendar timeIntervalExistFrom: currentTime to: (currentTime addSeconds: (60*60) - 1)) ifTrue: ['brown'] ifFalse: ['green'].
	self renderRoundRectangleOn: html at: aPoint width: width height: width rx: 5 ry: 5 strokeWidth: '1px' stroke: 'red' fillColor: hourColor opacity: '1'.
	aBoolean
	ifTrue: [self renderLinkTextOn: html label: currentTime printString callback: [sewafWebComposite perform: actionMethod with: currentTime] at: ((aPoint x + 5) @ (aPoint y + 12)) textSizePx: '10px' color: 'white'.
				self renderLinkTextOn: html label: printEndTime callback: [sewafWebComposite perform: actionMethod with: currentTime] at: ((aPoint x + 5) @ (aPoint y + width - 5)) textSizePx: '10px' color: 'white'].