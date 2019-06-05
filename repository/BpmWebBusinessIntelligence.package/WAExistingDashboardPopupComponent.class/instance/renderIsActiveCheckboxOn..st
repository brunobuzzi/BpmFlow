other
renderIsActiveCheckboxOn: html

	html label attributeAt: 'for' put: 'isActive'; with: ('Is Active ?' translateIn: self session).
	html checkbox 
			attributeAt: 'id' put: 'isActive'; 
			callback: [:value | parent selectedLateralItem isActive: value]; 
			value: parent selectedLateralItem isActive; 
			class: 'display-block'.