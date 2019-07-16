using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarDealership.Models.Interfaces
{
    public interface IGuildCarRepository
    {
        // car CRRUD
        Car CreateCar(Car car);
        List<Car> GetCarList();
        Car GetCar(int carId);
        void UpdateCar(Car car);
        void DeleteCar(Car car);
        // car purchase CRRUD
        CarPurchase CreateCarPurchase(CarPurchase carPurchase);
        List<CarPurchase> GetCarPurchases();
        CarPurchase GetCarPurchase(int carPurchaseId);
        void UpdateCarPurchase(CarPurchase carPurchase);
        void DeleteCarPurchase(CarPurchase carPurchase);
    }
}
