json.extract! payment, :id, :real_ammount, :date, :created_at, :updated_at
json.url payment_url(payment, format: :json)
