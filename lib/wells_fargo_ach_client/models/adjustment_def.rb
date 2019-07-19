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
  # (Nested) Detailed information on an invoice adjustment. Multiple subsections can be included in adjustment_information.
  class AdjustmentDEF
    # The adjustment description is required if adjustment_description_type is sent.
    attr_accessor :adjustment_description

    # Format is *#.## (with digits, a decimal point, and two decimal places).
    attr_accessor :adjustment_amount

    # Includes the document or reference number of the adjustment. Required if an adjustment object is sent.
    attr_accessor :adjustment_document_number

    # Required if adjustment object is sent. Obtain from Wells Fargo. This is required if adjustment object is sent.
    attr_accessor :adjustment_reason_code

    # Identifies the type of document whose reference number appears in adjustment_document_number. Required if the adjustment object is sent. Obtain available codes from Wells Fargo.
    attr_accessor :adjustment_document_type

    # Identifies the type of adjustment. Required if adjustment_description is sent. Obtain available codes from Wells Fargo.
    attr_accessor :adjustment_description_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'adjustment_description' => :'adjustment_description',
        :'adjustment_amount' => :'adjustment_amount',
        :'adjustment_document_number' => :'adjustment_document_number',
        :'adjustment_reason_code' => :'adjustment_reason_code',
        :'adjustment_document_type' => :'adjustment_document_type',
        :'adjustment_description_type' => :'adjustment_description_type'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'adjustment_description' => :'String',
        :'adjustment_amount' => :'Float',
        :'adjustment_document_number' => :'String',
        :'adjustment_reason_code' => :'String',
        :'adjustment_document_type' => :'String',
        :'adjustment_description_type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'adjustment_description')
        self.adjustment_description = attributes[:'adjustment_description']
      end

      if attributes.has_key?(:'adjustment_amount')
        self.adjustment_amount = attributes[:'adjustment_amount']
      end

      if attributes.has_key?(:'adjustment_document_number')
        self.adjustment_document_number = attributes[:'adjustment_document_number']
      end

      if attributes.has_key?(:'adjustment_reason_code')
        self.adjustment_reason_code = attributes[:'adjustment_reason_code']
      end

      if attributes.has_key?(:'adjustment_document_type')
        self.adjustment_document_type = attributes[:'adjustment_document_type']
      end

      if attributes.has_key?(:'adjustment_description_type')
        self.adjustment_description_type = attributes[:'adjustment_description_type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@adjustment_description.nil? && @adjustment_description.to_s.length > 80
        invalid_properties.push('invalid value for "adjustment_description", the character length must be smaller than or equal to 80.')
      end

      if !@adjustment_description.nil? && @adjustment_description.to_s.length < 1
        invalid_properties.push('invalid value for "adjustment_description", the character length must be great than or equal to 1.')
      end

      if !@adjustment_amount.nil? && @adjustment_amount > 99999999.99
        invalid_properties.push('invalid value for "adjustment_amount", must be smaller than or equal to 99999999.99.')
      end

      if !@adjustment_amount.nil? && @adjustment_amount < -99999999.99
        invalid_properties.push('invalid value for "adjustment_amount", must be greater than or equal to -99999999.99.')
      end

      if !@adjustment_document_number.nil? && @adjustment_document_number.to_s.length > 30
        invalid_properties.push('invalid value for "adjustment_document_number", the character length must be smaller than or equal to 30.')
      end

      if !@adjustment_document_number.nil? && @adjustment_document_number.to_s.length < 1
        invalid_properties.push('invalid value for "adjustment_document_number", the character length must be great than or equal to 1.')
      end

      if !@adjustment_reason_code.nil? && @adjustment_reason_code.to_s.length > 3
        invalid_properties.push('invalid value for "adjustment_reason_code", the character length must be smaller than or equal to 3.')
      end

      if !@adjustment_reason_code.nil? && @adjustment_reason_code.to_s.length < 2
        invalid_properties.push('invalid value for "adjustment_reason_code", the character length must be great than or equal to 2.')
      end

      if !@adjustment_document_type.nil? && @adjustment_document_type.to_s.length > 3
        invalid_properties.push('invalid value for "adjustment_document_type", the character length must be smaller than or equal to 3.')
      end

      if !@adjustment_document_type.nil? && @adjustment_document_type.to_s.length < 2
        invalid_properties.push('invalid value for "adjustment_document_type", the character length must be great than or equal to 2.')
      end

      if !@adjustment_description_type.nil? && @adjustment_description_type.to_s.length > 3
        invalid_properties.push('invalid value for "adjustment_description_type", the character length must be smaller than or equal to 3.')
      end

      if !@adjustment_description_type.nil? && @adjustment_description_type.to_s.length < 2
        invalid_properties.push('invalid value for "adjustment_description_type", the character length must be great than or equal to 2.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@adjustment_description.nil? && @adjustment_description.to_s.length > 80
      return false if !@adjustment_description.nil? && @adjustment_description.to_s.length < 1
      return false if !@adjustment_amount.nil? && @adjustment_amount > 99999999.99
      return false if !@adjustment_amount.nil? && @adjustment_amount < -99999999.99
      return false if !@adjustment_document_number.nil? && @adjustment_document_number.to_s.length > 30
      return false if !@adjustment_document_number.nil? && @adjustment_document_number.to_s.length < 1
      return false if !@adjustment_reason_code.nil? && @adjustment_reason_code.to_s.length > 3
      return false if !@adjustment_reason_code.nil? && @adjustment_reason_code.to_s.length < 2
      return false if !@adjustment_document_type.nil? && @adjustment_document_type.to_s.length > 3
      return false if !@adjustment_document_type.nil? && @adjustment_document_type.to_s.length < 2
      return false if !@adjustment_description_type.nil? && @adjustment_description_type.to_s.length > 3
      return false if !@adjustment_description_type.nil? && @adjustment_description_type.to_s.length < 2
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] adjustment_description Value to be assigned
    def adjustment_description=(adjustment_description)
      if !adjustment_description.nil? && adjustment_description.to_s.length > 80
        fail ArgumentError, 'invalid value for "adjustment_description", the character length must be smaller than or equal to 80.'
      end

      if !adjustment_description.nil? && adjustment_description.to_s.length < 1
        fail ArgumentError, 'invalid value for "adjustment_description", the character length must be great than or equal to 1.'
      end

      @adjustment_description = adjustment_description
    end

    # Custom attribute writer method with validation
    # @param [Object] adjustment_amount Value to be assigned
    def adjustment_amount=(adjustment_amount)
      if !adjustment_amount.nil? && adjustment_amount > 99999999.99
        fail ArgumentError, 'invalid value for "adjustment_amount", must be smaller than or equal to 99999999.99.'
      end

      if !adjustment_amount.nil? && adjustment_amount < -99999999.99
        fail ArgumentError, 'invalid value for "adjustment_amount", must be greater than or equal to -99999999.99.'
      end

      @adjustment_amount = adjustment_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] adjustment_document_number Value to be assigned
    def adjustment_document_number=(adjustment_document_number)
      if !adjustment_document_number.nil? && adjustment_document_number.to_s.length > 30
        fail ArgumentError, 'invalid value for "adjustment_document_number", the character length must be smaller than or equal to 30.'
      end

      if !adjustment_document_number.nil? && adjustment_document_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "adjustment_document_number", the character length must be great than or equal to 1.'
      end

      @adjustment_document_number = adjustment_document_number
    end

    # Custom attribute writer method with validation
    # @param [Object] adjustment_reason_code Value to be assigned
    def adjustment_reason_code=(adjustment_reason_code)
      if !adjustment_reason_code.nil? && adjustment_reason_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "adjustment_reason_code", the character length must be smaller than or equal to 3.'
      end

      if !adjustment_reason_code.nil? && adjustment_reason_code.to_s.length < 2
        fail ArgumentError, 'invalid value for "adjustment_reason_code", the character length must be great than or equal to 2.'
      end

      @adjustment_reason_code = adjustment_reason_code
    end

    # Custom attribute writer method with validation
    # @param [Object] adjustment_document_type Value to be assigned
    def adjustment_document_type=(adjustment_document_type)
      if !adjustment_document_type.nil? && adjustment_document_type.to_s.length > 3
        fail ArgumentError, 'invalid value for "adjustment_document_type", the character length must be smaller than or equal to 3.'
      end

      if !adjustment_document_type.nil? && adjustment_document_type.to_s.length < 2
        fail ArgumentError, 'invalid value for "adjustment_document_type", the character length must be great than or equal to 2.'
      end

      @adjustment_document_type = adjustment_document_type
    end

    # Custom attribute writer method with validation
    # @param [Object] adjustment_description_type Value to be assigned
    def adjustment_description_type=(adjustment_description_type)
      if !adjustment_description_type.nil? && adjustment_description_type.to_s.length > 3
        fail ArgumentError, 'invalid value for "adjustment_description_type", the character length must be smaller than or equal to 3.'
      end

      if !adjustment_description_type.nil? && adjustment_description_type.to_s.length < 2
        fail ArgumentError, 'invalid value for "adjustment_description_type", the character length must be great than or equal to 2.'
      end

      @adjustment_description_type = adjustment_description_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          adjustment_description == o.adjustment_description &&
          adjustment_amount == o.adjustment_amount &&
          adjustment_document_number == o.adjustment_document_number &&
          adjustment_reason_code == o.adjustment_reason_code &&
          adjustment_document_type == o.adjustment_document_type &&
          adjustment_description_type == o.adjustment_description_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [adjustment_description, adjustment_amount, adjustment_document_number, adjustment_reason_code, adjustment_document_type, adjustment_description_type].hash
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
