other
renderSecurityForComboOn: html for: analyzerClass title: title id: idName
	"The receiver render combo with the three possibles options to set embedded code security level (#high #medium #low) for each type of code (see BpmCodeAnalyzer subclasses).
	From this component is possible to set the security level but is NOT possible to set valid classes and methods (this has to be done by hand) for #medium and #high priority"

	html div with: [
		html label attributeAt: 'for' put: idName; with: (title translateIn: self session).
		html select 
			attributeAt: 'id' put: idName;
			list: self allCodeSecurityLevels; 
			callback: [:value | 
				parent selectedLateralItem setSecurityLevelTo: value asSymbol for: analyzerClass.
			];
			selected: (parent selectedLateralItem embeddedCodeSecurityLevelFor: analyzerClass).
		].