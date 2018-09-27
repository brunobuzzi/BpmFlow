other
renderIsPrivateCheckboxOn: html

	html label attributeAt: 'for' put: 'isPrivate'; with: ('Is Private ?' translateFor: self session user).
	html checkbox attributeAt: 'id' put: 'isPrivate'; callback: [:value | self model isPrivate: value]; value: self model isPrivate; class: 'display-block'.