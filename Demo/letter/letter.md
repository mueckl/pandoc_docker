---
## Zeilenumbrüche: zwei Leerzeichen am Ende der Zeile
fromname: John Doe
fromphone: +49 89 123456
fromemail: john.doe@example.com
# fromfax: +49 89 654321
# frommobilephone: +49 151 1234567 
# fromurl: https://www.example.com
fromaddress: |
  Hauptstr. 11b  
  80337 Munich
# backaddress: line over receiver, default fromaddress
# location: |
#   just on vacation  
#   some island  
#   in the pacific ocean
# myref: my-reference-number-123/2024
to: |
  receiver company  
  customer service  
  target address 123  
  **22033 Hamburg**
#yourmail: 22.12.2019
#yourref: company-ref-number-xyz
place: München
date: 15.12.2024
# datename: date of letter
subject: 'termination of an agreement: 123-456-789'
customer: customer-id-123
# opening: Hello Frank,
# closing: Love,
# signature: signature, default: fromname
# encl: attachment A, attachment B

## LOGO possible ...
# fromlogo: \includegraphics{test.png}
# header-includes:
# - |
#   ```{=latex}
#   \usepackage{graphicx}
#   ```
#fontsize: 14pt
fontfamily: helvet
#fonttheme: sans
#seriffont: "DejaVu Sans"

header-includes: \renewcommand*\familydefault{\sfdefault} 
...
I hereby cancel my contract immediately, or alternatively at the earliest possible date.

Customer number: **customer-id-123**

Please send me a written confirmation of termination stating the date of termination. 
I do not wish to be contacted by you for the purpose of return advertising. I kindly ask you to refrain from doing so.
