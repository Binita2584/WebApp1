
    
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace WebApp1.Models
{



    class ProductUI
    {



        internal static void DisplayMenu()
        {


            Console.WriteLine("*************************Product Management****************************");
            Console.WriteLine("1. Show all products");
            Console.WriteLine("2.Product Details");



            Console.WriteLine("3. Add Product");
            Console.WriteLine("4.Update Product");
            Console.WriteLine("5.Quit");
            Console.WriteLine("Enter Your Choice:");
            int choice = Convert.ToInt32(Console.ReadLine());
            ProductProcess Process = null;



            switch (choice)
            {
                case 1:
                    ProductProcess process = new ProductProcess();
                    Console.WriteLine("Retrieving all products");
                    try
                    {
                        string criteria = "";
                        var list = process.GetProducts(criteria);
                        foreach (var item in list)
                        {
                            Console.WriteLine("{0},{1},{2},{3},{4}",
                            item.ProductId, item.ProductName, item.UnitPrice, item.UnitInStock, item.Discontinued);
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                    }
                    break;
                case 2:
                    process = new ProductProcess();
                    Console.WriteLine("Retriving all products by ID");
                    try
                    {
                        Console.WriteLine("Enter a product ID");
                        int Id = int.Parse(Console.ReadLine());
                        process.GetProduct(Id);



                        Console.WriteLine();



                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                    }
                    break;
                case 3:


                    Product obj = new Product();



                    Console.WriteLine("product name:");
                    obj.ProductName = Console.ReadLine();
                    Console.WriteLine("Unit Price:");
                    obj.UnitPrice = Convert.ToDecimal(Console.ReadLine());
                    Console.WriteLine("UnitsInStock");
                    obj.UnitInStock = Convert.ToInt16(Console.ReadLine());
                    Console.WriteLine("Discontinued [True|False]");
                    obj.Discontinued = Convert.ToBoolean(Console.ReadLine());
                    Console.WriteLine("categoryID[between 1 and 8] :");
                    obj.CategoryId = Convert.ToInt32(Console.ReadLine());
                    try
                    {
                        process = new ProductProcess();
                       // process.CreateProduct(obj);
                        Console.WriteLine("\n product sucessfully added");



                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                    }



                    break;



            }




        }


        internal static void Test()
        {
            throw new NotImplementedException();
        }
    }
}

















