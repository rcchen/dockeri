class ImagesController < ApplicationController

    def index
        @images = Docker::Image.all
    end

    def show
        @image = Docker::Image.get(params[:id])
    end

    def destroy
        image = Docker::Image.get(params[:id])
        image.delete
        render nothing: true
    end

    def start
        image = Docker::Image.get(params[:id])
        container = Docker::Container.create('Image' => image.id)
        container.start('PortBindings' => {
          '3080/tcp' => [{
              'HostIp' => '0.0.0.0',
              'HostPort' => (49153..60000).to_a.sample.to_s
            }]
          })
        render nothing: true
    end
end
