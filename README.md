# FT_PRINTF

<!-- ABOUT THE PROJECT -->
## About The Project

The goal of this project is to reimplement the functionality of the ```printf```
function found in the C standard library, specifically for the purpose of
gaining experience and understanding on how to work with variable
numbers of arguments ```(variadic functions)``` and how to parse and format
strings.

This lib will be reusable for future projects.

### Mandatory part

The prototype of ```ft_printf``` should be ```int ft_printf(const char *, ...);```

It must manage the following conversions: ```%c```  ```%s``` ```%p``` ```%d``` ```%i``` ```%u``` ```%x``` ```%X``` ```%%```

### Built With

* C

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

### Prerequisites

The gcc compiler and make must be installed. To install them, run the following commands:
* deb-based systems:
	```sh
	sudo apt install build-essential make -y
	```
* or arch-based systems:
	```sh
	sudo pacman -S base-devel make
	```

### Installation

*. Clone the repo
	```sh
	git clone https://github.com/Eguelin/ft_printf.git
	```

### Compilation

1. Compile the library
	```sh
	make
	```

2. Use the library in your project
	```c
	#include "ft_printf.h"
	```

3. Compile your project with the library
	```sh
	gcc -o my_project my_project.c libftprintf.a
	```

4. Run your project
	```sh
	./my_project
	```

<!-- USAGE EXAMPLES -->
## Usage

```c
#include "ft_printf.h"

int main()
{
	ft_printf("Hello, %s!\n", "world");
	return (0);
}
```

```sh
$> ./my_project
$> Hello, world!
```




