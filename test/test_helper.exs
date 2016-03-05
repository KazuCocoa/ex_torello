ExUnit.start

Mix.Task.run "ecto.create", ~w(-r ExTrello.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r ExTrello.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(ExTrello.Repo)

