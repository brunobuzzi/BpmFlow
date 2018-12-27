other
renderXpdlLane: aXPDLLaneNode on: html
	| rect laneNameCenter aPoint stroke color |

	stroke := 'black'.
	color := 'none'.
	aPoint := aXPDLLaneNode getXcoordinate @ aXPDLLaneNode getYcoordinate.
	laneNameCenter := ((aPoint x - 20) @ (aPoint y + (aXPDLLaneNode getHeight // 2) + 35)).
	"render main lane rectangle"
	rect := self renderRectangleOn: html at: aPoint width: aXPDLLaneNode getWidth height: aXPDLLaneNode getHeight stroke: stroke fillColor: color.
	"render role name rectangle"
	self renderRectangleOn: html at: ((aPoint x - 50) @ aPoint y) width: 50 height: aXPDLLaneNode getHeight stroke: stroke fillColor: color.
	self renderTextOn: html text: aXPDLLaneNode getName at: laneNameCenter textSizePx: '14px' transform: 'rotate(-90 ', laneNameCenter x printString, ' ', laneNameCenter y printString, ')'.

	^rect