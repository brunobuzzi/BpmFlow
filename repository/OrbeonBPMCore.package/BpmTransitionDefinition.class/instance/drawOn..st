svg
drawOn: aJasvgiBpmCanvas
	| transition coordinates |

	coordinates := OrderedCollection new.
	startArtifact isTaskDefinition ifTrue: [coordinates add: 160@40] ifFalse: [coordinates add: 50@40].
	endArtifact isTaskDefinition ifTrue: [coordinates add: 250@40] ifFalse: [coordinates add: 250@40].	

	transition := aJasvgiBpmCanvas 
						connectWith: coordinates asArray
						color: 'black'
						widthPx: '1px'.

	aJasvgiBpmCanvas addMarker: (JASVGIObject markerClass newArrowAt: 10@5 id: 'arrow' width: 10 height: 10).

	transition setMarkerEnd: 'arrow'.

	endArtifact roles ifNotEmpty:[:collection | aJasvgiBpmCanvas drawText: ('Rol: ', collection last name) at: 0@15 textSizePx: '15px' color: 'darkBlue'].

	aJasvgiBpmCanvas drawText: self printConditionToRun at: 5@30 textSizePx: '12px'.