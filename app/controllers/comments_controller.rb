class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comments = Comment.find(params[:id])
        render json: comments
    end

    def create
        comment = Comment.create!(item_params), status: :created
        render json: comment
    end

    def destroy
        comment = Comment.find_by(id: params[:id])
        if comment
          comment.destroy
          head :no_content
        else
          render json: { error: "Comment not found" }, status: :not_found
        end
    end       

    def item_params
        params.permit(:comment, :tickets_id, :users_id)
    end
end
