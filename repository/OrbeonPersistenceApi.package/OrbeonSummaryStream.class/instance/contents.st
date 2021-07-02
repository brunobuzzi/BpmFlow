other
contents
	| contents |

	contents := OrderedCollection new.
	(instancesReadStream isNil and: [draftsReadStream isNil and: [fieldsReadStreams isNil and: [definitionsReadStream isNil]]]) ifTrue: [^contents].

	draftsReadStream ifNotNil: [contents addAll: draftsReadStream contents].
	instancesReadStream ifNotNil: [contents addAll: instancesReadStream contents].
	fieldsReadStreams ifNotNil: [contents addAll: fieldsReadStreams contents].
	definitionsReadStream ifNotNil: [contents addAll: definitionsReadStream contents].

	^contents