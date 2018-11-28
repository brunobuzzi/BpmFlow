execution
endEventsSize
	"The receiver answer the number of triggered end events"
 
	^endEvents inject: 0 into:  [:sum :collection | sum + collection size]