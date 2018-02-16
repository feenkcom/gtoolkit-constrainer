transformation
matchers
	|matchersSubject|
	matchersSubject := ConstraintSubject new the: (the select: block).
	matchersSubject name: 'matchers'.
	matchersSubject addChild: self.
	^ matchersSubject