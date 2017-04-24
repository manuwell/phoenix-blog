defmodule Teacher.Api.V1.PostView do
  use Teacher.Web, :view

  def render("index.json", %{posts: posts}) do
    %{data: render_many(posts, Teacher.Api.V1.PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, Teacher.Api.V1.PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title}
  end
end
