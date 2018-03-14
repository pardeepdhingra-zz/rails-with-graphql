class CreateActorsMovies < ActiveRecord::Migration
  def change
    create_table :actors_movies, id: false do |t|
      t.references :actor
      t.references :movie
    end
    add_index(:actors_movies, [:actor_id, :movie_id], unique: true)
  end
end
