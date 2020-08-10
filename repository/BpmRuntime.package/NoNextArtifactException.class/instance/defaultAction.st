other
defaultAction
	"The receiver send a message to all users with to role in the <bpmArtifact> to notify the situation"
	| message toUsers |

	message := BpmProcessInternalMessage newFromApplicationIn: self getProcessInstance bpmEnvironment.

	toUsers := OrderedCollection new.
	bpmArtifact rolesDo: [:eachRole | eachRole usersDo: [:user | toUsers add: user]].

	message to: toUsers;
		subject: 'No Next Artifact to Run';
		applicationName: self getProcessInstance applicationName;
		processName: self getProcessInstance processName;
		processId: self getProcessInstance processId;
		createMessageBody;
		send