module ContainersHelper
    def containers_path
        "http://#{request.host}:#{request.port}/containers"
    end
    def container_path(id)
        "http://#{request.host}:#{request.port}/containers/#{id}"
    end
    def start_container_path(id)
        "http://#{request.host}:#{request.port}/containers/#{id}/start"
    end
    def stop_container_path(id)
        "http://#{request.host}:#{request.port}/containers/#{id}/stop"
    end
end
