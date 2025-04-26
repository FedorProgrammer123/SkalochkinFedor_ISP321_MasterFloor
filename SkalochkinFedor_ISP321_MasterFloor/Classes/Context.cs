using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using SkalochkinFedor_ISP321_MasterFloor.DataBase;
namespace SkalochkinFedor_ISP321_MasterFloor.Classes
{
    public class Context:DbContext
    {
        public static Context _context;
        public DbSet<PartnersImport> partnersImport { get; set; }
        public static Context GetContext()
        {
            if (_context == null)
            {
                _context = new Context();
            }
            return _context;
        }
        public Context() : base("name=SkalochkinFedor_ISP321_MasterFloorEntities")
        {

        }
    }
}
