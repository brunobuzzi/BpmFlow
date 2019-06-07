chart options
renderModifyStartDateOnUpdateCheckboxOn: html

	html label attributeAt: 'for' put: 'modifyStartDateOnUpdate'; with: ('Modify Start Date on Update ?' translateIn: self session).
	html checkbox 
			attributeAt: 'id' put: 'modifyStartDateOnUpdate'; 
			callback: [:aBoolean | self addValue: aBoolean named: 'modifyStartDateOnUpdate']; 
			class: 'display-block'.