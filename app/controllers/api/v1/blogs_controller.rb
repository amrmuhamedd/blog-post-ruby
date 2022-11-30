module Api
   module V1
        class BlogsController < ApplicationController
            ALLOWED_DATA = %[title description content user].freeze
            def index
                blogs = Blog.all
                render json: blogs
            end
            def show
                blog = Blog.find(params[:id])
                render json: blog
            end
            def create
                data = json_payload.select {|k| ALLOWED_DATA.include?(k)}
                blog = Blog.new(data)
                if blog.save
                    render json: blog
                else
                    render json: {"error": "couldnt creat it"}
                end
            end
        end
   end
end

