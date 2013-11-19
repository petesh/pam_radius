
CPPFLAGS += -I/usr/local/include

LDFLAGS += -L/usr/local/lib

LDLIBS += -lpwdb

CFLAGS += -Wall -Werror -fPIC

all: pam_radius.so

pam_radius.so: pam_radius.c pam_radius.h
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -shared -o $@ $(LDLIBS)

clean:
	rm -f pam_radius.so
