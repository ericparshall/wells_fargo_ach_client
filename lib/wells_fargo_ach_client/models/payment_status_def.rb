=begin
#ACH-Payments

#Simplify payment processes by seamlessly integrating ACH payments straight into your business flow. 

OpenAPI spec version: v1
Contact: gateway@wellsfargo.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.6

=end

require 'date'

module WellsFargoAchClient
  # The payment Status object includes all the details of the payment status information
  class PaymentStatusDEF
    # ACH payment trace number assigned to the payment. The field only applies to “PROCESSED” payments.
    attr_accessor :trace_number

    # Payment status. PENDING - Wells Fargo accepted payment and is being processed. PROCESSED - Wells Fargo processed payment (ACH trace number included in response). EXCEPTION - Possible issue with payment since it has not been processed by Wells Fargo within one day of being submitted.
    attr_accessor :payment_status

    # Payee name (included on all successful inquiry requests).
    attr_accessor :payee_name

    # Amount of the payment.
    attr_accessor :payment_amount

    # The requested settlement date for the payment.
    attr_accessor :payment_date

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'trace_number' => :'trace_number',
        :'payment_status' => :'payment_status',
        :'payee_name' => :'payee_name',
        :'payment_amount' => :'payment_amount',
        :'payment_date' => :'payment_date'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'trace_number' => :'String',
        :'payment_status' => :'String',
        :'payee_name' => :'String',
        :'payment_amount' => :'Float',
        :'payment_date' => :'Date'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'trace_number')
        self.trace_number = attributes[:'trace_number']
      end

      if attributes.has_key?(:'payment_status')
        self.payment_status = attributes[:'payment_status']
      end

      if attributes.has_key?(:'payee_name')
        self.payee_name = attributes[:'payee_name']
      end

      if attributes.has_key?(:'payment_amount')
        self.payment_amount = attributes[:'payment_amount']
      end

      if attributes.has_key?(:'payment_date')
        self.payment_date = attributes[:'payment_date']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@trace_number.nil? && @trace_number.to_s.length > 15
        invalid_properties.push('invalid value for "trace_number", the character length must be smaller than or equal to 15.')
      end

      if !@trace_number.nil? && @trace_number.to_s.length < 1
        invalid_properties.push('invalid value for "trace_number", the character length must be great than or equal to 1.')
      end

      if !@payment_status.nil? && @payment_status.to_s.length > 20
        invalid_properties.push('invalid value for "payment_status", the character length must be smaller than or equal to 20.')
      end

      if !@payment_status.nil? && @payment_status.to_s.length < 1
        invalid_properties.push('invalid value for "payment_status", the character length must be great than or equal to 1.')
      end

      if !@payee_name.nil? && @payee_name.to_s.length > 60
        invalid_properties.push('invalid value for "payee_name", the character length must be smaller than or equal to 60.')
      end

      if !@payee_name.nil? && @payee_name.to_s.length < 1
        invalid_properties.push('invalid value for "payee_name", the character length must be great than or equal to 1.')
      end

      if !@payment_amount.nil? && @payment_amount > 99999999.99
        invalid_properties.push('invalid value for "payment_amount", must be smaller than or equal to 99999999.99.')
      end

      if !@payment_amount.nil? && @payment_amount < 0
        invalid_properties.push('invalid value for "payment_amount", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@trace_number.nil? && @trace_number.to_s.length > 15
      return false if !@trace_number.nil? && @trace_number.to_s.length < 1
      return false if !@payment_status.nil? && @payment_status.to_s.length > 20
      return false if !@payment_status.nil? && @payment_status.to_s.length < 1
      return false if !@payee_name.nil? && @payee_name.to_s.length > 60
      return false if !@payee_name.nil? && @payee_name.to_s.length < 1
      return false if !@payment_amount.nil? && @payment_amount > 99999999.99
      return false if !@payment_amount.nil? && @payment_amount < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] trace_number Value to be assigned
    def trace_number=(trace_number)
      if !trace_number.nil? && trace_number.to_s.length > 15
        fail ArgumentError, 'invalid value for "trace_number", the character length must be smaller than or equal to 15.'
      end

      if !trace_number.nil? && trace_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "trace_number", the character length must be great than or equal to 1.'
      end

      @trace_number = trace_number
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_status Value to be assigned
    def payment_status=(payment_status)
      if !payment_status.nil? && payment_status.to_s.length > 20
        fail ArgumentError, 'invalid value for "payment_status", the character length must be smaller than or equal to 20.'
      end

      if !payment_status.nil? && payment_status.to_s.length < 1
        fail ArgumentError, 'invalid value for "payment_status", the character length must be great than or equal to 1.'
      end

      @payment_status = payment_status
    end

    # Custom attribute writer method with validation
    # @param [Object] payee_name Value to be assigned
    def payee_name=(payee_name)
      if !payee_name.nil? && payee_name.to_s.length > 60
        fail ArgumentError, 'invalid value for "payee_name", the character length must be smaller than or equal to 60.'
      end

      if !payee_name.nil? && payee_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "payee_name", the character length must be great than or equal to 1.'
      end

      @payee_name = payee_name
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_amount Value to be assigned
    def payment_amount=(payment_amount)
      if !payment_amount.nil? && payment_amount > 99999999.99
        fail ArgumentError, 'invalid value for "payment_amount", must be smaller than or equal to 99999999.99.'
      end

      if !payment_amount.nil? && payment_amount < 0
        fail ArgumentError, 'invalid value for "payment_amount", must be greater than or equal to 0.'
      end

      @payment_amount = payment_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          trace_number == o.trace_number &&
          payment_status == o.payment_status &&
          payee_name == o.payee_name &&
          payment_amount == o.payment_amount &&
          payment_date == o.payment_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [trace_number, payment_status, payee_name, payment_amount, payment_date].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = WellsFargoAchClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
