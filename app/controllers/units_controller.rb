class UnitsController < ApplicationController
  before_action :set_group
  before_action :set_group_unit, only: [:show, :update, :destroy]

  # GET /groups/:group_id/units
  def index
    json_response(@group.units)
  end

  # GET /groups/:group_id/units/:id
  def show
    json_response(@unit)
  end

  # POST /groups/:group_id/units
  def create
    @group.units.create!(unit_params)
    json_response(@group, :created)
  end

   # PUT /groups/:group_id/units/:id
   def update
    @unit.update(unit_params)
    head :no_content
  end

  # DELETE /groups/:group_id/units/:id
  def destroy
    @unit.destroy
    head :no_content
  end

  def search
    @units = UnitsIndex.query(query_string: { fields: [:unit_code, :area, :price], query: search_params[:query], default_operator: 'and' })

     render json: @units.to_json, status: :ok
  end

  private

  def unit_params
    params.permit(:unit_code, :area, :price)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

  def set_group_unit
    @unit = @group.units.find_by!(id: params[:id]) if @group
  end

  def search_params
    params.permit(:query, :page, :per)
  end
end
