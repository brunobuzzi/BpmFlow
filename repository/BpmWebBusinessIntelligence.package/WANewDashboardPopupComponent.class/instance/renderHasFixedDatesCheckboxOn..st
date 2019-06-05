other
renderHasFixedDatesCheckboxOn: html

	html label attributeAt: 'for' put: 'hasFixedDates'; with: ('Has Fixed Dates ?' translateIn: self session).
	html checkbox attributeAt: 'id' put: 'hasFixedDates'; callback: [:aBooelan | self addValue: aBooelan named:  'hasFixedDates']"; value: self model isActive"; class: 'display-block'.