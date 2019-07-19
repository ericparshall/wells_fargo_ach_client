# wells_fargo_ach_client

WellsFargoAchClient - the Ruby gem for the ACH-Payments

Simplify payment processes by seamlessly integrating ACH payments straight into your business flow. 

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen
For more information, please visit [https://developer.wellsfargo.com/contact-us](https://developer.wellsfargo.com/contact-us)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build wells_fargo_ach_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./wells_fargo_ach_client-1.0.0.gem
```
(for development, run `gem install --dev ./wells_fargo_ach_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'wells_fargo_ach_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'wells_fargo_ach_client', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'wells_fargo_ach_client'

# Setup authorization
WellsFargoAchClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = WellsFargoAchClient::CheckIndividualACHPaymentStatusApi.new

gateway_company_id = 'gateway_company_id_example' # String | Unique value assigned to your company.

request_id = 'request_id_example' # String | Unique value to track each API call; it will be returned in the header of every response.

payment_id = 'payment_id_example' # String | Retrieve payment status you submitted in the ACH API request.


begin
  #Check individual ACH payment status.
  result = api_instance.get_payment_status(gateway_company_id, request_id, payment_id)
  p result
rescue WellsFargoAchClient::ApiError => e
  puts "Exception when calling CheckIndividualACHPaymentStatusApi->get_payment_status: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.wellsfargo.com/ach/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*WellsFargoAchClient::CheckIndividualACHPaymentStatusApi* | [**get_payment_status**](docs/CheckIndividualACHPaymentStatusApi.md#get_payment_status) | **GET** /payments/{payment-id} | Check individual ACH payment status.
*WellsFargoAchClient::OriginateAnACHPaymentApi* | [**create_payment**](docs/OriginateAnACHPaymentApi.md#create_payment) | **POST** /payments | Originate an ACH payment.


## Documentation for Models

 - [WellsFargoAchClient::AddressDEF](docs/AddressDEF.md)
 - [WellsFargoAchClient::AdjustmentDEF](docs/AdjustmentDEF.md)
 - [WellsFargoAchClient::BankInformationDEF](docs/BankInformationDEF.md)
 - [WellsFargoAchClient::ErrorDEF](docs/ErrorDEF.md)
 - [WellsFargoAchClient::ErrorsDEF](docs/ErrorsDEF.md)
 - [WellsFargoAchClient::InvoiceDEF](docs/InvoiceDEF.md)
 - [WellsFargoAchClient::InvoiceDEFAdjustmentInformation](docs/InvoiceDEFAdjustmentInformation.md)
 - [WellsFargoAchClient::InvoiceInformationDEF](docs/InvoiceInformationDEF.md)
 - [WellsFargoAchClient::PayeeDEF](docs/PayeeDEF.md)
 - [WellsFargoAchClient::PayerDEF](docs/PayerDEF.md)
 - [WellsFargoAchClient::PaymentDEF](docs/PaymentDEF.md)
 - [WellsFargoAchClient::PaymentStatusDEF](docs/PaymentStatusDEF.md)


## Documentation for Authorization


### Bearer

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

