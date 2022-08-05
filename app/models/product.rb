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
end
