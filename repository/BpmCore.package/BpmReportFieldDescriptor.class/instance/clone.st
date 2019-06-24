clone
clone
	| newDescriptor |

	newDescriptor := self class new.

	newDescriptor 
		appName: appName;
		procName: procName;
		fieldName: fieldName;
		startTimeStamp: startTimeStamp;
		endTimeStamp: endTimeStamp;
		satisfyingBlock: satisfyingBlock.

	^newDescriptor