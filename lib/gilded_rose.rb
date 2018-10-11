class GildedRose

  def initialize(items)
      @items = items
    end

    def update_quality()
      @items.each do |item|

        case item.name

        when "Aged Brie"
          if item.sell_in > 0
            item.quality +=  1
          else
            item.quality += 2
          end

          item.quality = item.quality if item.quality <= 50

          item.sell_in -= 1
        when "Backstage passes to a TAFKAL80ETC concert"

        when "Sulfuras, Hand of Ragnaros"
          # it does nothing
        when "Conjured"
        else
          if item.sell_in > 0
            item.quality -= 1
          else
            item.quality = 0
          end

          item.quality = item.quality if item.quality >= 0

          item.sell_in -= 1
          end
        end
      end

end
