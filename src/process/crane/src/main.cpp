#include <Logger/Logger.h>
#include <unistd.h>
#include <utils/utils.h>
#include <iostream>
#include <tclap/CmdLine.h>
#include "domain/Crane.h"
#include <ArgumentHandler/ArgHandler.h>
#include <Signals/SignalHandler.h>
#include <Signals/SIGINT_Handler.h>

using namespace std;

int main(int argc, char** argv) {

	SIGINT_Handler sigint_handler;
	SignalHandler::getInstance()->registrarHandler(SIGINT, &sigint_handler);

	TCLAP::CmdLine cmd("Command description message", ' ', "0.9");
	TCLAP::ValueArg<int> shmId("m", "mem", "smId to get shared memory", true, 6, "int");
	cmd.add(shmId);
	TCLAP::ValueArg<int> craneNumberArg("i", "number", "number of crane", true, 7, "int");
	cmd.add(craneNumberArg);
	TCLAP::ValueArg<int> log("l", "log", "log level", true, 8, "int");
	cmd.add(log);
	cmd.parse(argc, argv);

	Crane crane(shmId.getValue(), craneNumberArg.getValue());

	while (sigint_handler.getGracefulQuit() == 0) {
		crane.readUnloadRequest();
		crane.setAsAvailable();
	}

	cout << "Crane dejo de loopear señal SIGINT" << endl;

	return 1;

}
