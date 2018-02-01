# clean SSN
import re
def cleanSSN( str ):
    # remove dashes and non-numbers
    str = re.sub("[^0-9]", "", str)
    print(str)
    return;

# test cleanSSN(str = '5wiohghj67890iugg')
