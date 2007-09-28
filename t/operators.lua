
require "test"

test.plan(62)

-- test.ok(1, "good")
-- test.ok(false, "bad")

-- simple numeric calculations
test.ok(1+1 == 2, '1+1=2')
test.ok(4+2 == 6, '4+2=6')
test.ok(1-1 == 0, '1-1=0')
test.ok(1*1 == 1, '1*1=1')
test.ok(0*1 == 0, '0*1=0')
test.ok(4/2 == 2, '4/2=2')
test.ok(5/2 == 2.5, '5/2=2.5')

-- simple string operations
test.ok("a" .. "b" == "ab", "concatenation a..b")
test.ok("a" .. 2   == "a2", "concat str .. number")
test.ok(4 .. 2   == "42", "concat number .. number")

-- TODO: print
-- TODO: error messages

-- variables
x = 23
test.is(x, 23, "numerical assignment")
y = "some string"
test.is(y,      "some string", "string assignment")
test.is(x+x,    46, "add variables")
test.is(y .. x, "some string23", "concat variables")

x = "new string"
test.is(x, "new string", "string instead of number")


--tables
-- x = {}
-- test.is(x, {}, "empty table")
x = {fname = "Foo", lname = "Bar", answer = 42}
test.is(x.fname, "Foo", "table string")
test.is(x.answer, 42, "table numeric")


-- boolean
test.ok(true, "true");
test.ok(not false, "not false")

test.ok(1 ~= 0, "1 is not 0")

test.ok(1 > 0, "1 > 0")
test.ok(0 < 1, "0 < 1")


-- type
test.is(type(1), "number", "number type")
test.is(type("1"), "string", "string type")
test.is(type({}), "table",   "table type")
x = 1
test.is(type(x), "number", "number type variable")
x = "1"
test.is(type(x), "string", "string type variable")
x = {}
test.is(type(x), "table", "table type variable")


-- multiple assignment
x, y = 1, 2
test.is(x, 1, "multiple assignment, first")
test.is(y, 2, "multiple assignment, second")

x,y = x+3, x
test.is(x, 4, "x is 4")
test.is(y, 1, "y is 1")

-- swapping values
x, y = y, x
test.is(x, 1, "x is 1")
test.is(y, 4, "y is 4")

x,y = 42
test.is(x, 42, "x is 42")
test.is(y, nil, "y is nil")

x,y = 1,2,3
test.is(x, 1, "x is 1")
test.is(y, 2, "y is 2")

test.ok(1 ~= "1", "numeric and string are not the same")
test.ok(1 == tonumber("1"), "numeric and tonumber(string) are the same")


-- math
-- this is not true, probably because math.pi is actually of higher prcision?
--is(math.pi, 3.1415926535898, "PI")
--

-- tables
-- table array
x = {2, 3}
test.is(x[0], nil, "x[0] is nil")
test.is(x[1], 2,   "x[1]")
test.is(x[2], 3,   "x[2]")
test.is(#x, 2, "table size is 2")
table.insert(x, 4)
test.is(#x, 3, "table size is now 3")
test.is(x[3], 4, "x[3]")

table.insert(x, 1, 23)
test.is(#x, 4, "table size is now 4")
test.is(x[1], 23, "x[1] is 23")
test.is(x[2], 2, "x[2] is 2")
test.is(x[3], 3, "x[3] is 3")
test.is(x[4], 4, "x[4] is 4")

--table.insert(x, 10, 42)
--test.is(#x, 5)

y = {23,2,3,4}
for i,v in ipairs(x) do test.is(v, y[i], "x[" .. i .. "] is " .. v) end

-- table.foreachi(table, print) was deprecated

test.diag("table as dictionary")
x = {fname = "Foo", lname = "Bar", code = 42}
test.is(type(x), "table", "table")
test.is(x["fname"], "Foo", "fname")
test.is(x["lname"], "Bar", "lname")
test.is(x["code"], 42, "code")
test.is(x.fname, "Foo", "x.fname format")
test.is(x.code, 42, "x.code forma")

--no size for dictionaries?
--test.is(#x, 3, "3 pairs")

x["email"] = "my@address"
test.is(x.email, "my@address", "pair added to dictionary")









