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

  def edit
    show
  end

# -------------------------------------

  def update
    show
      if @dinosaur.update_attributes(dinosaur_params)
        redirect_to @dinosaur
      else
        render 'edit'
      end
  end

  def destroy
    show
    @dinosaur.destroy
    redirect_to dinosaurs_path
  end

private
  def dinosaur_params
    params.require(:dinosaur).permit(:name, :age, :image_url, :valley_id)
  end

end
