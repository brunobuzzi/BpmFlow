fetch fields
fetchFieldInstancesOn: fieldInstances
		| filteredCollection realEndIndex |

	summary setReturnedFormsSize: fieldInstances size.

	filteredCollection := (summary selectFormsInstancesWithPermissionsFrom: fieldInstances) asSortedCollection: [:a :b | b modifiedTime <= a modifiedTime].

	(self pageFrom > filteredCollection size) ifTrue: [^self].
	realEndIndex := (self pageTo > filteredCollection size) ifTrue: [filteredCollection size] ifFalse: [self pageTo]. 

	filteredCollection := filteredCollection copyFrom: self pageFrom to: realEndIndex.

	fieldsReadStreams := ReadStreamPortable on: filteredCollection.