# error-log-shortcut.vim

In my PHP programming, I find myself often outputting a variable to the
error log (or to the console in JavaScript).

Since this is repetitive, I created this plugin to transform:

```
$variable
```

to

```
error_log( '$variable = ' . print_r( $variable, true ) );
```

## Languages Supported

### PHP

`$variable` to

```
error_log( '$variable = ' . print_r( $variable, true ) );
```

### JavaScript

`variable` to

```
console.log( variable );
```
