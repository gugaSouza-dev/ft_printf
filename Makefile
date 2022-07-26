# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gusouza- <gusouza-@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/27 21:19:14 by gusouza-          #+#    #+#              #
#    Updated: 2022/07/26 11:26:01 by gusouza-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libftprintf.a
LIBFT	= ./libft/
SRC		= ft_printf.c  ft_printf_pointers.c ft_printf_numerals.c \
		ft_printf_hexadecimals.c
OBJ		= $(SRC:.c=.o)
FLAGS	= -Wall -Wextra -Werror

all:	$(NAME)

$(NAME): $(OBJ)
	@echo creating libftprintf library....
	@$(MAKE) -C $(LIBFT)
	@mv $(LIBFT)/libft.a $@
	@ar rcs $(NAME) $(OBJ)
	@echo "$(NAME) created successfully!!!"
	@$(MAKE) clean

$(OBJ): $(SRC)
	@echo creating printf objects....
	@gcc $(FLAGS) -c $(SRC)
	@echo done!

clean:
	@rm -f $(OBJ)

fclean: clean
	@echo deleting libftprintf library....
	@rm -f $(NAME)
	@echo done!

re: fclean all

.PHONY: all clean fclean libclean re