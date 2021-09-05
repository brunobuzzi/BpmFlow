render
renderContentOn: html
	| envName |

	html div id: 'flags'; with: [self renderLanguageFlagsOn: html].

	html div id: 'header'; with:[html header with: ('Start Process without Login' translateIn: self session)].

	envName := self requestContext request at: 'environment' ifAbsent: [''].
	environment := self getBpmEnvironmentNamed: envName.
	environment ifNil: [^self renderNoEnvironmentSelectedOn: html].

	html div id: 'anonymous-links'; with: [
		html div with: [self renderAnonymousProcessesListOn: html].
	].