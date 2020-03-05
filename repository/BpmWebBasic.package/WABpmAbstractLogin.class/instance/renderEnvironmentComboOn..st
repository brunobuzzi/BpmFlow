other
renderEnvironmentComboOn: html

	self defaultEnvironmentClass areUsersMultiEnvironment ifFalse: [^self].

	html div id: 'environment-div'; with: [
		self renderEnvironmentComboOn: html for: (#(''), (self defaultEnvironmentClass cache collect: [:each | each name]) asSet asArray) asSortedCollection.
	].