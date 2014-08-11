class ContainersController < ApplicationController

    def index
        @containers = Docker::Container.all(:all => true)
    end

    def show
        @container = Docker::Container.get(params[:id])
    end

    def destroy
        container = Docker::Container.get(params[:id])
        container.delete
        render nothing: true
    end
end
