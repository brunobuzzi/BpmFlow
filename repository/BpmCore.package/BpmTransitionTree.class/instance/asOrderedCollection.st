other
asOrderedCollection
	"Answer an <OrderedCollection> whose elements are those of the receiver
	(ordering is that of the #do: operation as implemented by the receiver).
	Implementation Note: Avoid OrderedCollection>>addAll:, because
	it sends (indirectly) #size, which is slow to calculate."
	| answer |

	answer := OrderedCollection new.
	self do: [:each | answer addLast: each].
	^answer