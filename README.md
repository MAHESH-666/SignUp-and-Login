# Sign Up and Login — ASP.NET Web Forms

A legacy C# ASP.NET Web Forms sample with registration, login, and a dashboard page backed by SQL Server.

## Features

- Registration form
- Login form
- Dashboard page after successful login
- SQL Server data access using ADO.NET

## Technology

- C#
- ASP.NET Web Forms
- .NET Framework
- ADO.NET
- SQL Server
- Visual Studio / IIS Express

## Run locally

1. Open `Login.sln` in Visual Studio on Windows.
2. Restore NuGet packages.
3. Configure the connection named `dbcs2` in `Login/Web.config` for a local development database.
4. Ensure the expected signup table/schema exists.
5. Run using IIS Express.

## Security notice

This is a learning project, not production-ready authentication. The current login logic compares a supplied password against a database field; do not use real passwords or publish real account data with this sample. Production authentication must use a modern password-hashing mechanism, proper validation, HTTPS, secure cookie/session settings, and rate limiting. Do not commit database credentials or live user records.
