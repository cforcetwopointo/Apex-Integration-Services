@isTest
private with sharing class ParkLocatorTest {
    @isTest static void testCallout() {
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        String actual = 'United States';
        List<String> expected = new List<String>{'Yosemite', 'Sequoia', 'Crater Lake'};
        System.assertEquals(expected, ParkLocator.country(actual));
    }
}
