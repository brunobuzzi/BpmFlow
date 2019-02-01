list
renderDisplayTaskBoxModeOn: html

	html checkbox 
		class: 'float-left';
		attributeAt: 'id' put: 'transitionsDisplayModel';
		callback: [:value | self session user setTransitionsDisplayMode: value]; 
		value: self session user transitionDisplayModeIsExpanded.

	html label attributeAt: 'for' put: 'transitionsDisplayModel'; with: ('Display Task Mode - Expanded Box ?' translateIn: self session).