other
register
	| application |

	WARouteBuilder initialize. "issue #379 and #382"
	WAAdmin unregister: 'orbeon-gemstone-api'.

	application := WAAdmin register: self at: 'orbeon-gemstone-api'.