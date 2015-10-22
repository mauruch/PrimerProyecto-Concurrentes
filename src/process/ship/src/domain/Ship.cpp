#include "Ship.h"
#include <utils/utils.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <../utils/SharedData.h>
#include <iostream>
using namespace std;

Ship::Ship(const unsigned int load, int semId, int shmId) :
		shipload(load), ownSem(semId), shm(shmId), controllerQueueFifo(utils::CONTROLLER_QUEUE_FIFO),
		controllerFifo(utils::CONTROLLER_FIFO), craneFifo(utils::CRANE_FIFO),
		shipFifo(utils::SHIP_FIFO) {
	log.info("On constructor of new ship");
}

Ship::~Ship() {
	log.debug("Deleting Ship");
	controllerQueueFifo.deleteFifo();
}

void Ship::enterPort() {
	this->sendEntryRequest();
	log.info("Waiting for the controllerQueue to let me enter port");
	this->waitOnSemaphore();
	log.info("Ship entering the port...");
}

void Ship::dock() {
	log.info("Docking...");
}

void Ship::unload() {
	log.info("Ship asking for a crane...");
	this->askForCrane();
	this->waitOnSemaphore();
	log.info("Ship taking an available crane");
	this->sendUnloadRequest();
}


int Ship::searchDock() {
	log.info("The ship took place in the port");

}

void Ship::sendEntryRequest() {
	log.info("Sending entry request to port");
	utils::entryPortRequest request(this->ownSem.getId());
	controllerQueueFifo.write(static_cast<void*>(&request),
			sizeof(utils::entryPortRequest));
}

void Ship::askForCrane() {
	log.info("Sending crane request to Controller");
	utils::askForCraneRequest request(this->ownSem.getId());
	controllerFifo.write(static_cast<void*>(&request),
			sizeof(utils::askForCraneRequest));
}

/**
 * Send an UnloadRequest for an available crane.
 * After sending the request the shipload is initialized
 */
void Ship::sendUnloadRequest() {
	log.info("Sending unload request to crane");
	utils::unloadRequest request(utils::SHIP, this->shipload);
	craneFifo.write(static_cast<void*>(&request), sizeof(utils::unloadRequest));
	this->shipload = 0;
	log.info("All cargo unload");
}

/**
 * Set current ship as available.
 * After this set the ship is available for attending
 * ShipRequests.
 */
void Ship::setAsAvailable() {
	utils::readOnlysharedData data = shm.read();
	Semaphore shipsSemaphore(data.idSemAvailableShips);
	shipsSemaphore.signal();
	log.info("Setting as an available ship");
}

/**
 * Block while reading shipFifo. Cranes and trucks must write on this fifo
 * in order to unblock ship process, and let him go out of the port
 */
void Ship::readLeavingRequest() {
	log.info("Reading leaving request..");
	utils::shipRequest shipRequest;
	shipFifo.readFifo(&shipRequest, sizeof(utils::shipRequest));
	this->shipload = shipRequest.shipload;
	log.info("Leaving port with " + Helper::convertToString(this->shipload) + " of shipload");
}

void Ship::waitOnSemaphore() {
	this->ownSem.wait();
}
