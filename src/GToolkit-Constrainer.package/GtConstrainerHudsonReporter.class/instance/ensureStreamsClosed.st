private
ensureStreamsClosed
	[ resultsStream ifNotNil: [ resultsStream close ] ] on: Error do: [  ].
	[ progressStream ifNotNil: [ progressStream close ] ] on: Error do: [  ].