outbox
outboxMessagesIn: aBpmEnvironment 

	^self filterObjectCollection: outbox messages messages by: aBpmEnvironment