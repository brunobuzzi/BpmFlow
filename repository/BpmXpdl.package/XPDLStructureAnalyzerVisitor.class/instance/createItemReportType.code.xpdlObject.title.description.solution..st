warning items creation
createItemReportType: type code: code xpdlObject: aXPDLObject title: title description: description solution: solution
	"The receiver create an Item Report with type <type> code <code> title <title> description <description> and possible solution <solution>"

	^self createItemReportType: type code: code xpdlObject: aXPDLObject isResumable: false title: title description: description solution: solution