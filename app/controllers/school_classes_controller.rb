class SchoolClassesController < ApplicationController
  def new
  end

  def index
    @school_class = SchoolClass.all
  end

  def create
    @school_class = SchoolClass.create(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  private
  
    def school_class_params
        params.required(:school_class).permit(:title, :room_number)
    end
end
