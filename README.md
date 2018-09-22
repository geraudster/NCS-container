# Movidius NCSDK container image

## Build image

```
make build
```

## Run bash

```
make run
```

## Run Toolkit

For Tensorflow networks

### mvNCCCompile

```
docker run -t geraudster/ncs-container mvNCCompile network.meta [-s max_number_of_shaves] [-in input_node_name] [-on output_node_name] [-is input_width input_height] [-o output_graph_filename] [-ec]
```
