# Dummy Julia Project

This is a dummy Julia project to demonstrate a simple setup with modules for forces and finite element methods (FEM). Here I aim to show how things can be structured and defined.

## Installation

1. **Install Julia**:
   - Download and install Julia from the official website: [https://julialang.org/downloads/](https://julialang.org/downloads/)

2. **Clone the Repository**:
   ```sh
   git clone https://github.com/yourusername/dummy_project.git
   cd dummy_project
   ```

3. **Activate the Project**:
   ```sh
   julia --project=.
   ```

4. **Install Dependencies**:
   ```julia
   using Pkg
   Pkg.instantiate()
   ```

## Running the Project

To run the main script:
```sh
julia src/main.jl
```

## Running Tests

To run the tests:
```sh
julia --project=. tests/runtests.jl
```
