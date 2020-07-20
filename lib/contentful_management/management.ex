defmodule Contentful.Management do
  @moduledoc """
  The Contentful Management API allows the interaction with content that is draft or archived
  with more details in the `%Contentful.SysData` and will return assets, entries, etc.
  No management capabilities yet.

  It exhibits the same behavior as the Content Delivery API - see
  `Contentful.Delivery`.

  ## Usage

  In order to use it:

  ```
  # in your config.exs
  config :contentful, delivery: [
    endpoint: :management,

    space_id: "<my_space_id>",
    environment: "<my_environment>",
    access_token: "<my_access_token_cpa>"
  ]

  ```

  you should be able to then use the `Contentful.Delivery` as a proxy:

  ```
  import Contentful.Query
  alias Contentful.Delivery, as: Management

  {:ok, entry} = Management.Entries |> fetch_one("my_entry_id")
  ```

  You can also pass a custom URL (string) to the `:endpoint` in `config.exs`.

  """
end
