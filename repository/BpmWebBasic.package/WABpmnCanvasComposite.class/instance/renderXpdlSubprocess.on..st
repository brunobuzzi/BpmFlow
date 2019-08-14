render xpdl
renderXpdlSubprocess: aXPDLSubProcessNode on: html
	| center aPoint |

	aPoint := aXPDLSubProcessNode getXcoordinate @ aXPDLSubProcessNode getYcoordinate.
	center := (aPoint x + (aXPDLSubProcessNode extent x // 2)) @ (aPoint y + 15 + (aXPDLSubProcessNode extent y // 2)).

	self renderXpdlActivity: aXPDLSubProcessNode on: html.

	"when do not render sub process instance when click on sub process task, if the user has permissions then it has access to the assignment to see the process map"

	model isProcessInstance 
	ifTrue: [self renderSubProcessInnerIconOn: html at: center]
	ifFalse: [html anchor 
						callback: [self selectSubProcessToRender: aXPDLSubProcessNode getName];
						with: [self renderSubProcessInnerIconOn: html at: center].
	].