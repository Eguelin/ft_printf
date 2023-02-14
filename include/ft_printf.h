/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eguelin <eguelin@student.42lyon.fr>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/19 11:29:12 by eguelin           #+#    #+#             */
/*   Updated: 2022/12/09 13:30:28 by eguelin          ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <stdarg.h>
# include <unistd.h>

int	ft_print_nbr(int n);
int	ft_print_char(char c);
int	ft_print_str(const char *s);
int	ft_print_all(char c, va_list arg);
int	ft_print_address(unsigned long un);
int	ft_printf(const char *format, ...);
int	ft_print_base(unsigned long un, unsigned long size_set, char *set);

#endif
