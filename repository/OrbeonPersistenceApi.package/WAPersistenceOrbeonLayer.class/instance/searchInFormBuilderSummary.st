service-post
searchInFormBuilderSummary
	"This service is called by Orbeon when rendering an Orbeon Form Builder Summary page and
	answer a well formatted XML with the result of the query received in the request.
	This XML is going to be displayed in the Orbeon Form Builder Summary page"

	<post>
	<produces: 'application/xml'>
	<path: '/search/orbeon/builder'>
	| searchApi |
	searchApi := OrbeonDefinitionSearchApi newOn: self systemRoot
				withXml: (self requestContext request bodyDecodeUsing: 'utf-8').
	searchApi
		setPageSize;
		setPageNumber;
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	^searchApi doIt