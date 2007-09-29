module(..., package.seeall);

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

-- to be changed to be more similar to Test::Deep
function deeply(received, expected, name)
    result = compare(received, expected)
    if result == nil then
        ok(true, name)
    else
        ok(false, name)
        print("      " .. result)
    end
end
function compare(a, b)
    if next(a) == nil then
        if next(b) == nil then
            return nil
        else
            return "First table is empty while the second is NOT"
        end
    else
        if next(b) == nil then
            return "First table is NOT empty while the second is"
        end
    end
    return "Who knows?"
end
