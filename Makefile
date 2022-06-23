# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jperras <jperras@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/08 13:14:04 by jperras           #+#    #+#              #
#    Updated: 2022/05/22 22:01:48 by dhaliti          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
BLU			= \033[0;34m
GRN			= \033[0;32m
RED			= \033[0;31m
RST			= \033[0m
END			= \e[0m

SRCS =  src/minishell.c src/cd.c src/echo.c \
		src/exit.c src/pwd.c src/unset.c src/pipex.c src/signal.c src/execve.c src/env.c\
		src/ft_parse.c src/ft_split2.c src/infile_outfile.c src/utils.c src/export.c src/cat.c src/redirect.c \
		src/check_files.c src/ft_quote_pipe.c
NAME		= minishell
OBJS_DIR	= objs/
OBJS		= $(SRCS:.c=.o)
OBJECTS_PREFIXED = $(addprefix $(OBJS_DIR), $(OBJS))
CC			= gcc
CC_FLAGS	= -Wall -Werror -Wextra

$(OBJS_DIR)%.o : %.c
	@mkdir -p $(OBJS_DIR)
	@mkdir -p $(OBJS_DIR)srcs
	@$(CC) $(CC_FLAGS) -c $< -o $@
	@printf	"\033[2K\r${BLU}[BUILD]${RST} '$<' $(END)"

$(NAME): $(OBJECTS_PREFIXED) maker
	@$(CC) -o $(NAME) $(OBJECTS_PREFIXED) $(CC_FLAGS) ../libft/libft.a -lreadline -I .brew/opt/readline/include -fsanitize=address
	@printf "\033[2K\r\033[0;32m[END]\033[0m $(NAME)$(END)\n"

all: $(NAME)

maker:
	@make -C ../libft

clean:
	@make clean -C ../libft
	@rm -rf $(OBJS_DIR)
	@printf "\033[2K\r${GRN}[CLEAN]${RST} done$(END)"

fclean: clean
	@make fclean -C ../libft
	@rm -f $(NAME)
	@printf "\033[2K\r${GRN}[FCLEAN]${RST} done$(END)"

re: fclean all

.PHONY:		all clean fclean re
