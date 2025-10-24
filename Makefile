
SRC 		= 	src
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
NAME		=	libasm.a


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

.PHONY:			clean fclean re test