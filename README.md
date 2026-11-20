# Finite State Machine Lab

## Name
Ethan Kraus

## Summary
In this lab, we learned about finite state machines, and implemented a 5 state machine. These machines operate a series of instructions in a set order, using both their current state and the inputs to drive the logic for the next state to operate. Our machine used a singular input (w) and produced a singular output (z), but it had a total of 5 possible states. 

## Lab Questions

### Compare and contrast One Hot and Binary encodings
One Hot encoding makes the logic incredibly simple. You only need to look at one d flip flop to check if there is a current state, and this makes the code much more readable and straightforward. However, it comes with the downside of needing a d flip flop for every state, which is rather inefficient. On the other hand, binary encoding only needs log2(N) d flip flops (where N is the number of states), but it naturally makes the logic much more complicated as you have to write logic per bit rather than per state, and evaluating states is more complicated. 

### Which method did your team find easier, and why?
Writing one hot was much, much easier than writing binary encoding. The logic was incredibly straightforward, compared to having to write several 4 bit K-maps. Given that I could reference each state individually, writing the logic for each next-state value was as simple as looking at what states would lead into the target state.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
While it is easier to implement one hot encoding, it is overall less performant and requires more d flip flops. For simpler state machines, or scenarios where resource usage is not a major concern, one hot would be a good choice as the downside would be more negligible. However, for more complicated finite state machines, or for cases where resource usage is highly limited, it would be better to use binary encoding. 



