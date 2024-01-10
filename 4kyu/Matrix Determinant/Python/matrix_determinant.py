def subdet(m):
    det = 0
    if len(m) != 2:
        for n,i in enumerate(range(len(m))):
            if n%2:
                det -= m[0][i] * subdet([ mi[:i]+mi[i+1:] for mi in m[1:] ])
            else:
                det += m[0][i] * subdet([ mi[:i]+mi[i+1:] for mi in m[1:] ])
    else:
        det = (m[0][0]*m[1][1]-m[0][1]*m[1][0])

    return det

def determinant(m):
    sz = len(m)

    if sz == 1:
      return (m[0][0])
    else:
        return subdet(m)
