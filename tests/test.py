
import unittest
import requests

class testTest(unittest.TestCase):

    def test_call(self):
        token = os.getenv('TB_TOKEN')
        r = requests.get('https://api.tinybird.co/v0/pipes/test.json?token={token}')
        self.assertEqual(r.status_code, 200)
                