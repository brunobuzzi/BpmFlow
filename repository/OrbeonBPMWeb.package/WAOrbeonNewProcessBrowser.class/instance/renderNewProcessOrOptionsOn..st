other
renderNewProcessOrOptionsOn: html

	html div class: 'centered-forms'; with: [
		html form with: [
			html fieldSet with: [
				html label attributeAt: 'for' put: 'application-or'; with: 'Application'.
				html select 
					list: (#(' '), ((self getUserApplications collect: [:each | each applicationName]) asSortedCollection difference: orApplications)); 
					title: 'Available Form Applications';
					attributeAt: 'id' put: 'application-or';
					callback: [:value | orApplication := value].
				html submitButton callback: [self addOrApplication] ; with: ('Add Application' translateFor: self session user).
				html submitButton callback: [self removeAllOr] ; with: ('Remove All' translateFor: self session user).
			].
			self renderApplicationContextOn: html forApplication: orApplications withSeparator: ' | '.
			self renderOrDetailsOn: html.
		].
	].