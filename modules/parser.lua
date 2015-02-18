local fs = require('fs')
local string = require('string')

local parser = {}

function parseMetric(data, pattern, start)

	local s, e, val = string.find(data, pattern)

	return tonumber(val)
end


function parser.parse(data)
	local vals = {}

	vals['TOMCAT_JVM_FREE_MEMORY'] = parseMetric(data, 'Free memory: (%d+%.%d+) MB')
	vals['TOMCAT_JVM_TOTAL_MEMORY'] = parseMetric(data, 'Total memory: (%d+%.%d+) MB')
	vals['TOMCAT_HTTP_CURRENT_THREAD_COUNT'] = parseMetric(data, 'Current thread count: (%d+)')
	vals['TOMCAT_HTTP_CURRENT_THREAD_BUSY'] = parseMetric(data, 'Current thread busy: (%d+)')
	vals['TOMCAT_HTTP_MAX_PROCESSING_TIME'] = parseMetric(data, 'Max processing time: (%d+) ms')
	vals['TOMCAT_HTTP_REQUEST_COUNT'] = parseMetric(data, 'Request count: (%d+)')
	vals['TOMCAT_HTTP_ERROR_COUNT'] = parseMetric(data, 'Error count: (%d+)')
	vals['TOMCAT_HTTP_BYTES_SENT'] = parseMetric(data, 'Bytes sent: (%d+%.%d+) MB')
	vals['TOMCAT_HTTP_BYTES_RECEIVED'] = parseMetric(data, 'Bytes received: (%d+%.%d+) MB')

	return vals
end

return parser
