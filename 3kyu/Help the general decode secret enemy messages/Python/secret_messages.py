def decode(s):
    k = encode("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
    key = 'a' + k[0:]    
    index_s = 0 #index of s
    new_string = []
    for i in s:
        index_key = 0 #index of key   
        for j in key:  
            if i == j:      
                if index_key < index_s:     
                    diff = index_s - index_key
                    x = len(key) - 1 - diff
                    new_string.append(key[x])
                    break      
                new_string.append(key[(index_key - index_s) - 1])     
            index_key += 1
        if i not in key: 
            new_string.append(i)
        index_s += 1
    message = ''.join(new_string)
    return(message)
