# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jpedraza < jpedraza@student.42malaga.co    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/05/12 18:16:00 by jpedraza          #+#    #+#              #
#    Updated: 2026/05/19 16:19:00 by jpedraza         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
SRC = ft_printf.c \
		ft_putchar.c \
		ft_puthex.c \
		ft_putnbr.c \
		ft_putptr.c \
		ft_putstr.c \
		ft_putunbr.c \
		ft_putptrhex.c

OBJ = $(SRC:.c=.o)

INCLUDES = -I includes

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
