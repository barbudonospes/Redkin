using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MongoDB.Bson;

namespace Kinoafisha
{
    public class Kino
    {
        public Kino()
        {
            var r = new Random();
            var id = r.Next(int.MinValue, int.MaxValue);
            MyID = id;
        }
        public ObjectId Id { get; set; }
        public int MyID { get; set; }
        public string jpg  { get; set; }
        public string Title { get; set; }
        public string about { get; set; }
    }
}