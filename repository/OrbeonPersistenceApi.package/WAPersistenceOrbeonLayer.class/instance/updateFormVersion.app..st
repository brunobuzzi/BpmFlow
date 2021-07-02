service-post
updateFormVersion: formName app: app 
	"This method is called by Orbeon when a Form Definition (inside the Builder) is about to be Published.
	This method answer the latest version of the form definition <formName> in application <app>.
	Using the header <orbeon-form-definition-version> to set the version number.
	It also called when a new Form Instance page is about to be displayed (app/form/new)"
	| apiOperation |
	<post>
	<produces: 'application/xml'>
	<path: '/crud/{2}/{1}/form/form.xhtml'>

	self halt.