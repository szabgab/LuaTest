
require "test"

test.plan(8)

test.diag("while loop")
i = 3
j = 0
while i>0 do
    j = j + 1
    i = i - 1
end
test.is(i, 0, "while loop 3 iterations i=0")
test.is(j, 3, "while loop 3 iterations j=3")


i = 3 
j = 0
while i>0 do
    j = j + 1
    i = i - 1
    if j == 2 then break end 
end
test.is(i, 1, "while loop 3 iterations i=1")
test.is(j, 2, "while loop 3 iterations j=2")


test.diag("repeat loop")
i = 3
j = 0
repeat
    i = i - 1
    j = j + 1
until i == 0
test.is(i, 0, "repeat loop 3 iterations i=0")
test.is(j, 3, "repeat loop 3 iterations j=3")

i = 3
j = 0
repeat
    i = i - 1
    j = j + 1
    if j == 2 then break end 
until i == 0
test.is(i, 1, "while loop 3 iterations i=1")
test.is(j, 2, "while loop 3 iterations j=2")

