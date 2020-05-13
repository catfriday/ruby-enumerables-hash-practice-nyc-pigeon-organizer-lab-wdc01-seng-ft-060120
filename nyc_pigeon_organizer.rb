require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_2 = {}

  data.each do |key, value|
    value.each  do |attribute, names|
      names.each  do |name|
        
        if !pigeon_2[name]
          pigeon_2[name] = {}
        end

        if !pigeon_2[name][key]
          pigeon_2[name][key] = []
        end

        pigeon_2[name][key] << attribute.to_s   
        
      end
      
    end
  end
  pigeon_2
end
