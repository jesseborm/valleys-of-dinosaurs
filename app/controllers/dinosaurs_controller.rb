class DinosaursController < ApplicationController

  def index
    @dinosaurs = Dinosaur.all
  end

  def show
    @dinosaur = Dinosaur.find(params[:id])
  end

  def new
    @dinosaur = Dinosaur.new
  end

  def create
    # debugger
    @dinosaur = Dinosaur.new(dinosaur_params)

    if @dinosaur.save
      redirect_to @dinosaur
    else
      render 'new'
    end
  end

  def update
    @dinosaur = Dinosaur.update #FIXME
  end

  def destroy
    @dinosaur = Dinosaur.delete #FIXME
  end

# private
  def dinosaur_params
    params.require(:dinosaur).permit(:name, :age, :image_url)
  end
end
