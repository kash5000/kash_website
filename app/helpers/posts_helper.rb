module PostsHelper
   def add_latest_post(posts_list, project)
       post = Post.where("project_id = ?", project.id).first
       posts_list.insert(0, post)
   end
end
