fetch instances
fetchIndexedFormsInstancesOn: indexedCollection from: startIndex to: endIndex
	"This implementation has to be reimplemented because is very unperformant"
	| gsQuery btreePlusReadStream currentIndex resultCollection form |

	gsQuery := GsQuery fromString: 'each.modifiedTime <= timeNow'.
	gsQuery bind: 'timeNow' to: TimeStamp now.
	gsQuery on: indexedCollection.
	btreePlusReadStream := gsQuery reversedReadStream.

	currentIndex := 1.
	resultCollection := OrderedCollection new.
	[btreePlusReadStream atEnd not and:[currentIndex <= endIndex]] whileTrue: [ 
		form := btreePlusReadStream next.
		(currentIndex >= startIndex)
		ifTrue: [
			(summary selectFormsInstancesWithPermissionsFrom: (OrderedCollection with:form)) 
			ifNotEmpty: [:col | resultCollection addAll: col. 
										currentIndex := currentIndex + 1].
		]
		ifFalse: [currentIndex := currentIndex + 1].
	].

	instancesReadStream := ReadStreamPortable on: resultCollection