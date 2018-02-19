transformation
matchers
	|matchersSubject|
	matchers ifNil: [ 
		matchersSubject := ConstraintSubject new the: (the select: block).
		matchersSubject name: 'matchers'.
		matchersSubject addChild: self.
		self addParent: matchersSubject.	
		matchers := matchersSubject.
	].
	^ matchers