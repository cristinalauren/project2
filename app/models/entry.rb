class Entry < ActiveRecord::Base
	belongs_to :log
	has_many :reports


	validates :date, presence: true

	validates :food, presence: true,
	length: {minimum: 5}

	validates :mood, presence: true, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10}

	# paperclip
    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end


