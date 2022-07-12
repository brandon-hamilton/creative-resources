# Record Keeping

All about record keeping, so you can do work once instead of twice.

Echoing what was stated in the [README](/README.md#legal-disclaimer), this is not legal or tax advice. Seek professional legal and financial advice.

## Backup & Recovery

- External
	* storage device(s) not always attached
- Cloud
	* sync + previous file versions
- Off-site
	* storage (devices or documents) stored in a different location
	* e.g. safety deposit box

These are general recommendations, as it's unlikely all three will fail simultaneously.

You may or may not need to implement all of them. If you're just starting freelancing for example, `Cloud` alone may be the most effective.

**Practice** recovering. Testing your backups is the only way to know they'll work and what to expect.

## Files

Financial documents generally require a 7 year minimum of records be maintained.

For maintaining client files and documents, generally:

- Minimum: 3 years
- Recommended: 7 years

Additionally:

- You may need to delete all local copies of a job when it's finished
- You may be required to maintain the files based on your contract

### Email

If you exclusively use web and mobile apps for email (as in you don't use a dedicated desktop email client), be sure to export and archive your emails if you already haven't. Do this routinely to avoid data loss by having an offline backup. Your mobile app may have an option for this. Most modern webmail providers ([Gmail](https://support.google.com/accounts/answer/3024190), [ProtonMail](https://proton.me/support/export-import-emails), etc) have an easy way to do this.

Two common formats of exported email content are `.mbox` and `.eml`.

`.mbox` is usually for an entire inbox or a set of emails.

`.eml` is an individual email file.

These can be read locally (offline) by mail clients and imported to most other providers should you ever need to do so.

## Billing

A set of points to be aware of with billing, and terminology you may encounter. This is not an exhaustive or complete list for every scenario.

<https://en.wikipedia.org/wiki/Invoice>

- PO #
	* Purchase Order Number
	* Unique identifier for all parties to track the work / job / project
- Reference #
	* Unique identifier for all parties to track the invoice itself
- Date
	* Date the invoice was sent or generated
- EIN
	* Employer ID Number
	* If you're freelancing you'll need your client's company EIN
	* You may also need to provide your EIN to the client
- Hours 
	* Dates
	* Hours worked
	* Timezone
- Scope
	* What was done?
	* How much of the thing that was done was there?
	* Did you sell usage rights?
- Cost
	* Cost breakdown
	* Hours
	* Days
	* 'Things' (characters designed, 3D assets created)
	* Usage
		- How will the work be used?
		- For how long can the work be used?
		- In what formats can the work be used or published?
		- In what territories can the work be used or published?
	* Additional Cost
		- Tax (EU VAT Tax)
		- Travel
		- Meals
		- Hotel
- Points of Contact
	* Contact information of everyone involved
	* Name
	* Email
	* Phone
	* Company
	* Job title
- Payment Terms
	* W2? or 1099?
		- W2 means the company pays you as an employee
		- 1099 means the company pays you directly as a self-employed contractor
		- Both can happen as a freelancer
		- You need to know this for tax purposes
	* Payment method
	* Currency
	* Time to pay
	* Late fees
	* Credits applied if paid in advance

### Create an Invoice Template

Have an invoice template with your company logo, details, and each field ready to fill out so you can reuse it for each job.

If working internally, have some repeatable mechanism for tracking and plugging your hours into the internal billing system (if it doesn't already have one for you).

TO DO: example invoice template

### In Practice

Use a spreadsheet, or some method to work with data programmatically.

- Write a function to total your invoice for a job
- Write a function to sum all of your invoice totals for a billing period (e.g. quarterly)
- Write a function to calculate your estimated taxes based on your monthly / quarterly / annual totals
- Write a function to track billing status
	* job in production
	* job wrapped / invoice sent
	* paid

These formulas are standard enough to work in most spreadsheets:

Sum two values:
```
=SUM(3,100.1)
```

Sum an entire column (`G`) at 20%:
```
=SUM(G:G)*0.2
```

Get an average of the values across cells B6 and G6:
```
=AVERAGE(B6:G6)
```

Calculate 90% of the sum, of every value in column E, for each row where column A contains the string 'PAID':
```
=SUMIF(A:A, "*PAID", E:E)*0.9
```

#### Protect your billing data

Encrypt and protect any billing or financial data.

- [Microsoft365](https://support.microsoft.com/en-us/office/protection-and-security-in-excel-be0b34db-8cb6-44dd-a673-0b3e3475ac2d)
- [Google Docs](https://support.google.com/docs/answer/10519333?hl=en)
- [StandardNotes](https://standardnotes.com/features)
- [LibreOffice](https://help.libreoffice.org/6.3/en-US/text/shared/guide/protection.html?DbPAR=SHARED#bm_id3150620)

