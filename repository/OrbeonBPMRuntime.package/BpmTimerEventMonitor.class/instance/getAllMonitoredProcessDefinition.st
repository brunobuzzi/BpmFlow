enumerating
getAllMonitoredProcessDefinition
	"The receiver answer a collection with all <BpmProcessDefinition> being monitored to create process instances automatically"
	| allMonitored |

	allMonitored := OrderedCollection new.
	monitoredProcessDefinitions do: [:proDictionary | 
		proDictionary do: [:procCollection | allMonitored addAll: procCollection ]].

	^allMonitored