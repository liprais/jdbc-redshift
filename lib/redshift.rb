#!/usr/bin/ruby

module Jdbc
	module Redshift
		DRIVER_VERSION = '4'
		VERSION = DRIVER_VERSION + '.1'

		def self.driver_jar
			%W(RedshiftJDBC4.jar)
		end

		def self.load_driver(method = :load)
			driver_jar.each do |jar|
				send method, jar
			end
		end

		def self.driver_name
			'com.amazon.redshift.jdbc4.Driver'
		end

		load_driver :require
	end
end