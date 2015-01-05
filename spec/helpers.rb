module Helpers
  def random_http_code
    http_codes_a = HttpConst.codes_as_array
    rand_index = Random.new.rand(0...http_codes_a.length-1)
    http_codes_a[rand_index].last
  end
end