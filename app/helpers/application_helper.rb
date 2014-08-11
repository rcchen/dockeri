module ApplicationHelper
    def root_path
        "http://#{request.host}:#{request.port}/"
    end
    def settings_path
        "http://#{request.host}:#{request.port}/settings"
    end
end
