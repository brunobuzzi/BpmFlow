text
renderTextOn: html text: aString at: aPoint 
	"The receiver draw the string <aString> at <aPoint>"

	^self renderTextOn: html text: aString at: aPoint id: UUID new asString textSizePx: '10px' color: 'black'