inbox
filterObjectCollection: anUnorderedCollection by: aBpmEnvironment
	"The receiver filter by environment <aBpmEnvironment> name the indexable collection <anUnorderedCollection> using <aGsQuery> "
	| gsQuery envName |

	envName := aBpmEnvironment name.

	gsQuery := GsQuery fromString: 'each.bpmEnvironmentName = envName' on: anUnorderedCollection.

	gsQuery bind: 'envName' to: envName.

	^gsQuery queryResult asOrderedCollection