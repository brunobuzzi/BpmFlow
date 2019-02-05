other
removeUnusedCalendars
	"The receiver remove all calendars that are no part of current environments"
	| allEnvironments |

	allEnvironments := self defaultEnvironmentClass cache. "current environments"

	(self cache reject: [:calendar | allEnvironments identityIncludes: calendar bpmEnvironment]) do: [:calendar | calendar removeFromCache]