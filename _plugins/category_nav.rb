# From http://stackoverflow.com/questions/28331879/jekyll-next-and-previous-links-with-different-categories
# Modified to work with multiple categories

module Jekyll
  class WithinCategoryPostNavigation < Generator
    def generate(site)
      site.categories.each_pair do |category, posts|
        posts.sort! { |a,b| b <=> a}
        posts.each do |post|
          index = posts.index post
          next_in_category = nil
          previous_in_category = nil
          if index
            if index < posts.length - 1
              next_in_category = posts[index + 1]
            end
            if index > 0
              previous_in_category = posts[index - 1]
            end
          end

          unless next_in_category.nil?
            post.data["next_in_category"] ||= Hash.new
            post.data["next_in_category"][category] = next_in_category 
          end
          unless previous_in_category.nil?
            post.data["previous_in_category"] ||= Hash.new
            post.data["previous_in_category"][category] = previous_in_category 
          end

        end
      end
    end
  end
end