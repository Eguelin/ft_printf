# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eguelin <eguelin@student.42lyon.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/19 12:06:08 by eguelin           #+#    #+#              #
#    Updated: 2024/04/07 17:21:13 by eguelin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: all clean fclean re
# .SILENT:

# **************************************************************************** #
#                                   Variable                                   #
# **************************************************************************** #

NAME	= libftprintf.a
OBJ_DIR	= build/
SRC_DIR	= src/
INC_DIR	= include/
CC		= gcc
CFLAGS	= -Wall -Werror -Wextra
INC		= -I $(INC_DIR)
RM		= rm -rf
ARC		= ar rcs

# **************************************************************************** #
#                                    Colors                                    #
# **************************************************************************** #

BLACK	= \033[30m
RED		= \033[31m
GREEN	= \033[32m
YELLOW	= \033[33m
BLUE	= \033[34m
PURPLE	= \033[35m
CYAN	= \033[36m
WHITE	= \033[37m
DEFAULT	= \033[0m

# **************************************************************************** #
#                                    Message                                   #
# **************************************************************************** #

COMP_MSG		= "$(GREEN)Compilation $(NAME) $(DEFAULT)done on $(YELLOW)$(shell date +'%Y-%m-%d %H:%M:%S')$(DEFAULT)"
CLEAN_MSG		= "$(RED)Cleaning $(NAME) $(DEFAULT)done on $(YELLOW)$(shell date +'%Y-%m-%d %H:%M:%S')$(DEFAULT)"
FULL_CLEAN_MSG	= "$(PURPLE)Full cleaning $(NAME) $(DEFAULT)done on $(YELLOW)$(shell date +'%Y-%m-%d %H:%M:%S')$(DEFAULT)"

# **************************************************************************** #
#                                    Sources                                   #
# **************************************************************************** #
FILES		= ft_print_address.c \
			  ft_print_all.c \
			  ft_print_char.c \
			  ft_print_nbr.c \
			  ft_print_base.c \
			  ft_print_str.c \
			  ft_printf.c

INC_FILES	= ft_printf.h

OBJ			= $(addprefix $(OBJ_DIR), $(FILES:.c=.o))
HEADERS		= $(addprefix $(INC_DIR), $(INC_FILES))

ALL_OBJ_DIR	= $(sort $(dir $(OBJ)))

# **************************************************************************** #
#                                     Rules                                    #
# **************************************************************************** #

all: $(NAME)

$(NAME): $(OBJ)
	@norminette | awk '$$NF!="OK!" {print "$(RED)" $$0 "$(DEFAULT)"}'
	$(ARC) $(NAME) $(OBJ)
	@echo $(COMP_MSG)

$(OBJ_DIR)%.o : $(SRC_DIR)%.c $(HEADERS) | $(ALL_OBJ_DIR)
	$(CC) $(CFLAGS) $(INC) -c $< -o $@

clean:
	$(RM) $(OBJ_DIR)
	@echo $(CLEAN_MSG)

fclean: clean
	$(RM) $(NAME)
	@echo $(FULL_CLEAN_MSG)

re: fclean all

$(ALL_OBJ_DIR):
	mkdir -p $@
