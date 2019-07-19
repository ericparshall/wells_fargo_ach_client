=begin
#ACH-Payments

#Simplify payment processes by seamlessly integrating ACH payments straight into your business flow. 

OpenAPI spec version: v1
Contact: gateway@wellsfargo.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.6

=end

require 'uri'

module WellsFargoAchClient
  class CheckIndividualACHPaymentStatusApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check individual ACH payment status.
    # Check individual payment status using an ACH status inquiry request. Retrieve useful insights on individual payment status by passing the payment_id.
    # @param gateway_company_id Unique value assigned to your company.
    # @param request_id Unique value to track each API call; it will be returned in the header of every response.
    # @param payment_id Retrieve payment status you submitted in the ACH API request.
    # @param [Hash] opts the optional parameters
    # @return [PaymentStatusDEF]
    def get_payment_status(gateway_company_id, request_id, payment_id, opts = {})
      data, _status_code, _headers = get_payment_status_with_http_info(gateway_company_id, request_id, payment_id, opts)
      data
    end

    # Check individual ACH payment status.
    # Check individual payment status using an ACH status inquiry request. Retrieve useful insights on individual payment status by passing the payment_id.
    # @param gateway_company_id Unique value assigned to your company.
    # @param request_id Unique value to track each API call; it will be returned in the header of every response.
    # @param payment_id Retrieve payment status you submitted in the ACH API request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentStatusDEF, Fixnum, Hash)>] PaymentStatusDEF data, response status code and response headers
    def get_payment_status_with_http_info(gateway_company_id, request_id, payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckIndividualACHPaymentStatusApi.get_payment_status ...'
      end
      # verify the required parameter 'gateway_company_id' is set
      if @api_client.config.client_side_validation && gateway_company_id.nil?
        fail ArgumentError, "Missing the required parameter 'gateway_company_id' when calling CheckIndividualACHPaymentStatusApi.get_payment_status"
      end
      if @api_client.config.client_side_validation && gateway_company_id.to_s.length > 10
        fail ArgumentError, 'invalid value for "gateway_company_id" when calling CheckIndividualACHPaymentStatusApi.get_payment_status, the character length must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && gateway_company_id.to_s.length < 10
        fail ArgumentError, 'invalid value for "gateway_company_id" when calling CheckIndividualACHPaymentStatusApi.get_payment_status, the character length must be great than or equal to 10.'
      end

      # verify the required parameter 'request_id' is set
      if @api_client.config.client_side_validation && request_id.nil?
        fail ArgumentError, "Missing the required parameter 'request_id' when calling CheckIndividualACHPaymentStatusApi.get_payment_status"
      end
      if @api_client.config.client_side_validation && request_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "request_id" when calling CheckIndividualACHPaymentStatusApi.get_payment_status, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && request_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "request_id" when calling CheckIndividualACHPaymentStatusApi.get_payment_status, the character length must be great than or equal to 1.'
      end

      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling CheckIndividualACHPaymentStatusApi.get_payment_status"
      end
      if @api_client.config.client_side_validation && payment_id.to_s.length > 15
        fail ArgumentError, 'invalid value for "payment_id" when calling CheckIndividualACHPaymentStatusApi.get_payment_status, the character length must be smaller than or equal to 15.'
      end

      if @api_client.config.client_side_validation && payment_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "payment_id" when calling CheckIndividualACHPaymentStatusApi.get_payment_status, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/payments/{payment-id}'.sub('{' + 'payment-id' + '}', payment_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'gateway-company-id'] = gateway_company_id
      header_params[:'request-id'] = request_id

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaymentStatusDEF')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckIndividualACHPaymentStatusApi#get_payment_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
