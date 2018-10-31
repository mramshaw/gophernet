# Building a Neural Net From Scratch with Go

This is a simple neural network built in Go.  It is further discussed [here](http://www.datadan.io/building-a-neural-net-from-scratch-in-go/) and in [Machine Learning with Go](https://www.packtpub.com/big-data-and-business-intelligence/machine-learning-go).

## Results

According to the original article, this should give results in the 97% range.

```bash
$ ./gophernet

Accuracy = 0.97

$
```

However, my results were nowhere close to this:

```bash
$ ./gophernet 

Accuracy = 0.77

$
```

[My first result was 87% - so the results vary greatly.]

## To Do

- [ ] Twelve-factor everything
- [ ] Allow for a seed value so that results are reproducible and not overly dependent on initial conditions
- [ ] Add code to segment data into training and test datasets rather than rely on pre-segmented data
- [ ] Investigate pickling in Go
