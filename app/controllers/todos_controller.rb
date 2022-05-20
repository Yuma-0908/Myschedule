class TodosController < ApplicationController
    
    def index
        @todos = Todo.all.order(created_at: 'desc')
    end
    
    def show
        @todo = Todo.find(params[:id])
    end
    
    def new
        @todo = Todo.new
    end
    
    def create
        # render plain: params[:todo].inspect
        # save
        # @todo = Todo.new(params[:todo])
        @todo = Todo.new(post_params)
        if @todo.save
            # redirect
            redirect_to todos_path
        else 
            # render plain: @todo.errors.inspect
            render 'new'
        end
    end
    
    private
        def post_params
            params.require(:todo).permit(:title, :body)
        end
end
