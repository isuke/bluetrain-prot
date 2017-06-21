module ApiV1::Controllers::Graphql
  class Show
    include ApiV1::Action

    def call(params)
      query_variables = params[:vairables] || {}
      self.body = JSON.generate(BluetrainSchema.execute(params[:query], variables: query_variables))
    end
  end
end
