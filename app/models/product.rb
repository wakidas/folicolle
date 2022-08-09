# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Product < ApplicationRecord
  has_paper_trail

  belongs_to :user

  validates :title, presence: true
  validates :url, url: true
end
