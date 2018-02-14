api
check
	|aResult|
	aResult := predicate applyTo: subject.
	aResult constraint: self.
	result := aResult.
	^ aResult. 
