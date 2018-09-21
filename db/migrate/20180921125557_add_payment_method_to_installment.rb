class AddPaymentMethodToInstallment < ActiveRecord::Migration[5.2]
  def change
    add_reference :installments, :payment_method, foreign_key: true
  end
end
