package main.java.extend;



public class Driver {
	protected Vehicle vehicle;
	
	public Driver(Vehicle vehicle) {
		this.vehicle = vehicle;
	}
	public Driver() {
		
	}
	public void drive() {
		vehicle.run();
	}
	public void setVehicle(Vehicle vehicle) {
        this.vehicle = vehicle;
    }
}
