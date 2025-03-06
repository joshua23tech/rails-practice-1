class PagesController < ApplicationController
    def home 
        @str_msg_test = "Spaced Repetition"
    end

    def contacts
        @nba_all_stars_eastern_conference = ["Jalen Brunson", "Donovan Mitchell", "Jayson Tatum", "Giannis Antetokunpo", "Karl Anthony Towns"]
        @nba_all_stars_western_conference = ["Stephen Curry", "Shai Gilgeous-Alexander", "LeBron James", "Kevin Durant", "Nikola Jokic"]
        @nba_positions = ["PG", "SG", "SF", "PF", "C"]

        @nba_position_matchup = []
        if params[:position]
            @nba_positions.each_with_index do |nba_position, index|
                if nba_position == params[:position]
                    @nba_position_matchup.append(@nba_all_stars_eastern_conference[index])
                    @nba_position_matchup.append(@nba_all_stars_western_conference[index])
                end
            end
        end
    end
end
