performers
getCurrentPerformerIfNone: aBlock
	"The receiver answer the current <performer> that is working now"

	^performersRegistry getCurrentPerformerIfNone: aBlock