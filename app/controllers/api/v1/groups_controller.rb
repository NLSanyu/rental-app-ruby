class Api::V1::GroupsController < Api::V1::BaseController
  before_action :set_group, only: [:show, :update, :destroy]

  # GET /groups
  def index
    @groups = Group.all
    json_response(@groups)
  end

  # POST /groups
  def create
    @group = Group.create!(group_params)
    json_response(@group, :created)
  end

  # GET /groups/:id
  def show
    json_response(@group)
  end

  # PUT /groups/:id
  def update
    @group.update(group_params)
    head :no_content
  end

  # DELETE /groups/:id
  def destroy
    @group.destroy
    head :no_content
  end

  def search
    @groups = GroupsIndex.query(query_string: { fields: [:group_code, :name, :location, :description], query: search_params[:query], default_operator: 'and' })

    render json: @groups.to_json, status: :ok
  end

  private

  def group_params
    # whitelist params
    params.permit(:group_code, :name, :location, :description)
  end

  def set_group
    @group = Group.find(params[:id])
  end

  def search_params
    params.permit(:query, :page, :per)
  end

end
