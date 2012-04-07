class HacksController < InheritedResources::Base
  def update
    update!{ hacks_path }
  end

  def create
    create!{ hacks_path }
  end
end
