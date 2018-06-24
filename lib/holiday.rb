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

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season,holidays|
    text_symbol=season.to_s
    puts "#{text_symbol.capitalize}"
    
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







