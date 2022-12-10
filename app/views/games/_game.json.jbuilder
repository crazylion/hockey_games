json.extract! game, :id, :name, :home_team, :home_team_id, :guest_team, :guest_team_id, :home_team_score, :guest_team_score, :play_at, :division_name, :created_at, :updated_at
json.url game_url(game, format: :json)
