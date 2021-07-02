fetch instances
fetchUnIndexedFormsInstancesOn: formInstances from: startIndex to: endIndex
	| filteredCollection realEndIndex |

	filteredCollection := (summary selectFormsInstancesWithPermissionsFrom: formInstances) asSortedCollection: [:a :b | b modifiedTime <= a modifiedTime].

	(startIndex > filteredCollection size) ifTrue: [^self].
	realEndIndex := (endIndex > filteredCollection size) ifTrue: [filteredCollection size] ifFalse: [endIndex]. 

	filteredCollection := filteredCollection copyFrom: startIndex to: realEndIndex.

	instancesReadStream := ReadStreamPortable on: filteredCollection