# HTTP

> ## Success
1. ✅ Request with a valid http (post)
2. ✅ Pass the JSON content type to the headers
3. ✅ Call request with correct body
4. ✅ Ok - 200 and answer with data
5. ✅ No content - 204 and response without data

> ## Errors
1. ✅ Bad request - 400
2. ✅ Unauthorized - 401
3. ✅ Forbidden - 403
4. ✅ Not found - 404
5. ✅ Internal server error - 500

> ## Exception - Status code different from those mentioned above
1. Internal server error - 500

> ## Exception - Http request gave some exception
1. Internal server error - 500

> ## Exception - Invalid http verb
1. Internal server error - 500