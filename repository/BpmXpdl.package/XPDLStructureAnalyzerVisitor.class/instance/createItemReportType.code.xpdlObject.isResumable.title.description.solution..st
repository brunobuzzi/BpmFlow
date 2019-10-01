warning items creation
createItemReportType: type code: code xpdlObject: aXPDLObject isResumable: aBoolean title: title description: description solution: solution
	"The receiver create an Item Report with type <type> code <code> title <title> description <description> and possible solution <solution>"

	^self xpdlItemReportClass new 
				type: type;
				code: code;
				offendingXpdlObject: aXPDLObject;
				isImportResumable: aBoolean;
				title: title;
				description: description;
				solution: solution;
				yourself