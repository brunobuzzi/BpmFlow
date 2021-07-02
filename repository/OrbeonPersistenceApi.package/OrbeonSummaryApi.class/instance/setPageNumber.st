other
setPageNumber
	"The receiver extract the page number from the XMLDocument <xmlDocument>.
	This number is used for paging forms in Orbeon web pages.
	The page number is the current page to show.(The first time is 1).
	For example with 1 2 3 4 5 paging and each index with 10 forms --> page number = 3 --> display pages from 30 to 39"
	| pageNumberNodes pageNumberNode |

	pageNumberNodes := xmlDocument allElementsNamed: 'page-number'.
	pageNumberNodes isEmpty ifTrue: [^pageNumber := 1].

	pageNumberNode := pageNumberNodes last.
	pageNumberNode strings isEmpty ifTrue: [^pageNumber := 1].

	^pageNumber := Number fromString: pageNumberNode strings last