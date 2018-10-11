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
          item.quality = if item.sell_in > 10
              item.quality + 1
            elsif item.sell_in > 5
              item.quality + 2
            elsif item.sell_in > 0
              item.quality + 3
            else
              0
            end

  item.quality = item.quality if item.quality <= 50
  item.quality = 50 if item.quality> 50

  item.sell_in -= 1


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
