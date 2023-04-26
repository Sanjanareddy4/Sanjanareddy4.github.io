from django.test import SimpleTestCase
from django.urls import reverse, resolve
from oj2.views import dashboardPage, addProblem, deleteProblem, modifyProblem

class TestUrls(SimpleTestCase):

    def test_dashboardPage_url_resolves(self):
        url = reverse('dashboardPage')
        self.assertEquals(resolve(url).func,dashboardPage )

# Create your tests here.
