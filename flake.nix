{
  description = "Project Templates";

  outputs = { self }: {
    templates = {
      rust = {
        path = ./rust;
        description = "Basic starting rust template";
      };
    };
  };
}
