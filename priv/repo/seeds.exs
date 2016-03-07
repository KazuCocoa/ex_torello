alias ExTrello.{Repo, User}

[
  %{
    first_name: "Kazu",
    last_name: "Matsu",
    email: "kazu@example.com",
    password: "12345678"
  },
]
|> Enum.map(&User.changeset(%User{}, &1))
|> Enum.each(&Repo.insert!(&1))
