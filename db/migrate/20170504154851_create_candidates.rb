class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :highest_degree
      t.string :specialization
      t.integer :marks
      t.integer :total_experience
      t.string :work_summary
      t.integer :work_gap
      t.integer :education_gap
      t.integer :mobile
      t.text :linkedin
      t.text :stackoverflow
      t.text :github

      t.timestamps null: false
    end
  end
end
