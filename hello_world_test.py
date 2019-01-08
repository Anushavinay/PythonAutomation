from mobly import base_test
from mobly import test_runner
from mobly.controllers import android_device


class HelloWorldTest(base_test.BaseTestClass):

    def setup_class(self):
        # Registering android_device controller module declares the test's
        # dependency on Android device hardware. By default, we expect at least one
        # object is created from this.
        self.ads = self.register_controller(android_device)
        self.dut = self.ads[0]
        self.dut1 = self.ads[1]
        # Start Mobly Bundled Snippets (MBS).
        self.dut.load_snippet('mbs', 'com.google.android.mobly.snippet.bundled')
        self.dut1.load_snippet('mbs', 'com.google.android.mobly.snippet.bundled')

    def test_mobile1(self):
        self.dut.mbs.makeToast('!Hello World')

    def test_mobile2(self):
        self.dut1.mbs.makeToast('!Hello World')


if __name__ == '__main__':
    test_runner.main()