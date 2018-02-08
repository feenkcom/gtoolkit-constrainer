basic
gtDisplayString
	^ String
		streamContents: [ :stream | 
			the printOn: stream.
			stream nextPutAll: ' of '.
			of do: [ :each | each printOn: stream. stream nextPutAll: ' ' ] ]