# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gusouza- <gusouza-@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/27 21:19:14 by gusouza-          #+#    #+#              #
#    Updated: 2022/07/25 05:36:05 by gusouza-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libftprintf.a
LIBFT	= ./libft/
SRC		= ft_printf.c  ft_printf_pointers.c ft_printf_numerals.c \
		ft_printf_hexadecimals.c
OBJ		= $(SRC:.c=.o)
FLAGS	= -Wall -Wextra -Werror

all:		$(NAME)

$(NAME):	$(OBJ)
	@echo making library....
	@$(MAKE) -C $(LIBFT)
	@mv $(LIBFT)/libft.a $@
	@ar rcs $(NAME) $(OBJ)
	@echo "$(NAME) created"

$(OBJ):		$(SRC)
	@echo making objects....
	@gcc $(FLAGS) -c $(SRC)
	@echo done!

clean:
	@rm -f $(OBJ)

fclean: clean
	@echo clearing....
	@rm -f $(NAME)
	@echo done!

libclean:
	@echo clearing libft....
	@$(MAKE) fclean -C $(LIBFT)
	@echo done!

re: fclean all

.PHONY: all clean fclean libclean re