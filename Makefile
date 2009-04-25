cherl:
	(cd src;$(MAKE))

all:
	(cd src;$(MAKE))
	(cd deps/mochiweb;$(MAKE) all)

clean:
	(cd src;$(MAKE) clean)
	(cd deps/mochiweb;$(MAKE) clean)
