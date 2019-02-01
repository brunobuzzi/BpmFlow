other
renderContentOn: html

	(self hasComponentValueAt: 'Error')
	ifTrue: [ | alertString |
		selectedLateralItem := nil.
		alertString := ('Application Name [' translateIn: self session), (self componentValueAt: 'Error'), ('] already used !' translateIn: self session).
		html document addLoadScript: (html javascript alert: alertString)].

	super renderContentOn: html.

	self removeValueNamed: 'Error'.