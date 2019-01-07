I represent a generic constraint. My subclasses define concrete constraints.

A constraint defines a condition that a system must adhere to. So, I know how to compute the ${method:GtConstraint>>#issues}$ that show the parts that do not adhere to me.

My ${method:GtConstraint>>#status}$ is given by whether or not there are issues. See ${class:GtConstraintStatus}$.