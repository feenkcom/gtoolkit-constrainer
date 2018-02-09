debug
gtDisplayString
	|toString|
	toString := ''.
	subject associations isNotNil ifTrue: [ subject associations do: [ :each | toString := toString, ' ', each to] ].	
	^ toString, ' >> ', constraint gtDisplayString