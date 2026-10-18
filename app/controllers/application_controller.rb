class ApplicationController < ActionController::API
  before_action :set_request_headers, :set_request_format, :set_cache_headers

  private

  def set_request_format
    request.format = :json
  end

  def set_request_headers
    headers["Access-Control-Allow-Origin"] = "*"
    headers["Access-Control-Allow-Headers"] = "*"
    headers["Access-Control-Allow-Methods"] = "GET, POST"
  end

  def set_cache_headers
    headers["Cache-Control"] = "public, max-age=#{10.minutes}"
  end
end
