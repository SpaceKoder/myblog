require "stringex"
class Post < Thor
  include Thor::Base
  include Thor::Actions
  source_root Dir.pwd

  desc "new", "create a new post"
  def new
    config = YAML::load File.open("_data/categories.json", 'r')
    
    say("Categories: \n")
    
    for cat in config
      say("-#{cat.capitalize}")
    end

    catSelected = ask("Select a category:")
    catExisted = false

    for cat in config
      if catSelected == cat
        catExisted = true
      end
    end

    if catExisted == true
      postsFile = "_data/#{catSelected.to_url}.json"
      posts = YAML::load File.open(postsFile, 'r')

      title = ask("Post title:")
      date = Time.now.strftime('%Y-%m-%d')
      filename = "#{date}-#{title.to_url}"
      filepath = "_posts/#{catSelected.to_url}/#{filename}.md"

      posts.push(filename)
      File.open(postsFile, 'w') do | post |
        post.puts "#{posts}"
      end

      say("Generating post...")
      File.open(filepath, "w") do | post |
        post.puts "---"
        post.puts "layout: post"
        post.puts "date: #{Time.now}"
        post.puts "title: #{title.capitalize}"
        post.puts "categories: [#{catSelected}]"
        post.puts "tutorial: #{posts.size} #Tutorial ID Number"
        post.puts "permalink: /#{title.to_url}/"
        post.puts "---"
      end
      say("-----Done!-----")
    else
      say("Error: Category not exist!")
    end
  end

  desc "delete", "delete a new post"
  def delete
    config = YAML::load File.open("_data/categories.json", 'r')
    
    say("Categories: \n")
    
    for cat in config
      say("-#{cat.capitalize}")
    end

    catSelected = ask("Select a category:", :red)
    catExisted = false

    for cat in config
      if catSelected == cat
        catExisted = true
      end
    end

    if catExisted == true
      postsFile = "_data/#{catSelected.to_url}.json"
      posts = YAML::load File.open(postsFile, 'r')
      filename = ask("Filename to delete:")
      filePath = "_posts/#{catSelected.to_url}/#{filename}.md"

      if File.exist?(filePath)
        if yes?("Confirm to delete(Y/N)")
          postIndex = posts.index(filename)

          say("Deleting post file...")
          remove_file(filePath)
          say("-----Post deleted-----")

          say("Updating post list...")
          posts.delete(filename)
          File.open(postsFile, 'w') do | post |
            post.puts "#{posts}"
          end
          say("-----Post List Updated-----")

          say("Updating other posts Tutorial ID Number...")
          for post in posts.slice(postIndex, posts.length)
            postFilePath = "_posts/#{catSelected.to_url}/#{post}.md"
            tutorialID = posts.index(post) + 1

            gsub_file(postFilePath, "tutorial: #{tutorialID + 1} #Tutorial ID Number", "tutorial: #{tutorialID} #Tutorial ID Number")
          end
          say("-----All Posts Tutorial ID Number has been Updated-----")
        end
      else
        say("Error: File does not exist!")
      end
    else
      say("Error: Category not exist!")
    end
  end
end