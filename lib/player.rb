class Player
    DEFAULT_HIT_POINTS = 60
    attr_reader :hit_points

    def initialize(name, hit_points=DEFAULT_HIT_POINTS)
        @name = name
        @hit_points = hit_points
    end

    def name
        @name
    end

    def attack(player)
        player.reduce_hit_points
    end

    def reduce_hit_points
        @hit_points -= 10
    end
end