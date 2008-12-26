
require "test"

test.plan(11)

function foo()
end
a = foo()
test.is(a, nil, "empty function returns nil")


-- redefine function
function foo()
    return 42
end
a = foo()
test.is(a, 42, "returns 42")

function foo(x, y)
    return x+y
end

a = foo(2,3)
test.is(a, 5, "passing values to and returning from function")

test.diag("Fibonacci using recursive function")
function fib(n)
    if n == 1 or n == 2 then return 1 end
    return fib(n-1) + fib(n-2)
end
expected = {1,1,2,3,5,8,13,21}
for i in ipairs(expected) do
    test.is(fib(i), expected[i], "fib (" .. i .. ") returned " .. expected[i])
end

test.diag("Fibonacci using non-recursive function")
function fib(n)
    if n == 1 then return {1} end
    if n == 2 then return {1,1} end
    res = {1,1}
    for i = 3,n do
        table.insert(res, res[#res-1]+res[#res-2])
    end 
end

test.is(1, 2, "this should fail")


