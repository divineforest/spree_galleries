SpreeGalleries
==============

Simple galleries with pictures for Spree.

Installation
==============
rake spree_galleries:install && rake db:migrate

To change default picture sizes create config/initializers/spree_galleries.rb and insert:

    SpreeGalleries::Config.attachment_styles = { :mini => '48x48>', :small => '100x100>', :normal => '220x220>', :large => '600x600>' }

Copyright (c) 2010 [divineforest](http://github.com/divineforest), released under the New BSD License
