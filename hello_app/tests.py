# from django.test import TestCase

# Create your tests here.
from django.test import TestCase
from django.urls import reverse

class HelloTest(TestCase):
    def test_hello_view(self):
        response = self.client.get(reverse(''))
        self.assertEqual(response.status_code, 200)
        self.assertContains(response, "Hello World")
