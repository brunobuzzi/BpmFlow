other
changePassword

	informationComponent ifNil: [informationComponent := SewafInformComponent parent: self].
	(self session user password = (searchValues at: 'current-pwd') sha256Sum) 
	ifFalse: [^informationComponent information: ('Invalid Current Password !!!' translateIn: self session) color: 'red'].

	((searchValues at: 'repeat-new-pwd') = (searchValues at: 'new-pwd')) 
	ifFalse: [^informationComponent information:  ('New Password and Repeat New Password must be equal !!!' translateIn: self session) color: 'red'].

	self session user password: (searchValues at: 'new-pwd').

	^informationComponent information: ('Password has been changed !!!' translateIn: self session) color: 'green'