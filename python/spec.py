import unittest
import src
#
class TestSSNCleaner(unittest.TestCase):
    def test_short_str(self):
        self.assertEqual(src.cleanSSN('9876'), '000-00-9876')

    def test_just_nums(self):
        self.assertEqual(src.cleanSSN('987654321'), '987-65-4321')

    def test_long_str(self):
        self.assertEqual(src.cleanSSN('1234567891'), '123-45-6789')

    def test_mixed_str(self):
        self.assertEqual(src.cleanSSN('789526345 -- client ssn'), '789-52-6345')

    def test_includes_Xs(self):
        self.assertEqual(src.cleanSSN('XXX-12-3456'), '000-12-3456')

if __name__ == '__main__':
    unittest.main()
