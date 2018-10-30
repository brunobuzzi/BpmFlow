execution
endEventsAsOrderedCollection
	"The receiver answer the number of triggered end events"
 
	^endEvents inject: OrderedCollection new into:  [:all :eventsCollection | all addAll: eventsCollection. all]