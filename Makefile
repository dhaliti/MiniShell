# # **************************************************************************** #
# #                                                                              #
# #                                                         :::      ::::::::    #
# #    Makefile                                           :+:      :+:    :+:    #
# #                                                     +:+ +:+         +:+      #
# #    By: eardingh <eardingh@student.42.fr>          +#+  +:+       +#+         #
# #                                                 +#+#+#+#+#+   +#+            #
# #    Created: 2022/04/08 13:14:04 by jperras           #+#    #+#              #
# #    Updated: 2022/10/13 11:57:32 by eardingh         ###   ########.fr        #
# #                                                                              #
# # **************************************************************************** #

NAME = minishell

LIBFT = libft/libft.a
LIBFT_PATH = libft/
READLINE = readline/libreadline.a


CC = gcc
CFLAGS = -Wall -Werror -Wextra -g
RM = rm -f
RLFLAGS = -lreadline -lncurses

SRCS_FILES = src/minishell.c src/cd.c src/echo.c \
		src/exit.c src/pwd.c src/unset.c src/pipex.c src/signal.c src/execve.c src/env.c\
		src/ft_parse.c src/ft_split2.c src/infile_outfile.c src/utils.c src/export.c src/cat.c src/redirect.c \
		src/check_files.c src/ft_quote_pipe.c
SRCS = $(addprefix $(SRCS_PATH), $(SRCS_FILES))
OBJS = $(SRCS:.c=.o)

all: 	$(NAME)
	@echo "BOOM 💥💥💥💥💥 $(NAME) Compiled! 💯 $(DEFAULT)"


$(NAME): $(OBJS)
	-@$(MAKE) -C $(LIBFT_PATH)
	-@$(CC) $(CFLAGS) -o $@ $^ $(LIBFT) $(READLINE) $(RLFLAGS)
	@echo "$(GREEN)$(NAME) created!$(DEFAULT)"

clean:
	@$(RM) $(OBJS)
	@make -C $(LIBFT_PATH) clean
	@echo "$(YELLOW)Object files deleted!$(DEFAULT)💯"

fclean:	clean
	@$(RM) $(NAME) $(LIBFT)

re:		fclean all

.PHONY:	all clean libft fclean re

git:
	@git add .
	@git commit -m "$(COMMIT)"
	@echo "\n$(GREEN)$(NAME) Committed!$(DEFAULT)💯"

#COLORS
RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
DEFAULT = \033[0m
COMMIT = $(shell date "+%d %B %T")