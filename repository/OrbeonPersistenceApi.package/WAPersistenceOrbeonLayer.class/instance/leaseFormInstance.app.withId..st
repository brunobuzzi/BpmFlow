service-lock
leaseFormInstance: formName app: app withId: id 
	"This method is called by Orbeon when:
		* A user click 'Duplicate' in a Form Instance in the Form Runner
		* A user click 'Lease' or 'Reliquish Lease' in a Form Instance in the Form Runner"

	<lock>
	<path: '/crud/{2}/{1}/data/{3}/data.xml'>
	| apiOperation timeoutValue |
	timeoutValue := self requestContext request headerAt: 'timeout'.
	apiOperation := OrbeonFormInstanceGetLeaseApi 
				newOn: self systemRoot
				withXml: (self requestContext request bodyDecodeUsing: 'utf-8')
				id: id.
	apiOperation
		appName: app;
		formName: formName;
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	(app = 'orbeon' and: [formName = 'builder']) 
		ifTrue: [^self requestContext response headerAt: 'timeout' put: 'Second-600'].	"issue #189 & #190"
	timeoutValue ifNotNil: [apiOperation setTimeoutFromString: timeoutValue].
	^apiOperation 
		doItIfRejected: [:instance :xmlRejection | self rejectLeaseFor: instance withXml: xmlRejection]