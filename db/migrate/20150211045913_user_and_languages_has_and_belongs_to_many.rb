class UserAndLanguagesHasAndBelongsToMany < ActiveRecord::Migration
  def change

    create_table :users_languages, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :part, index: true
    end
  end
end
