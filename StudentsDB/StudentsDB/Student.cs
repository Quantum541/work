using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using MongoDB.Bson;

namespace StudentsDB
{
    public class Student
    {
        public Student()
        {
            var r = new Random();
            var id = r.Next(int.MinValue, int.MaxValue);
            MyID = id;
        }
        public ObjectId Id { get; set; }
        public int MyID { get; set; }
        public string Namediscipline { get; set; }
        public string Hours { get; set; }
        public string Professor { get; set; }
        public string Assessment { get; set; }
        public string Date { get; set; }
    }
}