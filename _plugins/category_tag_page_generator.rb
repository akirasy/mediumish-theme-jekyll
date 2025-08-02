module Jekyll
  class TagsPageGenerator < Generator
    safe true

    def generate(site)
      # Create the Tags page
      tags_page = PageWithoutAFile.new(site, site.source, "", "tags.md")
      tags_page.content = ""
      tags_page.data["layout"] = "tags"
      tags_page.data["title"] = "Tags"
      tags_page.data["permalink"] = "/tags/"

      site.pages << tags_page

      # Create the Categories page
      categories_page = PageWithoutAFile.new(site, site.source, "", "categories.md")
      categories_page.content = ""
      categories_page.data["layout"] = "categories"
      categories_page.data["title"] = "Categories"
      categories_page.data["permalink"] = "/categories/"

      site.pages << categories_page
    end
  end

  class PageWithoutAFile < Page
    def read_yaml(*)
      @data ||= {}
    end
  end
end

