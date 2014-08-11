module ImagesHelper
    def images_path
        "http://#{request.host}:#{request.port}/images"        
    end
    def image_path(id)
        "http://#{request.host}:#{request.port}/images/#{id}"
    end
    def image_start_path(id)
        "http://#{request.host}:#{request.port}/images/#{id}/start"
    end
end
