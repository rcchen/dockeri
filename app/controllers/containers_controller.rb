class ContainersController < ApplicationController

    def index
        @containers = Docker::Container.all(:all => true)
    end

    def show
        @container = Docker::Container.get(params[:id])
    end

    def start
        container = Docker::Container.get(params[:id])
        container.start
        render nothing: true
    end

    def stop
        container = Docker::Container.get(params[:id])
        container.stop
        render nothing: true
    end

    def destroy
        container = Docker::Container.get(params[:id])
        container.delete
        render nothing: true
    end

    def new
        @images = Docker::Image.all
    end
end
