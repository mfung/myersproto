class Product < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :description, :picture1_thumb, :picture2_thumb, :picture3_thumb, :picture4_thumb]

  validates :name, :presence => true, :uniqueness => true
  
  belongs_to :picture1_path, :class_name => 'Image'
  belongs_to :picture2_path, :class_name => 'Image'
  belongs_to :picture3_path, :class_name => 'Image'
  belongs_to :picture4_path, :class_name => 'Image'
  belongs_to :brochure_path, :class_name => 'Resource'
  belongs_to :cutsheet_path, :class_name => 'Resource'
  belongs_to :drawing_path, :class_name => 'Resource'
  belongs_to :specsheet_path, :class_name => 'Resource'
  belongs_to :user_manual_path, :class_name => 'Resource'
  belongs_to :instruction_manual_path, :class_name => 'Resource'
end
