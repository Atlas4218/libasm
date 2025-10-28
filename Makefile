
SRC 		= 	src
INC			=	inc
BIN			=	bin

SRCS		=	${SRC}/ft_strlen.s\
				${SRC}/ft_strcmp.s\
				${SRC}/ft_strcpy.s\
				${SRC}/ft_write.s\
				${SRC}/ft_read.s\
				${SRC}/ft_strdup.s

OBJS		= 	${patsubst %,${BIN}/%, ${notdir ${SRCS:.s=.o}}}
NA			=	nasm
NA_FLAGS	=	-felf64
FLAGS 		=	-g3 -Wall -Werror -Wextra -no-pie
NAME		=	libasm.a

TEST		=	test

${BIN}/%.o : ${SRC}/%.s
				mkdir -p ${BIN};\
				${NA} ${NA_FLAGS} -s $< -o $@

all:			${NAME}

${NAME}:		${OBJS}
				ar rcs ${NAME} ${OBJS}

clean:
				rm -rf ${OBJS} ${BONUS_OBJS}

fclean:			clean
				rm -rf ${NAME} ${BONUS} ${TEST} ${TEST_BONUS}

re:				fclean ${NAME}

test:			${NAME}
				gcc ${FLAGS} -o ${TEST} main.c  -L. -lasm -I${INC}
				./${TEST}

.PHONY:			clean fclean re test