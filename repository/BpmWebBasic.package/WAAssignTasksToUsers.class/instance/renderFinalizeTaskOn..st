other
renderFinalizeTaskOn: html

	self assignmentHasFinalized ifTrue: [^self].

	html anchor 
			callback: [self generateNextTasks];
			class: 'cursor-pointer';
			with: [html image url: (SEWAFIconLibrary / #emailsendiconPng); 
			title: ('Generate Next Tasks' translateIn: self session);
			altText: ('Generate Next Tasks' translateIn: self session)].