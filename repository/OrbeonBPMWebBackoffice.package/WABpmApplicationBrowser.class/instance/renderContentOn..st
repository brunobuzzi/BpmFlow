other
renderContentOn: html

	(self hasComponentValueAt: 'Error')
	ifTrue: [ | alertString |
		selectedLateralItem := nil.
		alertString := ('Application Name [' translateFor: self session user), (self componentValueAt: 'Error'), ('] already used !' translateFor: self session user).
		html document addLoadScript: (html javascript alert: alertString)].

	super renderContentOn: html.

	self removeValueNamed: 'Error'.