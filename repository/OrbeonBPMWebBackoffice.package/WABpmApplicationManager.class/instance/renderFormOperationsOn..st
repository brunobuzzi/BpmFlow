other
renderFormOperationsOn: html

	html submitButton 
		class: 'margin-right-20per';
		callback: [self newApplication]; 
		with: ('New Application' translateFor: self session user).

	html submitButton 
		callback: [self deleteApplication]; 
		with: ('Delete Application' translateFor: self session user).