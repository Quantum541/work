using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using MongoDB.Bson;
using MongoDB.Driver;
using MongoDB.Driver.Builders;

namespace StudentsDB
{
    public class DataAccess
    {
        private MongoCollection<Student> GetCollection()
        {
            string connectionString =
                "mongodb://user:123@ds053188.mongolab.com:53188/bd";
            var client= new MongoClient(connectionString);
            var server = client.GetServer();
            var db = server.GetDatabase("bd");
            var collection = db.GetCollection<Student>("bd");
            return collection;
        }
                                                                 
     public void Insert(Student student)                       
     {                                                         
         var collection = GetCollection();                     
         collection.Insert(student);                           
     }

        public List<Student> GetStudents()
        {
            var collection = GetCollection();
            return collection.FindAllAs<Student>().ToList();
        } 

        public void Remove(int myId)
        {
            var collection = GetCollection();
            var query = Query<Student>.EQ(e => e.MyID, myId);
            collection.Remove(query);
            
        }

        public void update(string nazvanie, string ocenka)
        {
            var collection = GetCollection();

            var query = Query<Student>.EQ(e => e.Namediscipline, nazvanie);

            var update = Update.Set("Assessment", ocenka);
            collection.Update(query, update);
        }
    }
}