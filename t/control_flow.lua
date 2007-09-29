
require "test"

test.plan(14)

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

i = 0 
for c = 1,3 do i = i + 1 end
test.is(i, 3, "for loop 3 iterations i=3")
test.is(c, nil, "for loop iterator is nil")

-- if ... then ... end
-- if ... then ... else ... end
-- if ... then ... elseif ... else ... end

k = 0
v = 0
tbl = {11,22,33}
for key,value in pairs(tbl) do 
    k = k + key
    v = v + value
end
test.is(k, 6, "k=6")
test.is(v, 66, "v=66")


k = 0
v = 0
tbl = {11,22,33}
for key,value in ipairs(tbl) do 
    k = k + key
    v = v + value
end
test.is(k, 6, "k=6")
test.is(v, 66, "v=66")



