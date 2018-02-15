class LoanDatatable < AjaxDatatablesRails::Base

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }
        business_name:  { source: "Loan.business_name", cond: :like, searchable: true, orderable: true },
        description:    { source: "Loan.description",  cond: :like },
        amount:         { source: "Loan.amount" },
        duration:       { source: "Loan.duration" },
        expiry_date:    { source: "Loan.expiry_date" },
        owner:          { source: "Loan.owner" }
      }
  end

  def data
    records.map do |record|
      {
        # example:
        # id: record.id,
        # name: record.name
        business_name:  record.business_name,
        description:    record.description,
        amount:         record.amount,
        duration:       record.duration,
        expiry_date:    record.expiry_date,
        owner:          record.owner
      }
    end
  end

  private

  def get_raw_records
    # insert query here
    Loan.all
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
