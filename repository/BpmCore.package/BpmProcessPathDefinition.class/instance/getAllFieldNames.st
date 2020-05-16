other
getAllFieldNames

	^tasks inject: OrderedCollection new into: [:all :each | all addAll: each getFieldNames. all]