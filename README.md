# Dart Asynchronous JSON Decoding Error

This repository showcases a common error encountered when working with asynchronous operations and JSON decoding in Dart. The `bug.dart` file contains code that fails to handle potential exceptions during JSON parsing. The `bugSolution.dart` file provides a corrected version with robust error handling.

## Problem

The original code attempts to decode a JSON response from a network request without sufficient error checks. If the server returns an invalid JSON response or a network issue occurs, the code will throw an exception, potentially crashing the application.

## Solution

The solution involves adding checks to ensure the response body is valid JSON before attempting to decode it.  Appropriate error handling is implemented to prevent crashes and provide informative feedback to the user.