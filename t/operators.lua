
-- here starts the testing framework
counter = 0
function ok(ok, name)
    counter = counter+1
    if name == nil then name = "" end
    prefix = ""
    if not ok then prefix = "not " end
    print(prefix .. "ok " .. counter .. " - " .. name)
end

function is(received, expected, name)
    if (received == expected) then 
        ok(true, name)
    else
        ok(false, name)
        print("   Expected: '" .. expected .. "'")
        print("   Received: '" .. received .. "'")
    end
end

function diag(name)
    print("# " .. name)
end
function plan(n)
    print("1.." .. n)
end


plan(62)

-- ok(1, "good")
-- ok(false, "bad")

-- simple numeric calculations
ok(1+1 == 2, '1+1=2')
ok(4+2 == 6, '4+2=6')
ok(1-1 == 0, '1-1=0')
ok(1*1 == 1, '1*1=1')
ok(0*1 == 0, '0*1=0')
ok(4/2 == 2, '4/2=2')
ok(5/2 == 2.5, '5/2=2.5')

-- simple string operations
ok("a" .. "b" == "ab", "concatenation a..b")
ok("a" .. 2   == "a2", "concat str .. number")
ok(4 .. 2   == "42", "concat number .. number")

-- TODO: print
-- TODO: error messages

-- variables
x = 23
is(x, 23, "numerical assignment")
y = "some string"
is(y,      "some string", "string assignment")
is(x+x,    46, "add variables")
is(y .. x, "some string23", "concat variables")

x = "new string"
is(x, "new string", "string instead of number")


--tables
-- x = {}
-- is(x, {}, "empty table")
x = {fname = "Foo", lname = "Bar", answer = 42}
is(x.fname, "Foo", "table string")
is(x.answer, 42, "table numeric")


-- boolean
ok(true, "true");
ok(not false, "not false")

ok(1 ~= 0, "1 is not 0")

ok(1 > 0, "1 > 0")
ok(0 < 1, "0 < 1")


-- type
is(type(1), "number", "number type")
is(type("1"), "string", "string type")
is(type({}), "table",   "table type")
x = 1
is(type(x), "number", "number type variable")
x = "1"
is(type(x), "string", "string type variable")
x = {}
is(type(x), "table", "table type variable")


-- multiple assignment
x, y = 1, 2
is(x, 1, "multiple assignment, first")
is(y, 2, "multiple assignment, second")

x,y = x+3, x
is(x, 4, "x is 4")
is(y, 1, "y is 1")

-- swapping values
x, y = y, x
is(x, 1, "x is 1")
is(y, 4, "y is 4")

x,y = 42
is(x, 42, "x is 42")
is(y, nil, "y is nil")

x,y = 1,2,3
is(x, 1, "x is 1")
is(y, 2, "y is 2")

ok(1 ~= "1", "numeric and string are not the same")
ok(1 == tonumber("1"), "numeric and tonumber(string) are the same")


-- math
-- this is not true, probably because math.pi is actually of higher prcision?
--is(math.pi, 3.1415926535898, "PI")
--

-- tables
-- table array
x = {2, 3}
is(x[0], nil, "x[0] is nil")
is(x[1], 2,   "x[1]")
is(x[2], 3,   "x[2]")
is(#x, 2, "table size is 2")
table.insert(x, 4)
is(#x, 3, "table size is now 3")
is(x[3], 4, "x[3]")

table.insert(x, 1, 23)
is(#x, 4, "table size is now 4")
is(x[1], 23, "x[1] is 23")
is(x[2], 2, "x[2] is 2")
is(x[3], 3, "x[3] is 3")
is(x[4], 4, "x[4] is 4")

--table.insert(x, 10, 42)
--is(#x, 5)

y = {23,2,3,4}
for i,v in ipairs(x) do is(v, y[i], "x[" .. i .. "] is " .. v) end

-- table.foreachi(table, print) was deprecated

diag("table as dictionary")
x = {fname = "Foo", lname = "Bar", code = 42}
is(type(x), "table", "table")
is(x["fname"], "Foo", "fname")
is(x["lname"], "Bar", "lname")
is(x["code"], 42, "code")
is(x.fname, "Foo", "x.fname format")
is(x.code, 42, "x.code forma")

--no size for dictionaries?
--is(#x, 3, "3 pairs")

x["email"] = "my@address"
is(x.email, "my@address", "pair added to dictionary")









