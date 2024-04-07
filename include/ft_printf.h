/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eguelin <eguelin@student.42lyon.fr>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/19 11:29:12 by eguelin           #+#    #+#             */
/*   Updated: 2024/04/07 17:20:30 by eguelin          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <stdarg.h>
# include <unistd.h>

int	ft_print_address(unsigned long un);
int	ft_print_all(char c, va_list arg);
int	ft_print_base(unsigned long un, unsigned long size_set, char *set);
int	ft_print_char(char c);
int	ft_print_nbr(int n);
int	ft_print_str(const char *s);
int	ft_printf(const char *format, ...);

#endif
