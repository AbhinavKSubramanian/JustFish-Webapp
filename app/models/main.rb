class Main < ApplicationRecord
has_many :facts, dependent: :destroy

main = Main.create(num: "1")
main.save

end
