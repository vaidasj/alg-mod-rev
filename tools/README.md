# Benchmark Tools

## Model Library Generation

The optimization problems model library is built using sample models available in the [GAMS Model Library](https://www.gams.com/latest/gamslib_ml/libhtml/index.html). 
Library will be built by using [GAMS CONVERT](https://www.gams.com/latest/docs/S_CONVERT.html) utility to convert GAMS native models to scalar models for **AMPL**, **GAMS** and **Pyomo** algebraic modeling languages. 

### Current Status

Library consists of **298** models out of total 423 models available in the [GAMS Model Library](https://www.gams.com/latest/gamslib_ml/libhtml/index.html). 

Some part of the models in GAMS Model Library could not be converted to scalar formats due to:

- proprietary GAMS modeling techniques are used in the models (_MPSGE, BCH Facility_) [**66** models]
- GAMS Convert execution errors [**27** models]
- general purpose languages concepts used in the models (e.g. loops) [**20 models**]
- GAMS compiler errors [**8** models]
- tight coupling to the solvers (_CPLEX, DECIS_) [**4** models]

> We believe it is important to note that GAMS System was not able to compile or execute 35 models provided in GAMS Model library. 

#### Issues Found

1. GAMS Convert function generates invalid [Suffix](https://pyomo.readthedocs.io/en/latest/library_reference/kernel/suffix.html) definition for Pyomo models. It uses the same as for AMPL models:
```
suffix ref integer IN;
```
instead it should be:
```
ref = Suffix(direction=Suffix.EXPORT, datatype=Suffix.INT)
```

### Library Structure

Full list of available sample models will be created as README.md file in the target model library directory. 

The list includes links for specific AML models:

- `mod`, AMPL scalar model;
- `gms`, GAMS scalar model;
- `py`, Pyomo scalar model.

and main characteristics of a model:

- number of equations;
- number of variables;
- number of discrete variables;
- number of nonzero elements;
- number of nonlinear nonzero elements.

Each model is placed under separate directory `LIBRARY_DIRECTORY/MODEL_NAME`. Apart from three scalar models there also exists:

- `[MODEL_NAME].gms`, original GAMS model;
- `[MODEL_NAME]-stats.log`, statistics gathered during model conversion;
- `[MODEL_NAME]-scalar.[AML_NAME].lst`, verbose GAMS CONVERT output;
- `[AML_NAME]-convert.log`, standard GAMS CONVERT output.

> `AML_NAME`: ampl, gams, pyomo.

### Building Library

A script to build all library or convert a specific model is provided - `gamslib-convert.sh`.

**Prerequisites**:

GAMS Modeling System should be installed with `gams` and `gamslib` executables available to system's `PATH`.

#### Running the script

**Build all library**

1. Create an input CSV file (`;` used as a column separator) describing models to be converted:
```
MODEL_ID;MODEL_NAME;MODEL_DESCRIPTION;MODEL_TYPE;MODEL_AUTHOR
```
See [gamslib.csv](gamslib.csv) for an example.

2. Run `gamslib-convert.sh`:
```sh
sh gamslib-convert.sh CSV_FILE
```
> `CSV_FILE` - a file created in step 1, e.g. gamslib.csv

3. Created models will be placed under `gamslib` directory. Errors will be documented in `error.log` inside the `gamslib` directory.

**Build single model**

1. Run `gamslib-convert.sh`:
```sh
sh gamslib-convert.sh MODEL_NAME MODEL_TYPE
```
> where `MODEL_NAME` is the GAMS model name and `MODEL_TYPE` the solver indicator for a particular model type (e.g. LP, MIP, RMIP, QCP, MIQCP, RMIQCP, NLP, DNLP, CNS, MINLP, or MCP). 

2. Created model will be placed under `gamslib` directory.

## Model Library Benchmark

### Running the Benchmark

- Load single model, where `aml`: _ampl, gams, pyomo_

```
load-benchmark.sh [aml] [modelname]  
```
- Load all models in the `gamslib` directory:

```
load-benchmark.sh [directory path]
```

### Model Loading Principles

1. Load model instance of a problem written in the native algebraic modeling language (_AMPL, GAMS, Pyomo_) of the modeling system.
2. Export loaded model instance to the solver compatible input format. [NL](https://en.wikipedia.org/wiki/Nl_(format)) or NLC formats are used.
3. Measure total (loading and exporting) execution time.

#### AMPL

AMPL write NL model command is used:

```
model MODEL.mod;
write gMODEL;
```

#### GAMS

GAMS Convert to AmplNLC command is used:

- `convert.opt` file:

```
AmplNLC gams.nlc
```
- model command: 

```
option MODEL_TYPE=convert;
```

#### Pyomo

Pyomo convert to NL command is used:

```
pyomo convert --format=nl --output=pyomo.nl MODEL.py
```