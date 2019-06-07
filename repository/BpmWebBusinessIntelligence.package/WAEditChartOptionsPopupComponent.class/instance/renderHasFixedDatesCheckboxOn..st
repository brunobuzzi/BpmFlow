chart options
renderHasFixedDatesCheckboxOn: html

	html label attributeAt: 'for' put: 'hasFixedDates'; with: ('Has Fixed Dates ?' translateIn: self session).
	html checkbox attributeAt: 'id' put: 'hasFixedDates'; callback: [:aBooelan | model hasFixedDates: aBooelan]; value: model hasFixedDates; class: 'display-block'.