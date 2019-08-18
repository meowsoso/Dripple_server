Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins '*'
        resource '*',
            # :headers => :any,
            headers: :any,
            # :methods => %i(get post put patch delete options head) #array of symbols
            methods: [:get, :post, :put, :patch, :delete, :options, :head] #array of symbols
    end
end