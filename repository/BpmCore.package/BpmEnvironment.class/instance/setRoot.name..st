private
setRoot: anAbstractSystemRoot name: aString

	name := aString.

	systemRoot := anAbstractSystemRoot.

	systemRoot registerEnvironment: self ifPresent: [ImproperBpmOperationException signal: 'BpmEnvironment named [', name, '] is already registered !!!']