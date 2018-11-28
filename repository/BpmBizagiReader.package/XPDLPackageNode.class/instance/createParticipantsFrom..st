other
createParticipantsFrom: aXMLDocument

	aXMLDocument allElementsNamed: 'Participant' do: [:xmlParticipantNode | | newParticipant |
		newParticipant := XPDLParticipantNode new 
								xmlSegment: xmlParticipantNode;
								id: (xmlParticipantNode attributeAt: 'Id');
								name: (xmlParticipantNode attributeAt: 'Name');
								type: ((xmlParticipantNode findElementNamed: 'ParticipantType') ifNotNil: [:node | node attributeAt: 'Type']);
								yourself.

		self addParticipant: newParticipant.].

	^participants