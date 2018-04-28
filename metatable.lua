

mytable = setmetatable({ key1 = "val1" }, { __index = { key2 = "metatableval2" }})
print( mytable.key1, mytable.key2 )

