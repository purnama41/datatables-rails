class UserDatatable < AjaxDatatablesRails::Base
  # uncomment the appropriate paginator module,
  # depending on gems available in your project.
  # include AjaxDatatablesRails::Extensions::Kaminari
  # include AjaxDatatablesRails::Extensions::WillPaginate
  # include AjaxDatatablesRails::Extensions::SimplePaginator

  # def sortable_columns
  #   # list columns inside the Array in string dot notation.
  #   # Example: 'users.name'
  #   @sortable_columns ||= ['users.name' ,'users.phone']
  # end

  # def searchable_columns
  #   # list columns inside  the Array in string dot notation.
  #   # Example: 'users.name'
  #   @searchable_columns ||= ['users.name' ,'users.phone'] 
  # end

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      id: { source: "User.id", cond: :eq },
      name: { source: "User.name", cond: :like },
      phone: { source: "User.phone", cond: :like },
      address: { source: "User.address", cond: :like }
    }
  end

  def data
    # records.map do |record|
    #   {
    #     # example:
    #     # id: record.id,
    #     # name: record.name
    #   }
    records.map do |record|
      {
        id: record.id,
        name: record.name,
        phone: record.phone,
        address: record.address
      }
    end
  end

  private

  def get_raw_records
    # insert query here
    User.all
  end

  # ==== These methods represent the basic operations to perform on records
  # and feel free to override them

  # def filter_records(records)
  # end

  # def sort_records(records)
  # end

  # def paginate_records(records)
  # end

  # ==== Insert 'presenter'-like methods below if necessary
end
