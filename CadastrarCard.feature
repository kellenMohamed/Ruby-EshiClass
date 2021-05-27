@addCard

Feature: Add Credit or Debit Cards


Scenario Outline: Add credit or debit cards

Give hoje ser dia <date>
 AND that <user> is in the YourLogo site
 AND this user loggin is <loggon>
 AND he is in the profile add cards menu
 AND he wants to add a <cardType>
 AND he <owner> the owner card
 AND the flag card is <flagCard>
 AND the validates card is "CardDate"
When he click on the add Card button
Then the <message> should be shown

Examples:

| date        |user     | loggon      | cardType     | owner  | flagCard | CardDate   | message                                                              |
| 26/05/2021  | Kellen  | true        | Credit       | is     | Master   | 26/05/2021 | Invalid Date Card.                                                   |
| 26/05/2021  | Kellen  | true        | Credit       | is     | Master   | 26/06/2021 | Card added successfully.                                             |
| 01/01/2000  | Maria   | true        | Debit        | is     | Visa     | 15/04/2030 | Card added successfully.                                             |
| 26/05/2021  | Maria   | true        | Debit        | is     | Visa     | 25/05/2021 | Invalid Date Card.                                                   |
| 26/05/2021  | Kellen  | true        | Credit       | is     | Amex     | 26/05/2022 | Invalid Card Type, please, enter with a Credit or Debit card Type.   |
| 29/02/2020  | João    | true        | Refeicao     | is     | Sodexo   | 01/03/2020 | Invalid Card Type, please, enter with a Credit or Debit card Type.   |
| 09/01/1986  | Julio   | false       | Credit       | is     | Master   | 10/01/1986 | The user is not log in the YourLog site, please make the loggin now! |
| 31/12/2015  | César   | false       | Debit        | is     | Visa     | 31/12/2020 | The user is not log in the YourLog site, please make the loggin now! |
| 26/05/2021  | Kellen  | true        | Credit       | is not | Master   | 26/06/2021 | The user should be owner of the Card.                                |
| 01/01/2000  | Maria   | true        | Debit        | is not | Visa     | 15/04/2030 | The user should be owner of the Card.                                |


