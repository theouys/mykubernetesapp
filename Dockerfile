    # Use a .NET SDK image to build the application
    FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
    WORKDIR /src

    # Copy csproj and restore dependencies
    COPY *.csproj ./
    RUN dotnet restore

    # Copy the rest of the application files and build
    COPY . ./
    RUN dotnet publish -c Release -o /app/out

    # Use a smaller runtime image for the final container
    FROM mcr.microsoft.com/dotnet/aspnet:8.0
    WORKDIR /app
    COPY --from=build /app/out .

    # Expose the port your application listens on
    EXPOSE 80

    # Command to run the application
    ENTRYPOINT ["dotnet", "mydockerapp.dll"]