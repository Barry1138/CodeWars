def DNA_strand(dna):
    symbols = {'A': 'T', 'C': 'G', 'G': 'C', 'T': 'A'}
    strng = ''
    for i in dna:
        for x,y in symbols.items():
            if(i==x):
                strng+=y
    return strng
