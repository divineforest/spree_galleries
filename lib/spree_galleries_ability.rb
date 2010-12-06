class SpreeGalleriesAbility
  include CanCan::Ability

  def initialize(user)
    can :read, Gallery
    can :index, Gallery
    can :read, GalleryItem
    can :index, GalleryItem
  end
end
