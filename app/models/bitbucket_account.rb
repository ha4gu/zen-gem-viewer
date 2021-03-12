class BitbucketAccount < HostingAccount
  validates :username, :password, :workspace, presence: true

  def fetch_repositories
    # https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D
    connection = bitbucket_api_connection(username: username, password: password,
                                          resource: "repositories", params: { roll: "member" })

    repositories = []
    current_page = 1

    loop do
      resp = connection.get(BITBUCKET_WORKSPACE) { |req| req.params["page"] = current_page }
      resp.body.values.each { |value| repositories << value }

      break unless resp.body.next

      current_page += 1
    end

    repositories.each do |repo|
      repository = Repository.find_or_initialize_by(uuid: repo.uuid)

      repository.name = repo.name
      repository.main_branch = repo.mainbranch.name
      repository.save
    end
  end

  # これは別のクラスとかにした方がよさそうだな？newとかgetとかできる感じでさぁ。この辺はjc-gemを参考にすればよさそうか？
  def bitbucket_api_connection(username:, password:, resource:, params:)
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

# == Schema Information
#
# Table name: hosting_accounts
#
#  id           :integer          not null, primary key
#  custom_name  :string
#  organization :string
#  password     :string
#  token        :string
#  type         :string           not null
#  username     :string
#  workspace    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
