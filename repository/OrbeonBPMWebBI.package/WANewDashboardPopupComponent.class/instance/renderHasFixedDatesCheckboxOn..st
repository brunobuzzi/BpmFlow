other
renderHasFixedDatesCheckboxOn: html

	html checkbox attributeAt: 'id' put: 'hasFixedDates'; callback: [:aBooelan | self addValue: aBooelan named:  'hasFixedDates']"; value: self model isActive".
	html label attributeAt: 'for' put: 'hasFixedDates'; with: ('HasFixedDates ?' translateFor: self session user).