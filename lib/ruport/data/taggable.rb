# The Ruport Data Collections.
# Authors: Gregory Brown / Dudley Flanders
#
# This is Free Software.  For details, see LICENSE and COPYING
# Copyright 2006 by respective content owners, all rights reserved.
module Ruport::Data
  
  #
  # === Overview
  # 
  # This module provides a simple mechanism for tagging arbitrary objects.  
  # It provides the necessary methods to set and retrieve tags which can 
  # consist of any Ruby object.
  #
  module Taggable

    #
    # Adds a tag to the object.
    #
    # Example:
    #
    #   taggable_obj.tag :spiffy
    #
    def tag(tag_name)
      tags << tag_name unless has_tag? tag_name
    end
    
    #
    # Removes a tag from the object.
    #
    # Example:
    #
    #   taggable_obj.delete_tag :not_so_spiffy
    #
    def delete_tag(tag_name)
      tags.delete tag_name
    end
  
    #
    # Checks to see if a tag is present.
    #
    # Example:
    #
    #   taggable_obj.has_tag? :spiffy #=> true
    #
    def has_tag?(tag_name)
      tags.include? tag_name
    end
  
    # 
    # Returns an Array of the object's tags.
    #
    # Example:
    #
    #   taggable_obj.tags #=> [:spiffy, :kind_of_spiffy]
    #
    def tags
      @ruport_tags ||= []
    end
   
    # 
    # Sets the tags to some Array.
    #
    # Example:
    #
    #   taggable_obj.tags = [:really_dang_spiffy, :the_most_spiffy]
    #
    def tags=(tags_list)
      @ruport_tags = tags_list
    end

  end
  
end
