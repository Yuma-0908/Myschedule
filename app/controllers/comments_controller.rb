class CommentsController < ApplicationController
    
    def create
        @todo = Todo.find(params[:todo_id])
        @todo.comments.create(comment_params)
        redirect_to todo_path(@todo)
    end
    
    private
    def comment_params
        params.require(:comment).permit(:body)
    end
    
end