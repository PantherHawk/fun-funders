# clean SSN
import re

def cleanSSN(str = raw_input('Enter your SSN here: ')):
    # remove dashes and non-numbers
    print(str)
    str = re.sub("[^0-9]", "", str)
    # if length of ssn less than nine add zeroes to front of ssn until length is 9
    while len(str) < 9:
        str = '0' + str
    # if length of ssn greater than nine
    if len(str) > 9:
     # slice first nine numbers
     str = str[:9]
    # reformat by taking slice of first three numbers (0, 3), slice of next two (3, 5), and the last four (5)
    result = str[:3]+'-'+str[3:5]+'-'+str[5:]
    print(result)
    return result;

cleanSSN()
