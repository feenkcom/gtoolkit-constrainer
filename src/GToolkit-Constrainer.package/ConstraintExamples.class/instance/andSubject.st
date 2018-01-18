public
andSubject
	<gtExample>
	| subjectOne subjectTwo andSubject |
	subjectOne := self aRuleSubject.
	subjectTwo := self secondRuleSubject.
	andSubject := AndRuleSubject new.
	andSubject and: subjectOne  with: subjectTwo.
	^ andSubject 