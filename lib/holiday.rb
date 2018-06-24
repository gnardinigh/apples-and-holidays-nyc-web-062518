require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season,holiday|
    holiday.each do |holiday,supplies|
      if holiday==:christmas||holiday==:new_years
        supplies << supply
      end
    end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season,holidays|
    holidays.each do |holiday,supplies|
      if holiday == :memorial_day
        supplies << supply
      end
    end
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]=supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  list = []
  holiday_hash.each do |season, holidays|
     holidays.each do |holiday,supplies|
        if holiday==:christmas||holiday==:new_years
          list << supplies
        
      end
    end
  end
  list.flatten
  
end





def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end








holiday_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}








def symbol_to_string(symbol)
  the_string = symbol.to_s
  the_string = the_string.capitalize
  the_string += ":"
  return the_string
end



def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season,holidays|
    puts season_to_string(season)
    holiday.each do |holiday,supplies|
      
    end
  end
end

all_supplies_in_holidays(holiday_hash)














