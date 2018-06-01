class About < ApplicationRecord
  belongs_to :main


main = Main.find_by(id: '1')
i=0
main.abouts.each do
i=i+1
end
if i==0
about = main.abouts.create(sl: "1", data: "THE COMPLETE AQUATIC SOLUTIONS")
about.save
end

end
