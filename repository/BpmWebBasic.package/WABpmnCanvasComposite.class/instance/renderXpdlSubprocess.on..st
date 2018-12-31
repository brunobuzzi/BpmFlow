render xpdl
renderXpdlSubprocess: aXPDLSubProcessNode on: html
	| center aPoint |

	aPoint := aXPDLSubProcessNode getXcoordinate @ aXPDLSubProcessNode getYcoordinate.
	center := (aPoint x + (aXPDLSubProcessNode extent x // 2)) @ (aPoint y + 15 + (aXPDLSubProcessNode extent y // 2)).

	self renderXpdlActivity: aXPDLSubProcessNode on: html.


	html anchor 
		callback: [self selectSubProcessToRender: aXPDLSubProcessNode getName];
		with: [self renderSubProcessInnerIconOn: html at: center].