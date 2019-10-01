render xpdl
renderXpdlTaskSend: aXPDLTaskSendNode on: html
	| rectCorner |

	self renderXpdlActivity: aXPDLTaskSendNode on: html.

	rectCorner := (aXPDLTaskSendNode getXcoordinate + aXPDLTaskSendNode getWidth - 30) @ (aXPDLTaskSendNode getYcoordinate + 5).
	"render envelope rectangle"

	((mainPanel class == WAProcessDefinitionBrowser) and: [(self session user getAllProcessDefinitionIn: self session bpmEnvironment) identityIncludes: aXPDLTaskSendNode getTargetProcessDefinition])
	ifTrue: [html anchor 
			callback: [mainPanel relatedProcess: aXPDLTaskSendNode getTargetProcessDefinition];
			with: [self renderRectangleOn: html at: rectCorner width: 21 height: 12 stroke: 'black' fillColor: 'darkred'.
					"render envelope line 1"
					self renderLineOn: html from: rectCorner to: ((rectCorner x + 11) @ (rectCorner y + 6)) widthPx: 1 stroke: 'black' fillColor: 'black'.
					"render envelope line 2"
					self renderLineOn: html from: ((rectCorner x + 21) @ (rectCorner y)) to: ((rectCorner x + 11) @ (rectCorner y + 6)) widthPx: 1 stroke: 'black' fillColor: 'black'.
			]
	]
	ifFalse: [self renderRectangleOn: html at: rectCorner width: 21 height: 12 stroke: 'black' fillColor: 'darkred'.
				"render envelope line 1"
				self renderLineOn: html from: rectCorner to: ((rectCorner x + 11) @ (rectCorner y + 6)) widthPx: 1 stroke: 'black' fillColor: 'black'.
				"render envelope line 2"
				self renderLineOn: html from: ((rectCorner x + 21) @ (rectCorner y)) to: ((rectCorner x + 11) @ (rectCorner y + 6)) widthPx: 1 stroke: 'black' fillColor: 'black'.
	]