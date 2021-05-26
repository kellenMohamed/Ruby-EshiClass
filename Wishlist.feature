@addWishlist

Feature: Add the Wishlist


Scenario Outline: Add new products in a wishlist

Give that user "" is in the YourLogo site
 AND this user loggin is ""
 AND he is in the details page
  OR in the visible Quick view page
When he click on the add product button
Then the product "" is added in the wishlist
 AND the message "" should be shown

Examples:

|user     | loggon      | product                     | message                                                               |
| Kellen  | true        | Faded Short Sleeve T-shirts | Product added in the wishlist                                         |
| Julio   | false       | Printed Dress               | The user is not log in the YourLog site, please make the loggin now!  |


Scenario Outline: Search the new products added in a wishlist


Give that user "" is in the YourLogo site
 AND this user loggin is ""
When he click on the wishlist menu
Then the wishlist "" be shown
 AND the message "" should be shown


|user     | loggon      | wishlist    | message                                                               |
| Kellen  | true        | should      |                                                                       |
| Julio   | false       | should not  | The user is not log in the YourLog site, please make the loggin now!  |

