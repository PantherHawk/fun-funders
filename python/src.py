# clean SSN
import re
def cleanSSN( str ):
    # remove dashes and non-numbers
    str = re.sub("[^0-9]", "", str)
    # if length of ssn less than nine
    if len(str) < 9:
        # add zeroes to front of ssn until length is 9
        str = '0' + str
    # if length of ssn greater than nine
     # slice first nine numbers
    # reformat by taking slice of first three numbers (0, 3), slice of next two (3, 5), and the last four (5)
    print(str)
    return;

# test cleanSSN(str = '5wiohghj67890iugg')
