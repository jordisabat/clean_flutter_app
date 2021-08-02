# Login Presenter

> ## Rules
1. ✅ Call Validation when changing email
2. ✅ Notify emailErrorStream with the same Validation error if it returns an error
3. Notify emailErrorStream with null if Validation does not return an error
4. ✅ Do not notify emailErrorStream if value equals last
5. ✅ Notify isFormValidStream after changing email
6. ✅ Call Validation when changing password
7. ✅ Notify the passwordErrorStream with the same error as Validation, if it returns an error
8. ✅ Notify the passwordErrorStream with null if the Validation does not return an error
9. ✅ Do not notify passwordErrorStream if value equals last
10. ✅ Notify isFormValidStream after changing password
11. ✅ For the form to be valid all Error Streams must be null and all mandatory fields cannot be empty
12. ✅ Do not notify isFormValidStream if value equals last
13. ✅ Call Authentication with correct email and password
14. ✅ Notify isLoadingStream as true before calling Authentication
15. ✅ Notify isLoadingStream as false at the end of Authentication
16. ✅ Notify mainErrorStream if Authentication returns a DomainError
17. ✅ Close all Streams in dispose
18. ⛔️ Write Account in cache on success
19. ⛔️ Take the user to the Poll screen on success