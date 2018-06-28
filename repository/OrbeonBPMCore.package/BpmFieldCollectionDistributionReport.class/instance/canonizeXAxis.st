other
canonizeXAxis
	"The receiver canonize the keys (dates) of all it's reports. All reports must have the same keys (dates) in order to be rendered correclty.
	If a report does not included aDate that is included in other report then it put 0 at the missing date."
	| allDateKeys |

	allDateKeys := OrderedCollection new.

	"get keys (dates) from all receiver's report "
	fieldDistributions do: [:eachFieldReport | allDateKeys addAll: (eachFieldReport rootDistributionKeys collect: [:dateString | Date fromString: dateString])].

	allDateKeys := allDateKeys collect: [:eachDate | eachDate printString]. "convert keys from Date to String"

	"add missing keys to each report maintaining key order by date"
	fieldDistributions do: [:eachFieldReport | 
		eachFieldReport canonizeWithNewKeys: (allDateKeys difference: eachFieldReport rootDistributionKeys)].