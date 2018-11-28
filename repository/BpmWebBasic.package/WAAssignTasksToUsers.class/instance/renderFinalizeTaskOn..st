other
renderFinalizeTaskOn: html

	self assignmentHasFinalized ifTrue: [^self].

	html anchor 
			callback: [self generateNextTasks];
			class: 'cursor-pointer';
			with: [html image url: (SEWAFIconLibrary / #emailsendiconPng); 
			title: ('Generate Next Tasks' translateFor: self session user);
			altText: ('Generate Next Tasks' translateFor: self session user)].