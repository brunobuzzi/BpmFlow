other
getAllReports
	"Answer a collection with all reports of the receiver"

	^fieldDistributions collect: [:descriptionArray | self generateFieldReportFrom: descriptionArray]