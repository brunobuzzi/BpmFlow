render xpdl
renderXpdlLane: aXPDLLaneNode on: html
	| laneNameCenter aPoint |

	aPoint := aXPDLLaneNode getXcoordinate @ aXPDLLaneNode getYcoordinate.
	laneNameCenter := ((aPoint x - 20) @ (aPoint y + (aXPDLLaneNode getHeight // 2) + 35)).

	"render role name rectangle"
	self renderSvgElementOn: html 
			tag: html svgRectangle 
			attributes: (aXPDLLaneNode asSvgSmallGeometryFor: self) 
			with: [(self getTooltipForLane: aXPDLLaneNode) ifNotNil: [:tooltip | html tag: 'title' with: tooltip]].

	"render the main lane rectabgle which contains bpmn elements"
	self renderSvgElementOn: html 
			tag: html svgRectangle 
			attributes: (aXPDLLaneNode asSvgGeometryFor: self) 
			with: [].

	self renderTextOn: html text: aXPDLLaneNode getName at: laneNameCenter textSizePx: '14px' transform: 'rotate(-90 ', laneNameCenter x printString, ' ', laneNameCenter y printString, ')'.