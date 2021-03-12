class BitbucketApiService
  def initialize(username:, password:)
    @username = username
    @password = password
  end

  private

  attr_reader :username, :password

  def connection(username:, password:, resource:, params:)
    Faraday.new(
      url: "https://api.bitbucket.org/2.0/#{resource}/",
      params: params,
    ) { |conn|
      conn.basic_auth username, password
      conn.request :json
      conn.response :json, content_type: /\bjson$/, parser_options: { object_class: OpenStruct }
      # conn.response :logger
    }
  end
end
