MULTI*
MULTI-TASKING-Running multiple programs at a time using context switching, giving the illusion of concurrency.
MULTI-PROGRAMMING- Loading multiple programs into memory and running them one at a time while the other programs wait their turn.
MULTI-PROCESSING-Taking advantage of having multiple CPU's or multiple cores on a single CPU. Allows for true concurrent CPU calculations because processes can be run simultaniously on different cores.
MULTI-THREADED-A process that has multiple code sub-segments called "threads" that run concurrently.

What is an instruction trace?
	 A listing of individual instructions that run in a process to help characterize the process.
What common events lead to the creation of a process?
	The four most common events for a process being created are:
	1:A New batch job (In batch systems.)
	2:Interactive Log-in (In interactive enviroments)
	3:The operating creates a process to provide a service to the user (i.e. printing)
	4:A sub-process spawns off an existing process.
What does it mean to preempt a process?
	preempting a process means to remove it from the running state in the CPU to replace it with a process that was blocked, but became ready, and had a higher priority than the existing process.
What is swapping and what is its purpose?
	Swapping is the process of moving part, or all of a proccess from main memory to disk.
	Swapping is necessary to accomodate the implementation of virtual memory and the "suspend" states for processes. This allows us to free up main memory to allow more proccesses in.
Why does Figure 3.9b have two blocked states?
	Because a ready process may need to go to blocked and if there is no room, one or more blocked process will have to be "swapped" thus the Blocked/suspend state gives these processes a place to go in virtual memory.
List four characteristics of a suspended process.
	The process is not immediately available for execution.
	The process may or may not be waiting on an event.
	The process was placed in suspended to prevent it's execution
	The process may not be removed from the suspend state until the agent that put it there explicitly calls for its removal.
List three general categories of information in a process control block.
	Process Identification
	Processor State Information
	Process Control Information
Why are two modes (user and kernel) needed?
	To protect the OS and key OS tables. The kernal mode has complete control of the processor and all its instructions, 
	registers, and memory. This level of control is not necessary or safe for user programs. 
What is the difference between an interrupt and a trap?
	An interupt is external of the execution of a instruction.
	where as, a trap is associated with The execution of an instruction and is usually part of handling an exception condition.
Give three examples of an interrupt.
	 Clock interrupt: The OS removes a interupts a process that has been running for too long.
	 I/O interrupt: A process can be interupted if it's next instruction requires I/O to free the CPU for a process that does not need I/O.
	 Memory Fault: The processor encounters a virtual memory adress refrence for a word that is not in main memory. The OS must interupt the process to bring the block of referenced memory back to main memory.
What is the difference between a mode switch and a process switch?
	Mode switching is used to handle interupts. The proccessor switches from user mode to Kernal mode so that privileged instructions may be included in the code.
	MOde switching can be independent of the process state meaning that it will not change the currently running processes state.
	A process switch requires more effort than a mode switch because it means that all of the proccesses PCB information must be updated and saved for every switch.