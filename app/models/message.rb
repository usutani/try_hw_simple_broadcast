class Message < ApplicationRecord
  after_create_commit :broadcast_later

  validates :body, length: { minimum: 2 }

  private

  def broadcast_later
    broadcast_append_later_to :message
  end
end
