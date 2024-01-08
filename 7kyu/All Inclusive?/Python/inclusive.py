def rot(string, x):
    return string[x:] + string[:x]

def contain_all_rots(strng, arr):
    return all(
        rot(strng, x) in arr
        for x in range(len(strng))
    )
    
def test_contain_all_rots():
    assert contain_all_rots("", [])
    assert contain_all_rots("", ["bsjq", "qbsj"])
    assert contain_all_rots("bsjq", ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"])
    assert contain_all_rots("XjYABhR", ["TzYxlgfnhf", "yVAuoLjMLy", "BhRXjYA", "YABhRXj", "hRXjYAB", "jYABhRX", "XjYABhR", "ABhRXjY"])
