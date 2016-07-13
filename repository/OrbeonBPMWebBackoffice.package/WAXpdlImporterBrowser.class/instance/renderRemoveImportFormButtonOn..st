Updating
renderRemoveImportFormButtonOn: html

	"at least one import form has to be rendered"
	(numberOfProcess > 1) ifFalse: [^self]. 

	html anchor callback: [self removeImportProcessForm];
					with: [html image url: (SEWAFIconLibrary / #delete132Png); 
								altText: ('Remove Import Process Form' translateFor: self session user); 
								title: ('Remove Import Process Form' translateFor: self session user)].