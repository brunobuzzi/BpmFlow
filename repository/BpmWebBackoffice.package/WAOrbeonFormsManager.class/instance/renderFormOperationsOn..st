other
renderFormOperationsOn: html

	html submitButton callback: [self showFormDefinitions]; with: ('Show Form Definitions' translateIn: self session).

"These two operation are deprecated since there a Orbeon Persistence Layer now and synchronization is 100% with Orbeon "

"	html submitButton callback: [self importNewApplications]; with: ('Import New Applications' translateIn: self session).
	html submitButton callback: [self updateSelectedApplications]; with: ('Update Selected Applications' translateIn: self session)."