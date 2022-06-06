defmodule Author do
  defstruct contact_email: "", first_name: "", last_name: ""
end

defmodule Comment do
  defstruct author: %Author{}, body: ""
end

defmodule Post do
  defstruct author: %Author{}, body: "", comments: [%Comment{}], title: ""

  def generate_post(
        author \\ %Author{},
        comments \\ [%Comment{}],
        title \\ "Sample Title",
        body \\ "Sample Body"
      ) do
    %Post{
      title: title,
      body: body,
      author: author,
      comments: comments
    }
  end
end

defmodule ElixirLearn.Structs.NestedStruct do
  def get_struct_sample() do
    %Post{}
  end

  def generate_sample_post() do
    author = %Author{
      contact_email: "johndoe@jhondoe.com",
      first_name: "John",
      last_name: "Doe"
    }

    Post.generate_post(author, [
      %Comment{
        author: author,
        body: "First comment"
      },
      %Comment{
        author: author,
        body: "Second comment"
      },
      %Comment{
        author: author,
        body: "Third comment"
      }
    ])
  end
end
