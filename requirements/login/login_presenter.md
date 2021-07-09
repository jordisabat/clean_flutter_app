# Login Presenter

> ## Rules
1. Validate email with Validation
2. Notify emailErrorStream with Validation result
3. Notify isFormValidStream after validating email
4. Validate password with Validation
5. Notify passwordErrorStream with Validation result
6. Notify isFormValidStream after validating password
7. For the form to be valid all Error Streams must be null and all mandatory fields cannot be empty
8. Call Authentication with correct email and password
9. Notify isLoadingStream as true before calling Authentication
10. Notify isLoadingStream as false at the end of Authentication
11. Notify mainErrorStream if Authentication returns a DomainError
12. ⛔️ Write Account in cache on success
13. ⛔️ Take the user to the Poll screen on success
14. Close all Streams in dispose