form instances
formInstance_name: nameString amount: amountString time: timeString timeStamp: timeStampString date: dateString bool: boolString in: aBpmProcessInstance
	| arguments |

	arguments := OrderedCollection new
		add: nameString;
		add: amountString;
		add: timeString;
		add: timeStampString;
		add: dateString;
		add: boolString;
		asArray.

	^self formInstance_withValues: arguments in: aBpmProcessInstance