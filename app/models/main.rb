class Main < ApplicationRecord
has_many :facts, dependent: :destroy
has_many :abouts, dependent: :destroy
has_many :newarrivals, dependent: :destroy

mains = Main.all
i=0
mains.each do |check|
i=i+1
end
if i==0
main = Main.create(id: "1")
main.save
end
end