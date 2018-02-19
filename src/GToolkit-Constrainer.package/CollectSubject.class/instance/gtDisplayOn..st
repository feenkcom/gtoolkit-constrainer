basic
gtDisplayOn: stream
	stream nextPutAll: the size gtDisplayString.
	stream nextPutAll:' '.
	stream nextPutAll: ((the asArray) detect: [ :el | el isNotNil ]) className.
	stream nextPutAll:' collect: '.
	stream nextPutAll: block gtDisplayString.
	stream nextPutAll:' '.
	stream nextPutAll: elements size gtDisplayString.
	elements size > 0 ifTrue: [ 
		stream nextPutAll:' '.
		stream nextPutAll: ((elements asArray) detect: [ :el | el isNotNil ]) className]