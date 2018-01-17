class InfosController < OpenReadController
  before_action :set_info, only: %i[update destroy]

  # GET /infos
  def index
    @infos = Info.all

    render json: @infos
  end

  # GET /infos/1
  def show
    render json: @info
  end

  # POST /infos
  def create
    @info = current_user.infos.build(info_params)

    if @info.save
      render json: @info, status: :created, location: @info
    else
      render json: @info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /infos/1
  def update
    if @info.update(info_params)
      render json: @info
    else
      render json: @info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /infos/1
  def destroy
    @info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info
      @info = current_user.infos.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def info_params
      params.require(:info).permit(:additional_info, :ingredient_id)
    end
end
