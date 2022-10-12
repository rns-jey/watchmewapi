class AddReferencesToOrgFromContacts < ActiveRecord::Migration[6.1]
  def change
    add_reference :contacts, :organization, index: true, foreign_key: true
    remove_reference :contacts, :user, index: true
  end
end
