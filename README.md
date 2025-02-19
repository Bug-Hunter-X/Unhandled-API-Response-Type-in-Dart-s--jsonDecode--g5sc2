# Unhandled API Response Type in Dart

This repository demonstrates a common error in Dart applications when handling API responses. The `jsonDecode` function assumes the response is a JSON list (`List<dynamic>`), leading to runtime errors if the server returns a different structure (e.g., a JSON object or an error message).

## The Bug

The `bug.dart` file contains a function `fetchData` that fetches data from a specified API endpoint.  It incorrectly assumes the API response will always be a JSON list.  If the API returns something other than a list, the application will crash with a `type 'String' is not a subtype of type 'List<dynamic>'` error.  This occurs because the `jsonDecode` attempts to cast a non-list response into a List, causing a runtime type error. 

## The Solution

The `bugSolution.dart` file shows a robust approach for handling different API response types. Instead of blindly casting the response, it checks the response type and handles it accordingly. This prevents unexpected crashes and ensures better error handling.
