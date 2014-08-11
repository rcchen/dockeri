require 'docker'

class DockeriController < ApplicationController

    def index
        begin
            @containers = Docker::Container.all(:all => true)
            @images = Docker::Image.all
        rescue
            redirect_to settings_path
        end
    end

    def settings
        @settings = Server.first
        if @settings.nil?
            @settings = Server.new
        end 
    end

    def save_settings
        @settings = Server.first
        if @settings.nil?
            @settings = Server.create(server_params)
        else
            @settings.update(server_params)
        end
        Docker.url = @settings.docker_url
        flash[:success] = "Settings updated!"
        redirect_to settings_path
    end

    private

    def server_params
        params.require(:server).permit(:docker_url)
    end

end
