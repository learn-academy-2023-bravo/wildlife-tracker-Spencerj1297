class Animal < ApplicationRecord
    has_many :sightings

    def as_json(options={})
        super(include: [:sightings])
    end
end
