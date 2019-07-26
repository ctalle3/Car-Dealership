using CarDealership.Models.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarDealership.Models.Repositories
{
    public class GuildCarRepositoryMock : IGuildCarRepository
    {
        public Car CreateCar(Car car)
        {
            throw new NotImplementedException();
        }

        public CarPurchase CreateCarPurchase(CarPurchase carPurchase)
        {
            throw new NotImplementedException();
        }

        public void DeleteCar(Car car)
        {
            throw new NotImplementedException();
        }

        public void DeleteCarPurchase(CarPurchase carPurchase)
        {
            throw new NotImplementedException();
        }

        public Car GetCar(int carId)
        {
            throw new NotImplementedException();
        }

        public List<Car> GetCarList()
        {
            throw new NotImplementedException();
        }

        public CarPurchase GetCarPurchase(int carPurchaseId)
        {
            throw new NotImplementedException();
        }

        public List<CarPurchase> GetCarPurchases()
        {
            throw new NotImplementedException();
        }

        public void UpdateCar(Car car)
        {
            throw new NotImplementedException();
        }

        public void UpdateCarPurchase(CarPurchase carPurchase)
        {
            throw new NotImplementedException();
        }
    }
}