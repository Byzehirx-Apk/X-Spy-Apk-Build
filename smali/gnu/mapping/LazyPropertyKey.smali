.class public Lgnu/mapping/LazyPropertyKey;
.super Lgnu/mapping/PropertyKey;
.source "LazyPropertyKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/mapping/PropertyKey",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LazyPropertyKey;, "Lgnu/mapping/LazyPropertyKey<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/mapping/PropertyKey;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public get(Lgnu/mapping/PropertySet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/mapping/PropertySet;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 25
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/mapping/LazyPropertyKey;, "Lgnu/mapping/LazyPropertyKey<TT;>;"
    move-object/from16 v1, p1

    .local v1, "container":Lgnu/mapping/PropertySet;
    move-object/from16 v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;, "TT;"
    move-object v13, v1

    move-object v14, v0

    move-object v15, v2

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/PropertySet;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v3, v13

    .line 26
    .local v3, "raw":Ljava/lang/Object;
    move-object v13, v3

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_5

    .line 28
    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    move-object v4, v13

    .line 29
    .local v4, "str":Ljava/lang/String;
    const/4 v13, 0x0

    move v5, v13

    .line 30
    .local v5, "factory":Z
    move-object v13, v4

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2a

    if-ne v13, v14, :cond_1

    const/4 v13, 0x1

    :goto_0
    move v6, v13

    .line 31
    .local v6, "cstart":I
    move-object v13, v4

    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    move v7, v13

    .line 32
    .local v7, "colon":I
    move v13, v7

    move v14, v6

    if-le v13, v14, :cond_0

    move v13, v7

    move-object v14, v4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    .line 33
    :cond_0
    new-instance v13, Ljava/lang/RuntimeException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "lazy property "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " must have the form \"ClassName:fieldName\" or \"ClassName:staticMethodName\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 30
    .end local v6    # "cstart":I
    .end local v7    # "colon":I
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 34
    .restart local v6    # "cstart":I
    .restart local v7    # "colon":I
    :cond_2
    const/4 v13, 0x0

    move-object v8, v13

    .line 35
    .local v8, "method":Ljava/lang/reflect/Method;
    move-object v13, v4

    move v14, v6

    move v15, v7

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 36
    .local v9, "cname":Ljava/lang/String;
    move-object v13, v4

    move v14, v7

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 41
    .local v10, "mname":Ljava/lang/String;
    move-object v13, v9

    const/4 v14, 0x1

    move-object v15, v1

    :try_start_0
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-static {v13, v14, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v13

    move-object v12, v13

    .line 46
    .local v12, "clas":Ljava/lang/Class;
    move v13, v6

    if-nez v13, :cond_3

    .line 48
    move-object v13, v12

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    move-object v11, v13

    .line 59
    .line 60
    .local v11, "result":Ljava/lang/Object;, "TT;"
    :goto_1
    move-object v13, v1

    move-object v14, v0

    move-object v15, v11

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    move-object v13, v11

    move-object v0, v13

    .line 63
    .end local v0    # "this":Lgnu/mapping/LazyPropertyKey;, "Lgnu/mapping/LazyPropertyKey<TT;>;"
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "factory":Z
    .end local v6    # "cstart":I
    .end local v7    # "colon":I
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v9    # "cname":Ljava/lang/String;
    .end local v10    # "mname":Ljava/lang/String;
    .end local v11    # "result":Ljava/lang/Object;, "TT;"
    .end local v12    # "clas":Ljava/lang/Class;
    :goto_2
    return-object v0

    .line 52
    .restart local v0    # "this":Lgnu/mapping/LazyPropertyKey;, "Lgnu/mapping/LazyPropertyKey<TT;>;"
    .restart local v4    # "str":Ljava/lang/String;
    .restart local v5    # "factory":Z
    .restart local v6    # "cstart":I
    .restart local v7    # "colon":I
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    .restart local v9    # "cname":Ljava/lang/String;
    .restart local v10    # "mname":Ljava/lang/String;
    .restart local v12    # "clas":Ljava/lang/Class;
    :cond_3
    move-object v13, v12

    move-object v14, v10

    const/4 v15, 0x1

    :try_start_1
    new-array v15, v15, [Ljava/lang/Class;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    const-class v18, Ljava/lang/Object;

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    move-object/from16 v18, v1

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    move-object v11, v13

    .restart local v11    # "result":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 56
    .end local v11    # "result":Ljava/lang/Object;, "TT;"
    .end local v12    # "clas":Ljava/lang/Class;
    :catch_0
    move-exception v13

    move-object v12, v13

    .line 58
    .local v12, "ex":Ljava/lang/Throwable;
    new-instance v13, Ljava/lang/RuntimeException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "lazy property "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " has specifier \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\" but there is no such "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v6

    if-nez v16, :cond_4

    const-string/jumbo v16, "field"

    :goto_3
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v12

    invoke-direct/range {v14 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    :cond_4
    const-string/jumbo v16, "method"

    goto :goto_3

    .line 63
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "factory":Z
    .end local v6    # "cstart":I
    .end local v7    # "colon":I
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v9    # "cname":Ljava/lang/String;
    .end local v10    # "mname":Ljava/lang/String;
    .end local v12    # "ex":Ljava/lang/Throwable;
    :cond_5
    move-object v13, v3

    move-object v0, v13

    goto :goto_2
.end method

.method public set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LazyPropertyKey;, "Lgnu/mapping/LazyPropertyKey<TT;>;"
    move-object v1, p1

    .local v1, "container":Lgnu/mapping/PropertySet;
    move-object v2, p2

    .local v2, "specifier":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    return-void
.end method
