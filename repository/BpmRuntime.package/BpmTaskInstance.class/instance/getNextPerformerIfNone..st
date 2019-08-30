performers
getNextPerformerIfNone: aBlock
	"The receiver answer the next <performer> that is working now"

	^performersRegistry getNextPerformerIfNone: aBlock