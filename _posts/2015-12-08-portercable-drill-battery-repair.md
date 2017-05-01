---
layout: post
title: "Porter Cable PCXMVC NI-CD/LI-ION Battery Charger Repair"
date: 2015-12-08 00:00:00
description: Out of the blue my Porter Cable drill's battery charger stopped working. So instead of buying a new one for $30 I decided to repair it. The following process fixed my charger but may or may not be applicable to yours.
comments: true
tags: 
 - electronics
---

# Preface
Out of the blue my Porter Cable drill's battery charger stopped working. So instead of buying a new one for $30 I decided to repair it. The following process fixed my charger but may or may not be applicable to yours.

# Required Tools
1. Torx security bits (one with the hole in the center of the bit)
2. Soldering iron
3. Solder
4. Multimeter to verify this is the issue
5. Optionally, solderwick or a solderpump for removing solder

# Defective Components
1. AC line 4A fuse, part number = [Bel Fuse Inc. MRF 4-BULK](https://www.digikey.com/product-detail/en/MRF%204-BULK/MRF%204-BULK-ND/654742){:target="_blank"}
2. Protection diodes for switching regulator, part number = [1N2007 (free samples + free shipping via ON Semiconductor's website)](http://www.onsemi.com/PowerSolutions/product.do?id=1N4007){:target="_blank"}

# Description of Issue
Two protection diodes (D3 and D4) failed short causing the fuse (T4A) to blow. Replacing the two protection diodes and fuse brought my charger back to life. Take your multimeter and measure across the two leads of TA4, if it reads a very high resistance value then your fuse is blown, if it reads 0-10 ohms your fuse is OK and something else is defective. Now measure across D3 and D4, if you measure 0 ohms across both the diodes this is your issue Use the pictures below to fix it!

# Pictures

Remove the 4 black feet covers to reveal 4 security torx screws to open the charger up

![](https://lh3.googleusercontent.com/skS3QCdemHJWTGJgpKZv-8vtkOTeERo9WGU66EWZGTzVSeervFTY1ArlFmXnJPDPe30sqb3ic2IiI9hVnWCK3NDjtvFV0lazQ3iSsiLjniwHpxFmZTZDCDwAV1Ef2dUqoRnJuedVQj20N43OGo7jy0td8oPJzfMKfocggOfZRLpo3x-WqjTpxbFF-bvWlmAD7xOSJbbQEzSad5JrVMkAGaFgZKvEYBuoKNSRNLwDqip1M0mksNSHTbEEXMXY6buNvweY99lC1-c_PLrQ3LJMfO-my_xfv9CVHoyxc1264uKDzO6uQbhEwSxwSjSF0IVx3CLR2BezyK9ZL51i55jSWBT__9uPm_P181biBUMhrkWIOIGifrBKvhA926QKI37-GhBm2PWnUQsVl5KygLHG7m6UiSSAY-UDLonPWZFTSrxIbNQ75AAb2ydLJ0BZCGhtTd7uqlPzsp19fwh2-P3vJDEWjyBfnNBYCvCvPgkw6C6q8ywExMYA23SzPpRjgVk2mM1VWhXjtCSpH_ij2W1HJ2UBy30C4-_1P3FQ03m4p71mOJ9xpgJ1580YttOnQWoh8PZ4QJx2XNElm4dS9oPtzhsW30egwTuGxbqxObppqHq55t4DE8gi=w543-h723-no)

Remove the screws and open the cover, to remove the PCB it must be slide the opposite way of how the battery is normally inserted

![](https://lh3.googleusercontent.com/eSjfhe5y-BV7N5ATYpz-VTiGtxU-uhdwdocSC3ywhQB3Lf9Npoa-xDtkDPykfcDLa7SMF67LumojjdzG90JIGUTFEG1MO_t3hFgtAo2kIaQslM2q1hywIjfRjQIDCuf3skmNVHMrwzE75wqDIeDsQByfEgjkNp7K7M7gQYzjDCJXBh6Ak6FqzsDuP-iKzertYmjUgy3NllGAlpqmFYIeJ6gM5ZHqR-yIIDhdfMe3tMFcz07wxYu1IJifM0seCszaCKYYxBLlpPH6o7bDGxOpWNZ3V10qQVe0m_NgFWPyVfWBMU2gQjrDN82lHKSWml0-KJDkFhyowyM0CI8ngzYSipLUzWD218GEkg6gTmBxwzzT_MQ8XVLit5Jqbw01ebIa_du8g2b1BNOgtqhUg1e-3UUIzeSRFZJfM1ogwzqABaJ5e3ZELiNy01DU3g_9XzYtVrI1qPw8zznSniyQXWzAO9VjTvKTw2_iY6GOpP8xEVAafRBkUoK-e6LeM-VOWHY6cFon8hIXteMhyraHrRycJLkUVZyNoKXwCtBtfTRKXHMMTpbDc8m59Pb8RqxOGcPgDtGDGOqXnt8M34OcKm4No1VS8XV-uXQv9iiAJ1k28FnKk3jCz5J3=w543-h723-no)

Diodes and fuse that need to be replaced, you'll need to cut back the foam material to access D4 and F4A

![](https://lh3.googleusercontent.com/EKInvwroWibg4VAeC366hiZhJH9OAKLELCZf_bPLhPg3wOYcT-Dzdwydt5eL5pGE0qBDUe1nN5Ez9UzY-eEntkIkepgIfu0mw1BAtOthMeR_5eoS5Dudfdh2uyAiua_x74BAExCKUVszUWdDYwEyq3aTiQECQ9VasiG4o0SJ9u89Iddb1MXHg-k4--PKc0qkkUpgp391iYH5_gwtTYvJP-ZZnt9xlTrFDdzorwzvfUD4iiSiUirAnxQrOlbSZGi5v8onCk7vnVeJGlPHaOn9b0oKbc36zvgcuysmaUhirWuJUbcblsizjYYl8X33mdp492tzlhRUgY5OBYwu_K0GbYNPaoIdv5lQKiatKOovMsp9-HmKkqUds_xLtBQt_QDpVoISp0MLUhtwxmh2wcX-oB7zvif5Z5GviSF7VIBwhrQT3fXbc0tQSVuoDX6EY5uU1rW1ygmDuP-7F3zzVMOn8TKiS6OrLkM_8LrFiUsTNk5UxtSuSpftVCWRQ_Ln0x1F3_Sw-qVWAU8WydaTv5u9qoPjqJ-pTdTAaZ2vh25DZ1QTD8LO2WQE6DvREq3XRiZMdljpeV-6PLMuQqyemCJaiIljqnCl3-d6dgHAsVvLrrcUFthJECrc=w543-h723-no)

The surface mount side

![](https://lh3.googleusercontent.com/IsuZa_LOQZ4z7HpQlTwaP9a7fTuX8RAmKfR6qigQGQDcqJJ33mR5i5LPngirKwyJuFmyQoXiQzzyO1UeUum0IZ5xP6ayj1P7jgr05RgG3wMo-BttmTy2x48P0I5UjWbNO92hHz0_p3_Fm0AbuHq1vhgzGH7KdWahhl9w3TSG37NNDuRkHqqD8r4ZRHTYYpR3iOTSK2efURD-6BMGfXvxm3smMHq7-x-TxLy2gFpFQSMu4mvAgmu8PuEvBXbJkJ58DuXASpv0LnxUa-VhKQqKxjWeqSGpgAG242GaOj5tXPqMXR4NKM-QXG9tb6z2YDwPUtOuetc1gV9J_kA7KiyjbKhss2OMM8NK6xeziSA1zj8dlHD7OqKeq1mhL7b3aTRM1NL7qSM1lmkzFkhw5Ufe1WQSUomjrxRMZlJmG2eMZyZ1g6o6uTXhRd2QXUI-6DUkGhL7ihCKAjpb5HojzNbrH4oMk38cEBHyjhS00ymuQFGg11q5jJ-tMAnEIGXCij-xIznHjnSMJGLClPSKUAvP0hgBJF77f09ceLXtHjspvmXux1y4laDI5FnT6p9-VWNWwtyJYMR9Bapj4bKdcSJHPSj22EqMvAZpwXQJYYrCWEIYmCxmc0wL=w543-h723-no)