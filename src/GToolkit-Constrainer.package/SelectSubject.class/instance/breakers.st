transformation
breakers
	|breakersSubject|
	breakersSubject := ConstraintSubject new the: (the reject: block).
	breakersSubject name: 'breakers'.
	breakersSubject addChild: self.
	^ breakersSubject