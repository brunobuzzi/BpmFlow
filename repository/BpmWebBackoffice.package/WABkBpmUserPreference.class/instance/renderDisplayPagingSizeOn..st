other
renderDisplayPagingSizeOn: html

	html label attributeAt: 'for' put: 'lateralPaging'; with: ('Lateral List Paging Size' translateIn: self session).
	html textInput 
		style: 'width: 35px;';
		attributeAt: 'id' put: 'lateralPaging'; 
		callback: [:value | self setLateralPagingWith: value];
		value: self session user lateralListPagingSize.

	html label attributeAt: 'for' put: 'regularPaging'; with: ('Regular List Paging Size' translateIn: self session).
	html textInput 
		style: 'width: 35px; display: block;';
		attributeAt: 'id' put: 'regularPaging'; 
		callback: [:value | self setRegularPagingWith: value];
		value: self session user regularListPagingSize.