class AddReferencesToOrgFromAccount < ActiveRecord::Migration[6.1]
  def change
    add_reference :organizations, :account, index: true, foreign_key: true
  end
end
