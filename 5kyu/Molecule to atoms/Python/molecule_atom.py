import re
from collections import Counter

def expand_str(m):
    return m.group(1) * int(m.group(2))

def parse_molecule (formula):
    formula = re.sub(r'\(([^\)]+)\)(\d+)',expand_str,formula)
    formula = re.sub(r'\[([^\]]+)\](\d+)',expand_str,formula)
    formula = re.sub(r'\{([^\}]+)\}(\d+)',expand_str,formula)
    formula = re.sub(r'([A-Z][a-z]?)(\d+)',expand_str,formula)
    m = re.findall(r'[A-Z][a-z]?',formula)
    return Counter(m)
