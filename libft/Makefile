# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gusouza- <gusouza-@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/04 20:22:39 by gusouza-          #+#    #+#              #
#    Updated: 2022/07/25 15:04:52 by gusouza-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRC = ft_strlen.c ft_putchar_fd.c ft_putstr_fd.c
OBJ = $(SRC:.c=.o)
FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	@echo making library....
	@ar rcs $(NAME) $(OBJ)
	@echo "Libft created successfully"

$(OBJ): $(SRC)
	@gcc $(FLAGS) -c $(SRC)

clean:
	@/bin/rm -f $(OBJ)

fclean: clean
	@echo clearing....
	@/bin/rm -f $(NAME)
	@echo done!

%.o: %.c
	@$(CC) -c $< -o $@ $(FLAGS)

re: fclean all

.PHONY: all clean fclean re