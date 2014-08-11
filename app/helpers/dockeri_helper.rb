module DockeriHelper
    def servers_path
        "http://#{request.host}:#{request.port}/containers"
    end
end
