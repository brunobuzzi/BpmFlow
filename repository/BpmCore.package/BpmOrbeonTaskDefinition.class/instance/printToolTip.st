other
printToolTip
	"The receiver answer a tooltip for the SVG diagram"
	| taskComponent |

	[taskComponent := self getComponentClass] on: NoComponentFoundException do: [:ex | ^'Orbeon Component NOT found !!!'].

	^taskComponent printStructure