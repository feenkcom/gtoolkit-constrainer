running
runAll
	self leafConstraints do: [ :aConstraint |
		self printConstraint: aConstraint ]