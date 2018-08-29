result = {}
to_rm = set()
for i in range(999999, 500001, -2):
    if i not in to_rm:
       j = i
       count = 1
       to_rm.add(i)
       while i != 1:
           if i % 2 == 0:
               i = i/2
               to_rm.add(i) 
           else:
               i = 3 * i + 1
               to_rm.add(i)
           count = count + 1
       result[count] = j
       
print(result[max(result.keys())])