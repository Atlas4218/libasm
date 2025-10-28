#ifndef _LIBASM_H
#define _LIBASM_H

#include <errno.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
extern	int		ft_strlen(char const *str);

extern	int		ft_strcmp(char const *s1, char const *s2);

extern	char	*ft_strcpy(char *dst, char const *src);

extern	ssize_t	ft_write(int fd, void const *buf, size_t nbyte);

extern	ssize_t	ft_read(int fd, void *buf, size_t nbyte);

extern	char	*ft_strdup(char const *s1);

#endif