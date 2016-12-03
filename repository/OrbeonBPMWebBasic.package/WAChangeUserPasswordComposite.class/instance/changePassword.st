other
changePassword

	informationComponent ifNil: [informationComponent := SewafInformComponent parent: self].
	(self session user password = (searchValues at: 'current-pwd')) 
	ifFalse: [^informationComponent information: ('Invalid Current Password !!!' translateFor: self session user) color: 'red'].

	((searchValues at: 'repeat-new-pwd') = (searchValues at: 'new-pwd')) 
	ifFalse: [^informationComponent information:  ('New Password and Repeat New Password must be equal !!!' translateFor: self session user) color: 'red'].

	self session user password: (searchValues at: 'new-pwd').

	^informationComponent information: ('Password has been changed !!!' translateFor: self session user) color: 'green'