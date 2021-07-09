other
renderEnvironmentComboOn: html

	self session systemRoot areUsersMultiEnvironment ifFalse: [^self].

	html div id: 'environment-div'; with: [
		self renderEnvironmentComboOn: html for: (#(''), (self session systemRoot getAllEnvironmentsNames)).
	].