other
setPageSize
	"The receiver extract the page size from the xml document <xmlDocument>.
	The page size set how many forms are displayed in a single page.
	This number is used for paging Orbeon Forms in Summaries"
	| pageSizeNodes pageSizeNode |

	pageSizeNodes := xmlDocument allElementsNamed: 'page-size'.
	pageSizeNodes isEmpty ifTrue: [^pageSize := 10].

	pageSizeNode := pageSizeNodes last.
	pageSizeNode strings isEmpty ifTrue: [^pageSize := 10].

	^pageSize := Number fromString: pageSizeNode strings last