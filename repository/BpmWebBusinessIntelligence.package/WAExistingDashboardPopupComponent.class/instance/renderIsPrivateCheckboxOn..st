other
renderIsPrivateCheckboxOn: html

	html label attributeAt: 'for' put: 'isPrivate'; with: ('Is Private ?' translateIn: self session).
	html checkbox 
			attributeAt: 'id' put: 'isPrivate'; 
			callback: [:value | parent selectedLateralItem isPrivate: value]; 
			value: parent selectedLateralItem isPrivate; 
			class: 'display-block'.