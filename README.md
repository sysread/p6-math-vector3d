class Math::Vector3D
--------------------

A 3-dimensional vector class with numeric x, y, and z attributes.

### method length-squared

```perl6
method length-squared() returns Numeric
```

Returns the squared length of the vector

### method length

```perl6
method length() returns Numeric
```

Returns the length of the vector

### multi method add

```perl6
multi method add(
    Math::Vector3D:D $v
) returns Math::Vector3D
```

Destructively adds another vector or a scalar numeric to this vector. Returns this vector.

### multi method sub

```perl6
multi method sub(
    Math::Vector3D:D $v
) returns Math::Vector3D
```

Destructively subtracts another vector or a scalar numeric to this vector. Returns this vector.

### multi method mul

```perl6
multi method mul(
    Math::Vector3D:D $v
) returns Math::Vector3D
```

Destructively multiplies this vector by another vector or a scalar numeric. Returns this vector.

### multi method div

```perl6
multi method div(
    Math::Vector3D:D $v
) returns Math::Vector3D
```

Destructively divides this vector by another vector or a scalar numeric. Returns this vector.

### method negate

```perl6
method negate() returns Math::Vector3D
```

Returns a new vector with negated values for x, y, and z.

### method cross

```perl6
method cross(
    Math::Vector3D:D $v
) returns Math::Vector3D
```

Destructively updates this vector to be the cross product of itself and another vector. Returns this vector.

### method dot

```perl6
method dot(
    Math::Vector3D:D $v
) returns Numeric
```

Computes the dot product of the vector and the supplied number.

### method angle-to

```perl6
method angle-to(
    Math::Vector3D:D $v
) returns Numeric
```

Computes the angle to the supplied vector.

### method distance-to-squared

```perl6
method distance-to-squared(
    Math::Vector3D:D $v
) returns Numeric
```

Computes the square of the distance between this vector and the supplied vector.

### method distance-to

```perl6
method distance-to(
    Math::Vector3D:D $v
) returns Numeric
```

Computes the distance between this vector and the supplied vector.

### method normalize

```perl6
method normalize() returns Math::Vector3D
```

Destructively normalizes this vector. Returns this vector.

### method set-length

```perl6
method set-length(
    Numeric:D $n
) returns Math::Vector3D
```

Destructively sets the length of the vector. Returns this vector.

### method lerp

```perl6
method lerp(
    Math::Vector3D:D $target,
    Numeric:D $n
) returns Math::Vector3D
```

Lerps toward the target vector by the supplied value. Returns this vector.

### method List

```perl6
method List() returns List
```

Coerces to a List of [x, y, z]

### multi sub infix:<+>

```perl6
multi sub infix:<+>(
    Math::Vector3D:D $v,
    $n
) returns Math::Vector3D
```

Overloads +, -, *, and /

### multi sub infix:<==>

```perl6
multi sub infix:<==>(
    Math::Vector3D:D $v1,
    Math::Vector3D:D $v2
) returns Bool
```

Overloads == to compare two vectors numerically

### multi sub vec

```perl6
multi sub vec(
    Numeric:D $x = 0,
    Numeric:D $y = 0,
    Numeric:D $z = 0
) returns Math::Vector3D
```

Syntactic sugar to construct a new vector from three numbers or another vector (as a clone). my $vec = vec 10, 20, 30; my $new_vec = vec $vec;

