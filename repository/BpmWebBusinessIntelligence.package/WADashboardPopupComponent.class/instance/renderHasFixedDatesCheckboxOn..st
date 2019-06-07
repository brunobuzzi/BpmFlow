chart options
renderHasFixedDatesCheckboxOn: html

	html label attributeAt: 'for' put: 'hasFixedDates'; with: ('Has Fixed Dates ?' translateIn: self session).
	html checkbox attributeAt: 'id' put: 'hasFixedDates'; callback: [:aBooelan | self addValue: aBooelan named: 'hasFixedDates']; class: 'display-block'.