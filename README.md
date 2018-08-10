# OpenDIY

## Compile Library or Executable

### **Library**

```
{.$DEFINE EXECUTABLE}
```

**Windows DLL**

```
$ fpccmd W opendiy.ppr 
```

**Mac OSX DYLIB**

```
$ fpccmd M opendiy.ppr
```

**Linux SO**

```
$ fpccmd L opendiy.ppr
```

**iOS A**

```
$ fpccmd I opendiy.ppr
```

**Android SO**

```
$ fpccmd AA opendiy.ppr
$ fpccmd AI opendiy.ppr
$ fpccmd AM opendiy.ppr
```

### **Executable**

```
{$DEFINE EXECUTABLE}
```

- - -

## Compile PC Client

**Windows**

```
$ fpccmd W client.ppr W
```

**Mac OSX**

```
$ fpccmd M client.ppr C
```

**Linux**

```
$ fpccmd L client.ppr G
```