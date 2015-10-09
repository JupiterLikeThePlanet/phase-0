![European Languages](../imgs/european_languages.png)

# One-to-One relationship
From how it's explained, it seems you take one detail from a table and link it to another table that expounds upon the details of that one piece of data. In my example, the linked details probably won't be as unique as it should be, but I imagine the ideal way you'd want it is that the expounded information (in foreign key) is much more singular to the linked column (the primary key).

![Language and Region](../imgs/language_and_region.png)

# Many-to-Many relationship
I KNOW! I KNOW!  It should be a grocery list, but this graph is the same in spirit. I used this because I knew how to break this down into tables of 4 categories and join them.
In my example, I'm aiming to show languages can be broken down by families and root languages which can span across countries and regions.  It should tacitly express spread and influence.  A region can have many languages and many languages can exist within a region.  Essentially, this type of relationship should express how two variables can be comprised of many components that intertwine (and sometimes not).


##Reflection
#What is a one-to-one database?
A relationship between a category in one table that relates to data in another column on another table on a singular relationship basis.  Easiar said, they share a single relationship.

#When would you use a one-to-one database? (Think generally, not in terms of the example you created).
I'd use a one on one database to expound upon details of a category that may be too large and needed to be divided up, sort of like in the example video where the loan's superfluous details were given their own table.

#What is a many-to-many database?
A set of data that is related to other sets of data, but joined by particular pieces of data


#When would you use a many-to-many database? (Think generally, not in terms of the example you created).
To join information that has many intertwining relationships. In my example, a single language is joined by a region id, and they work well together because geography and language have huge influences on each other.

#What is confusing about database schemas? What makes sense?
It's difficult to come up with examples, though seeing one does make sense.  What's particularly harder is that while we're learning this, it's difficult to come up with something and give it 4 categories especially if we're assigned something that we just can't easily see as a set to be broken down to that many things and expect us to relate them, let alone come up with categories that do relate.  (I'm looking at you release 6, lesson 8.4)