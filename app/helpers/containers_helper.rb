module ContainersHelper
    def containers_path
        "http://#{request.host}:#{request.port}/containers"
    end
    def container_path(id)
        "http://#{request.host}:#{request.port}/containers/#{id}"
    end
end
