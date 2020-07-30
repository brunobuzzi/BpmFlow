api
generateLog
	"The receiver collect all generated elements in the execution of <BpmProcessInstance> <bpmProcess> as <BpmExecutionLogEntry> objects and store them on <logEntries> collection"
	| collectorBlock artifacts |

	artifacts := OrderedCollection new.

	collectorBlock := [:collection | collection do: [:each | logEntries addAll: each asLogEntry]].

	bpmProcess storeArtifactsToLogOn: artifacts.

	logEntries := (artifacts collect: [:each | each asLogEntry]) asSortedCollection: [:a :b | a getTimeStamp <= b getTimeStamp].