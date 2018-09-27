other
renderHasFixedDatesCheckboxOn: html

	html label attributeAt: 'for' put: 'hasFixedDates'; with: ('HasFixedDates ?' translateFor: self session user).
	html checkbox attributeAt: 'id' put: 'hasFixedDates'; callback: [:aBooelan | self addValue: aBooelan named:  'hasFixedDates']"; value: self model isActive"; class: 'display-block'.