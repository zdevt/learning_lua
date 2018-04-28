
array = {"lua", "asdf"}

for k, v in pairs(array)
do
  print(k, v)
end

fruits = {"banana", "orange", "apple"}
table.insert(fruits, "mango")
print("id 4", fruits[4])

for k, v in pairs(fruits) do
  print(k, v)
end

table.sort(fruits)
for k, v in pairs(fruits) do
  print(k, v)
end

function tab_len(t)
  local len = 0
  for k, v in pairs(t) do
      len = len + 1
  end
  return len
end

str1 = "asdf"
print(string.reverse(str1))

