class User::HomeController < User::UserController
  def index
    respond_to do |format|
      format.html
      format.json { render json: UserDatatable.new(params) }
    end
  end

  def datatable

  end

end
