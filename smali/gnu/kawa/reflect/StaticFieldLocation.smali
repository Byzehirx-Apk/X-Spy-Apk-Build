.class public Lgnu/kawa/reflect/StaticFieldLocation;
.super Lgnu/kawa/reflect/FieldLocation;
.source "StaticFieldLocation.java"


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/StaticFieldLocation;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/ClassType;
    move-object v2, p2

    .local v2, "mname":Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/StaticFieldLocation;
    move-object v1, p1

    .local v1, "cname":Ljava/lang/String;
    move-object v2, p2

    .local v2, "fname":Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 5

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/StaticFieldLocation;
    move-object v1, p1

    .local v1, "field":Ljava/lang/reflect/Field;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 21
    return-void
.end method

.method public static define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;
    .locals 11

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "environ":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "sym":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "cname":Ljava/lang/String;
    move-object v4, p4

    .local v4, "fname":Ljava/lang/String;
    new-instance v6, Lgnu/kawa/reflect/StaticFieldLocation;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 36
    .local v5, "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v5

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v6

    .line 37
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "environ":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public static make(Lgnu/expr/Declaration;)Lgnu/kawa/reflect/StaticFieldLocation;
    .locals 9

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "decl":Lgnu/expr/Declaration;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object v1, v4

    .line 43
    .local v1, "fld":Lgnu/bytecode/Field;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    move-object v2, v4

    .line 44
    .local v2, "ctype":Lgnu/bytecode/ClassType;
    new-instance v4, Lgnu/kawa/reflect/StaticFieldLocation;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    move-object v3, v4

    .line 45
    .local v3, "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/kawa/reflect/StaticFieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    .line 47
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "decl":Lgnu/expr/Declaration;
    return-object v0
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "cname":Ljava/lang/String;
    move-object v1, p1

    .local v1, "fldName":Ljava/lang/String;
    new-instance v2, Lgnu/kawa/reflect/StaticFieldLocation;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "cname":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/StaticFieldLocation;
    move-object v1, p1

    .local v1, "defaultValue":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lgnu/kawa/reflect/FieldLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 26
    .local v2, "val":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Lkawa/lang/Macro;

    if-eqz v3, :cond_0

    .line 27
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/reflect/StaticFieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    move-result-object v3

    .line 28
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/reflect/StaticFieldLocation;
    return-object v0
.end method
