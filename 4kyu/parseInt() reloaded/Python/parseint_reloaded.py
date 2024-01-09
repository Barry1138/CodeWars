def parse_int(string: str) -> int:
    d = {word: number for number, word in enumerate('''
        zero one two three four five six seven eight nine
        ten eleven twelve thirteen fourteen fifteen
        sixteen seventeen eighteen nineteen'''.split())}
    d.update({word: number for number, word in zip(range(20, 101, 10),
        'twenty thirty forty fifty sixty seventy eighty ninety hundred'.split())})
    a = []
    for s in string.split('thousand'):
        total = 0
        for i in s.strip().split():
            if '-' in i:
                for j in i.split('-'):
                    total += d.get(j)
            else:
                if i in d:
                    total = total * d.get(i) if 'hund' in i else total + d.get(i)
        a.append(total)
    return 1000000 if 'million' in string else a[0] * 1000 + a[1] if len(a) > 1 else a[0]


if __name__ == '__main__':
    basic_tests = [
        ['parse_int', "one", 1],
        ['parse_int', "twenty", 20],
        ['parse_int', "two hundred forty-six", 246]
    ]
    for test in basic_tests:
        fn_name, string, expected = test
        result = globals()[fn_name](string)
        print(f'{fn_name}("{string}") returns {result}'
              f'{f", expected: {expected}" if result != expected else ""}')
