list
renderDisplayOrbeonFormModeOn: html

	html checkbox 
		class: 'float-left';
		attributeAt: 'id' put: 'viewForm';
		callback: [:value | self session user orbeonWebIsLinked: value]; 
		value: self session user orbeonWebIsLinked.

	html label attributeAt: 'for' put: 'viewForm'; with: ('Display Orbeon Forms Embedded' translateFor: self session user).