transformation
breakers
	|breakersSubject|
	breakers ifNil: [ 
		breakersSubject := ConstraintSubject new the: (the reject: block).
		breakersSubject name: 'breakers'.
		breakersSubject addChild: self.
		self addParent: breakersSubject.
		breakers := breakersSubject.
	].
	^ breakers
	