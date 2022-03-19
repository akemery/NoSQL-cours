# Blocks

- Elements
- Attributes
- Entities
- PCDATA
- CDATA


## Elements

Elements are the main building blocks of both XML and HTML documents.

Examples of HTML elements are "body" and "table". Examples of XML elements could be "note" and "message". Elements can contain text, other elements, or be empty. Examples of empty HTML elements are "hr", "br" and "img".

Examples:

```

<body>some text</body>

<message>some text</message> 
```

## attributes

Attributes

Attributes provide extra information about elements.

Attributes are always placed inside the opening tag of an element. Attributes always come in name/value pairs. The following "img" element has additional information about a source file:

```

<img src="computer.gif" /> 
```

The name of the element is "img". The name of the attribute is "src". The value of the attribute is "computer.gif". Since the element itself is empty it is closed by a " /".


## PCDATA

PCDATA means parsed character data.

Think of character data as the text found between the start tag and the end tag of an XML element.

PCDATA is text that WILL be parsed by a parser. The text will be examined by the parser for entities and markup.

Tags inside the text will be treated as markup and entities will be expanded.

However, parsed character data should not contain any &, <, or > characters; these need to be represented by the &amp; &lt; and &gt; entities, respectively.

## CDATA

CDATA means character data.

CDATA is text that will NOT be parsed by a parser. Tags inside the text will NOT be treated as markup and entities will not be expanded.


## Declaring Elements

In a DTD, XML elements are declared with the following syntax:

```
<!ELEMENT element-name category>
or
<!ELEMENT element-name (element-content)> 
```


### Empty Elements

Empty elements are declared with the category keyword EMPTY:

```
<!ELEMENT element-name EMPTY>
```

Example:

```
<!ELEMENT br EMPTY>
```

XML example:
```
<br /> 
```


### Elements with Parsed Character Data

Elements with only parsed character data are declared with #PCDATA inside parentheses:
```
<!ELEMENT element-name (#PCDATA)>
```
Example:

```
<!ELEMENT from (#PCDATA)> 
```

### Elements with any Contents

Elements declared with the category keyword ANY, can contain any combination of parsable data:

```
<!ELEMENT element-name ANY>
```

Example:

```
<!ELEMENT note ANY> 
```

### Elements with Children (sequences)

Elements with one or more children are declared with the name of the children elements inside parentheses:

```
<!ELEMENT element-name (child1)>
```
or
```
<!ELEMENT element-name (child1,child2,...)>
```
Example:

```
<!ELEMENT note (to,from,heading,body)>
```

When children are declared in a sequence separated by commas, the children must appear in the same sequence in the document. In a full declaration, the children must also be declared, and the children can also have children. The full declaration of the "note" element is:

```
<!ELEMENT note (to,from,heading,body)>
<!ELEMENT to (#PCDATA)>
<!ELEMENT from (#PCDATA)>
<!ELEMENT heading (#PCDATA)>
<!ELEMENT body (#PCDATA)> 
```

### Declaring Only One Occurrence of an Element

```
<!ELEMENT element-name (child-name)>
```

Example:

```
<!ELEMENT note (message)>
```

The example above declares that the child element "message" must occur once, and only once inside the "note" element.

### Declaring Minimum One Occurrence of an Element

```
<!ELEMENT element-name (child-name+)>
```
Example:
```
<!ELEMENT note (message+)>
```
The + sign in the example above declares that the child element "message" must occur one or more times inside the "note" element.

### Declaring Zero or More Occurrences of an Element

```
<!ELEMENT element-name (child-name*)>
```

Example:

```
<!ELEMENT note (message*)>
```

The * sign in the example above declares that the child element "message" can occur zero or more times inside the "note" element.


### Declaring Zero or One Occurrences of an Element 
<!ELEMENT element-name (child-name?)>

Example:

```
<!ELEMENT note (message?)>
```

The ? sign in the example above declares that the child element "message" can occur zero or one time inside the "note" element.

### Declaring either/or Content

```
<!ELEMENT note (to,from,header,(message|body))>
```

The example above declares that the "note" element must contain a "to" element, a "from" element, a "header" element, and either a "message" or a "body" element.


### Declaring Mixed Content

```
<!ELEMENT note (#PCDATA|to|from|header|message)*>
```

The example above declares that the "note" element can contain zero or more occurrences of parsed character data, "to", "from", "header", or "message" elements.


## Declaring Attributes

An attribute declaration has the following syntax:
```
<!ATTLIST element-name attribute-name attribute-type attribute-value>
```

DTD example:

```
<!ATTLIST payment type CDATA "check">
```

XML example:
```
<payment type="check" /> 
```

The attribute-type can be one of the following:
Type 	Description
CDATA 	The value is character data
(en1|en2|..) 	The value must be one from an enumerated list
ID 	The value is a unique id
IDREF 	The value is the id of another element
IDREFS 	The value is a list of other ids
NMTOKEN 	The value is a valid XML name
NMTOKENS 	The value is a list of valid XML names
ENTITY 	The value is an entity
ENTITIES 	The value is a list of entities
NOTATION 	The value is a name of a notation
xml: 	The value is a predefined xml value


The attribute-value can be one of the following:
 Value 	Explanation
value 	The default value of the attribute
  #REQUIRED 	The attribute is required
 #IMPLIED 	The attribute is optional
 #FIXED value 	The attribute value is fixed
 

### A Default Attribute Value
DTD:

```
<!ELEMENT square EMPTY>
<!ATTLIST square width CDATA "0">
```

Valid XML:

```
<square width="100" />
```

In the example above, the "square" element is defined to be an empty element with a "width" attribute of  type CDATA. If no width is specified, it has a default value of 0.

### #REQUIRED

Syntax
```
<!ATTLIST element-name attribute-name attribute-type #REQUIRED>
```

Example
DTD:
```
<!ATTLIST person number CDATA #REQUIRED>
```
Valid XML:
```
<person number="5677" />
```

Invalid XML:
```
<person />
```

Use the #REQUIRED keyword if you don't have an option for a default value, but still want to force the attribute to be present.

### #IMPLIED
Syntax
```
<!ATTLIST element-name attribute-name attribute-type #IMPLIED>
```
Example
DTD:
```
<!ATTLIST contact fax CDATA #IMPLIED>
```

Valid XML:
```
<contact fax="555-667788" />
```

Valid XML:
```
<contact />
```

Use the #IMPLIED keyword if you don't want to force the author to include an attribute, and you don't have an option for a default value.

### #FIXED

Syntax
```
<!ATTLIST element-name attribute-name attribute-type #FIXED "value">
```

Example

DTD:
```
<!ATTLIST sender company CDATA #FIXED "Microsoft">
```

Valid XML:
```
<sender company="Microsoft" />
```

Invalid XML:
```
<sender company="W3Schools" />
```

Use the #FIXED keyword when you want an attribute to have a fixed value without allowing the author to change it. If an author includes another value, the XML parser will return an error.

### Enumerated Attribute Values
Syntax
```
<!ATTLIST element-name attribute-name (en1|en2|..) default-value>
```
Example
DTD:
```
<!ATTLIST payment type (check|cash) "cash">
```

XML example:
```
<payment type="check" />
```
or
```
<payment type="cash" />
```

Use enumerated attribute values when you want the attribute value to be one of a fixed set of legal values.

 

## DTD example

```<!DOCTYPE note
[
<!ELEMENT note (to,from,heading,body)>
<!ELEMENT to (#PCDATA)>
<!ELEMENT from (#PCDATA)>
<!ELEMENT heading (#PCDATA)>
<!ELEMENT body (#PCDATA)>
]>
```

### Description

Le DTD ci-dessus est intépreté de la manière suivante:

- !DOCTYPE note -  Défini que l'élément racine de ce document est note 
- !ELEMENT note - Défini que l'élément note doit contenir les éléments : "to, from, heading, body"
- !ELEMENT to - Défini que l'élément to est de type  "#PCDATA"
- !ELEMENT from - Défini que l'élément from est de type "#PCDATA"
- !ELEMENT heading  - Défini que l'élément heading est de type "#PCDATA"
- !ELEMENT body - Défini que l'élément body est de type "#PCDATA"

Note #PCDATA signifie parseable character data.


### TV Schedule DTD

```
<!DOCTYPE TVSCHEDULE [

<!ELEMENT TVSCHEDULE (CHANNEL+)>
<!ELEMENT CHANNEL (BANNER,DAY+)>
<!ELEMENT BANNER (#PCDATA)>
<!ELEMENT DAY (DATE,(HOLIDAY|PROGRAMSLOT+)+)>
<!ELEMENT HOLIDAY (#PCDATA)>
<!ELEMENT DATE (#PCDATA)>
<!ELEMENT PROGRAMSLOT (TIME,TITLE,DESCRIPTION?)>
<!ELEMENT TIME (#PCDATA)>
<!ELEMENT TITLE (#PCDATA)> 
<!ELEMENT DESCRIPTION (#PCDATA)>

<!ATTLIST TVSCHEDULE NAME CDATA #REQUIRED>
<!ATTLIST CHANNEL CHAN CDATA #REQUIRED>
<!ATTLIST PROGRAMSLOT VTR CDATA #IMPLIED>
<!ATTLIST TITLE RATING CDATA #IMPLIED>
<!ATTLIST TITLE LANGUAGE CDATA #IMPLIED>
]> 
```


### Newspaper Article DTD

```
<!DOCTYPE NEWSPAPER [

<!ELEMENT NEWSPAPER (ARTICLE+)>
<!ELEMENT ARTICLE (HEADLINE,BYLINE,LEAD,BODY,NOTES)>
<!ELEMENT HEADLINE (#PCDATA)>
<!ELEMENT BYLINE (#PCDATA)>
<!ELEMENT LEAD (#PCDATA)>
<!ELEMENT BODY (#PCDATA)>
<!ELEMENT NOTES (#PCDATA)>

<!ATTLIST ARTICLE AUTHOR CDATA #REQUIRED>
<!ATTLIST ARTICLE EDITOR CDATA #IMPLIED>
<!ATTLIST ARTICLE DATE CDATA #IMPLIED>
<!ATTLIST ARTICLE EDITION CDATA #IMPLIED>

<!ENTITY NEWSPAPER "Vervet Logic Times">
<!ENTITY PUBLISHER "Vervet Logic Press">
<!ENTITY COPYRIGHT "Copyright 1998 Vervet Logic Press">

]> 

```


### Product Catalog DTD

```
<!DOCTYPE CATALOG [

<!ENTITY AUTHOR "John Doe">
<!ENTITY COMPANY "JD Power Tools, Inc.">
<!ENTITY EMAIL "jd@jd-tools.com">

<!ELEMENT CATALOG (PRODUCT+)>

<!ELEMENT PRODUCT
(SPECIFICATIONS+,OPTIONS?,PRICE+,NOTES?)>
<!ATTLIST PRODUCT
NAME CDATA #IMPLIED
CATEGORY (HandTool|Table|Shop-Professional) "HandTool"
PARTNUM CDATA #IMPLIED
PLANT (Pittsburgh|Milwaukee|Chicago) "Chicago"
INVENTORY (InStock|Backordered|Discontinued) "InStock">

<!ELEMENT SPECIFICATIONS (#PCDATA)>
<!ATTLIST SPECIFICATIONS
WEIGHT CDATA #IMPLIED
POWER CDATA #IMPLIED>

<!ELEMENT OPTIONS (#PCDATA)>
<!ATTLIST OPTIONS
FINISH (Metal|Polished|Matte) "Matte"
ADAPTER (Included|Optional|NotApplicable) "Included"
CASE (HardShell|Soft|NotApplicable) "HardShell">

<!ELEMENT PRICE (#PCDATA)>
<!ATTLIST PRICE
MSRP CDATA #IMPLIED
WHOLESALE CDATA #IMPLIED
STREET CDATA #IMPLIED
SHIPPING CDATA #IMPLIED>

<!ELEMENT NOTES (#PCDATA)>

]>
```
