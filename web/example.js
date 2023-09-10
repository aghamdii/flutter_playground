function test() {
    console.log('---BEG of Function---');
    if (window.ApplePaySession) {
        try {
            console.log('---Inside try---');
            var request = {
                countryCode: 'US',
                currencyCode: 'USD',
                supportedNetworks: ['visa', 'masterCard', 'amex', 'discover'],
                merchantCapabilities: ['supports3DS'],
                total: { label: 'Your Merchant Name', amount: '10.00' },
            }
            var session = new ApplePaySession(3, request);
            session.begin();
        }
        catch (error) {
            console.log('---Inside catch---');
            console.log(error);
        }

    }
    else {
        return false;
    }
}