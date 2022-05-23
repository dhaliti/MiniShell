/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   exit.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jperras <jperras@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/16 10:48:25 by jperras           #+#    #+#             */
/*   Updated: 2022/05/23 10:06:36 by dhaliti          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "Minishell.h"

void	ft_buildin_exit(t_minishell *shell)
{
	char	**c;

	c = malloc(sizeof(char *) * 4);
	c[0] = ft_strdup("rm");
	c[1] = ft_strdup("-f");
	c[2] = ft_strdup(".heredoc");
	c[3] = NULL;
	(void) shell;
	ft_free_shell(shell);
	execve("/bin/rm", c, NULL);
	exit(0);
}
