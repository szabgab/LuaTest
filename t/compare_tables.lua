
require "test"

test.plan(3)

-- testing the compare function in the test.lua code

x = {}
test.is(test.compare(x, {}), nil, "empty is ok")
test.is(test.compare(x, {1}), "First table is empty while the second is NOT", "not empty")
test.is(test.compare({1}, x), "First table is NOT empty while the second is", "not empty")

test.is(test.compare({1}, {1,2}), "Who knows?", "not the same")

