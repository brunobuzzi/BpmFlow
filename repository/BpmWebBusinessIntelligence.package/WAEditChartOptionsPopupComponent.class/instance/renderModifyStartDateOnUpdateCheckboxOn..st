chart options
renderModifyStartDateOnUpdateCheckboxOn: html

	html label attributeAt: 'for' put: 'modifyStartDateOnUpdate'; with: ('Modify Start Date on Update ?' translateIn: self session).
	html checkbox 
			attributeAt: 'id' put: 'modifyStartDateOnUpdate'; 
			callback: [:aBoolean | model modifyStartDateOnUpdate: aBoolean];
			value: model modifyStartDateOnUpdate;
			class: 'display-block'.