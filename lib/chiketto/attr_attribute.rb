module Chiketto
  module AttrDSL
    def self.included(base)
      base.extend DSL
    end

    module DSL
      def attr_attrib(*args)
        args.map do |value|
          define_method value.to_s do
            Chiketto::Attribute.new instance_variable_get("@#{value}")
          end
        end
      end

      def attr_date(*args)
        args.map do |value|
          define_method value.to_s do
            date = instance_variable_get("@#{value}")
            return date if date.nil?

            if date.is_a?(Hash)
              date = date['local']
              DateTime.strptime date, '%FT%T'
            else
              DateTime.strptime date, '%FT%TZ'
            end
          end
        end
      end
    end
  end
end
