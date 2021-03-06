class HttpConst
  @@codes = {
      #Informational 1xx:
      HTTP_CONTINUE:100,
      HTTP_SWITCHING_PROTOCOLS:101,

      #Successful 2xx:
      HTTP_OK:200,
      HTTP_CREATED:201,
      HTTP_ACCEPTED:202,
      HTTP_NON_AUTHORITATIVE:203,
      HTTP_NO_CONTENT:204,
      HTTP_RESET_CONTENT:205,
      HTTP_PARTIAL_CONTENT:206,

      #Redirection 3xx:
      HTTP_MULTIPLE_CHOICES:300,
      HTTP_MOVED_PERMANENTLY:301,
      HTTP_MOVED_TEMPORARILY:302,
      HTTP_SEE_OTHER:303,
      HTTP_NOT_MODIFIED:304,
      HTTP_USE_PROXY:305,
      HTTP_TEMPORARY_REDIRECT:307,

      #Client Error 4xx:
      HTTP_BAD_REQUEST:400,
      HTTP_UNAUTHORIZED:401,
      HTTP_PAYMENT_REQUIRED:402,
      HTTP_FORBIDDEN:403,
      HTTP_NOT_FOUND:404,
      HTTP_METHOD_NOT_ALLOWED:405,
      HTTP_NOT_ACCEPTABLE:406,
      HTTP_PROXY_AUTHENTICATION_REQUIRED:407,
      HTTP_REQUEST_TIMEOUT:408,
      HTTP_CONFLICT:409,
      HTTP_GONE:410,
      HTTP_LENGTH_REQUIRED:411,
      HTTP_PRECONDITION_FAILED:412,
      HTTP_REQUEST_ENTITY_TOO_LARGE:413,
      HTTP_REQUEST_URI_TOO_LARGE:414,
      HTTP_UNSUPPORTED_MEDIA_TYPE:415,
      HTTP_RANGE_NOT_SATISFIABLE:416,
      HTTP_EXPECTATION_FAILED:417,

      #Server Error 5xx:
      HTTP_INTERNAL_SERVER_ERROR:500,
      HTTP_NOT_IMPLEMENTED:501,
      HTTP_BAD_GATEWAY:502,
      HTTP_SERVICE_UNAVAILABLE:503,
      HTTP_GATEWAY_TIME_OUT:504,
      HTTP_VERSION_NOT_SUPPORTED:505
  }

  def self.codes
    @@codes
  end

  def self.codes_as_array
    @@codes.to_a
  end

  # return it http code name based on the number passed as key
  def self.code_name key
    keys = HttpConst.codes.keys
    values = HttpConst.codes.values

    keys[values.find_index(key)]
  end

  # Check the HTTP code type
  def self.success? code
      code >= 200 && code < 300 ? true : false
  end

  def self.redirect? code
      code >= 300 && code < 400 ? true : false
  end

  def self.client_error? code
      code >= 400 && code < 500 ? true : false
  end

  def self.server_error? code
      code >= 500 ? true : false
  end
end