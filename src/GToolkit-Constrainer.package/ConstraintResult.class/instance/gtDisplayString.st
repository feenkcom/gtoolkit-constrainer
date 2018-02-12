debug
gtDisplayString
	|toString|
	toString := ''.
	subject elements isNotNil ifTrue: [ subject elements do: [ :each | toString := toString, ' ', each gtDisplayString] ].	
	^ toString, ' >> ', constraint gtDisplayString