basic
gtDisplayOn: stream
	stream nextPutAll:the size gtDisplayString.
	stream nextPutAll:' '.
	stream nextPutAll:block gtDisplayString.
	stream nextPutAll:' '.
	stream nextPutAll:elements size gtDisplayString.