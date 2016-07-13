other
renderFormOperationsOn: html

	html submitButton callback: [self showFormDefinitions]; with: ('Show Form Definitions' translateFor: self session user).

"These two operation are deprecated since there a Orbeon Persistence Layer now and synchronization is 100% with Orbeon "

"	html submitButton callback: [self importNewApplications]; with: ('Import New Applications' translateFor: self session user).
	html submitButton callback: [self updateSelectedApplications]; with: ('Update Selected Applications' translateFor: self session user)."