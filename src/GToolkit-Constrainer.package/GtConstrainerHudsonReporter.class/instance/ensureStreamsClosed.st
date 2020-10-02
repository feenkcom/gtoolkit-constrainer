private
ensureStreamsClosed
	[ resultsStream ifNotNil: [ resultsStream close ] ] 
		on: Error 
		do: [ :anError |  Stdio stderr print: anError ].
	[ progressStream ifNotNil: [ progressStream close ] ] 
		on: Error 
		do: [ :anError |  Stdio stderr print: anError ].