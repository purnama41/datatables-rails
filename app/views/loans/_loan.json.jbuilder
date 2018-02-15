json.extract! loan, :id, :business_name, :description, :amount, :duration, :expiry_date, :owner, :created_at, :updated_at
json.url loan_url(loan, format: :json)
