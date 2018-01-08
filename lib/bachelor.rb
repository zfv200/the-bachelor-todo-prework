
def get_first_name_of_season_winner(data, season)
  winner = " "
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      winner = contestant["name"].split(" ")[0]
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  name = " "
  data.each do |season, contestant|
    contestant.each do |contestants|
      if contestants["occupation"] == occupation
        name = contestants["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  from_hometown = []
  data.each do |season, contestant_data|
    contestant_data.each do |contestant|
      if contestant["hometown"] == hometown
        from_hometown << contestant["name"]
      end
    end
  end
  from_hometown.length
end

def get_occupation(data, hometown)
  first_from_hometown = []
  data.each do |season, contestant_data|
    contestant_data.each do |contestant|
      if contestant["hometown"] == hometown
        first_from_hometown << contestant["occupation"]
      end
    end
  end
  first_from_hometown[0]
end

def get_average_age_for_season(data, season)
  ages = []
    data.each do |seasons, contestant_data|
      if seasons == season
        contestant_data.each do |contestant|
          ages << contestant["age"].to_i
        end
      end
    end
  sum = ages.reduce(0) do |sum, i|
    sum += i
  end
  this = sum / ages.count.to_f
  this.round
end
