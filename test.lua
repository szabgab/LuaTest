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

function is_deeply(received, expected)
end
