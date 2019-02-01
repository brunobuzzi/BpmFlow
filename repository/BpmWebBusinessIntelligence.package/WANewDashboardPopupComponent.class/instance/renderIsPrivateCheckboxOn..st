other
renderIsPrivateCheckboxOn: html

	html label attributeAt: 'for' put: 'isPrivate'; with: ('Is Private ?' translateIn: self session).
	html checkbox attributeAt: 'id' put: 'isPrivate'; callback: [:value | self addValue: value named: 'isPrivate']; value: (self componentValueAt: 'isPrivate'); class: 'display-block'.