//query.js
conn = new Mongo();
db = conn.getDB("siad");
recordset = db.User.find({"liked":{$elemMatch:{"star":3}}}, {"_id":0, "liked.film":1})
while ( recordset.hasNext() ) {
   printjson( recordset.next() );
}
