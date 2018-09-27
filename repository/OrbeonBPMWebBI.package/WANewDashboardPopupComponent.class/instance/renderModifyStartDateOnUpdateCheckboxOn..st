other
renderModifyStartDateOnUpdateCheckboxOn: html

	html label attributeAt: 'for' put: 'modifyStartDateOnUpdate'; with: ('Modify Start Date on Update ?' translateFor: self session user).
	html checkbox attributeAt: 'id' put: 'modifyStartDateOnUpdate'; callback: [:aBoolean | self addValue: aBoolean named: 'modifyStartDateOnUpdate']"; value: self model isActive"; class: 'display-block'.