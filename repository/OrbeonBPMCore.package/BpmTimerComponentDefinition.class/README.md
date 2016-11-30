activationBlock - is a two argument block.

[:lastExecuteTime :currentTime | ]

Where <lastExecuteTime> is given by BpmArtifactInstance <creationTime> (a new BpmEventInstance is created each time the event is triggered so #creationTime is equal to "last executed time").

<currentTime> in most cases it will be equal to <TimeStamp now> but an argument was added to have more flexibility.