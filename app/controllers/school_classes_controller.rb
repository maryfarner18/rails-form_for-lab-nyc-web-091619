class SchoolClassesController < ApplicationController

    def index
        @school_classes =  SchoolClass.all
    end

    def show
        @school_class = SchoolClass.find(params[:id])
        @title = @school_class.title
        @room_number = @school_class.room_number
    end

    def new
        @school_class = SchoolClass.new
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def create
        @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
        
        redirect_to school_class_path(@school_class)
    end

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(params.require(:school_class).permit(:title, :room_number))

        redirect_to school_class_path(@school_class)
    end

end