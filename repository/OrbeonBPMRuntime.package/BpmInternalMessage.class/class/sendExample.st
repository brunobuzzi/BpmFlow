other
sendExample
	| message |

	message := BpmInternalMessage newFromUser: (BpmUser getUserNamed: 'admin').
	message
		to: (OrderedCollection withAll: BpmRole getAllRoles);
		subject: 'BPM task message';
		body: 'Hello Word. This is a text message for BPM. Good luck on you job ! Hello Word. This is a text message for BPM. Good luck on you job Hello Word. This is a text message for BPM. Good luck on you job Hello Word. This is a text message for BPM. Good luck on you job Hello Word. This is a text message for BPM. Good luck on you job Hello Word. This is a text message for BPM. Good luck on you job Hello Word. This is a text message for BPM. Good luck on you job Hello Word. This is a text message for BPM. Good luck on you job';
		send