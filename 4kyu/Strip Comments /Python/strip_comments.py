def solution(string, markers):
    ss = string.split('\n')
    for i in range(len(ss)):
        s = ss[i]
        for marker in markers:
            index = s.find(marker)
            if index >= 0:
                s = s[:index].rstrip()
        ss[i] = s
    return '\n'.join(ss)
