process definition creation
generateProcessesAndStoreOnCache
	"The receiver answer <aCollection> of <BpmProcessDefinition>"

	^self processes collect: [:each | each addToCache]