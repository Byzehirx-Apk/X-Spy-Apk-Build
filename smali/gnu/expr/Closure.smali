.class Lgnu/expr/Closure;
.super Lgnu/mapping/MethodProc;
.source "LambdaExp.java"


# instance fields
.field evalFrames:[[Ljava/lang/Object;

.field lambda:Lgnu/expr/LambdaExp;


# direct methods
.method public constructor <init>(Lgnu/expr/LambdaExp;Lgnu/mapping/CallContext;)V
    .locals 10

    .prologue
    .line 1973
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Closure;
    move-object v1, p1

    .local v1, "lexp":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v0

    invoke-direct {v5}, Lgnu/mapping/MethodProc;-><init>()V

    .line 1974
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    .line 1976
    move-object v5, v2

    iget-object v5, v5, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    move-object v3, v5

    .line 1977
    .local v3, "oldFrames":[[Ljava/lang/Object;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 1979
    move-object v5, v3

    array-length v5, v5

    move v4, v5

    .line 1980
    .local v4, "n":I
    :goto_0
    move v5, v4

    if-lez v5, :cond_0

    move-object v5, v3

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    if-nez v5, :cond_0

    .line 1981
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1983
    :cond_0
    move-object v5, v0

    move v6, v4

    new-array v6, v6, [[Ljava/lang/Object;

    iput-object v6, v5, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    .line 1984
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    const/4 v8, 0x0

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1986
    .end local v4    # "n":I
    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/expr/Closure;->setSymbol(Ljava/lang/Object;)V

    .line 1987
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2120
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/Closure;
    move-object/from16 v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-static {v11}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v11

    move v2, v11

    .line 2121
    .local v2, "level":I
    move-object v11, v1

    iget-object v11, v11, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v3, v11

    .line 2122
    .local v3, "evalFrame":[Ljava/lang/Object;
    move-object v11, v1

    iget-object v11, v11, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    move-object v4, v11

    .line 2124
    .local v4, "saveFrames":[[Ljava/lang/Object;
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    if-nez v11, :cond_4

    const/4 v11, 0x0

    :goto_0
    move v5, v11

    .line 2125
    .local v5, "numFrames":I
    move v11, v2

    move v12, v5

    if-lt v11, v12, :cond_0

    .line 2126
    move v11, v2

    move v5, v11

    .line 2127
    :cond_0
    add-int/lit8 v5, v5, 0xa

    .line 2128
    move v11, v5

    new-array v11, v11, [[Ljava/lang/Object;

    move-object v6, v11

    .line 2129
    .local v6, "newFrames":[[Ljava/lang/Object;
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    if-eqz v11, :cond_1

    .line 2130
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    const/4 v12, 0x0

    move-object v13, v6

    const/4 v14, 0x0

    move-object v15, v0

    iget-object v15, v15, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    array-length v15, v15

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2131
    :cond_1
    move-object v11, v6

    move v12, v2

    move-object v13, v3

    aput-object v13, v11, v12

    .line 2132
    move-object v11, v1

    move-object v12, v6

    iput-object v12, v11, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 2136
    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v11, v11, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-nez v11, :cond_5

    .line 2140
    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string/jumbo v13, "procedure "

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v7, v11

    .line 2141
    .local v7, "sbuf":Ljava/lang/StringBuffer;
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 2142
    .local v8, "name":Ljava/lang/String;
    move-object v11, v8

    if-nez v11, :cond_2

    .line 2143
    const-string/jumbo v11, "<anonymous>"

    move-object v8, v11

    .line 2144
    :cond_2
    move-object v11, v7

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 2145
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v11

    move v9, v11

    .line 2146
    .local v9, "line":I
    move v11, v9

    if-lez v11, :cond_3

    .line 2148
    move-object v11, v7

    const-string/jumbo v12, " at line "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 2149
    move-object v11, v7

    move v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 2151
    :cond_3
    move-object v11, v7

    const-string/jumbo v12, " was called before it was expanded"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 2152
    new-instance v11, Ljava/lang/RuntimeException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v7

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2158
    .end local v7    # "sbuf":Ljava/lang/StringBuffer;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "line":I
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v1

    move-object v12, v4

    iput-object v12, v11, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    move-object v11, v10

    throw v11

    .line 2124
    .end local v5    # "numFrames":I
    .end local v6    # "newFrames":[[Ljava/lang/Object;
    :cond_4
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    array-length v11, v11

    goto/16 :goto_0

    .line 2154
    .restart local v5    # "numFrames":I
    .restart local v6    # "newFrames":[[Ljava/lang/Object;
    :cond_5
    move-object v11, v0

    :try_start_1
    iget-object v11, v11, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v11, v11, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2158
    move-object v11, v1

    move-object v12, v4

    iput-object v12, v11, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 2159
    .line 2160
    return-void
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 2164
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Closure;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lgnu/mapping/MethodProc;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 2165
    .local v3, "value":Ljava/lang/Object;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 2166
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/LambdaExp;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 2167
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/Closure;
    return-object v0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 5

    .prologue
    .line 1991
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Closure;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/expr/Closure;
    return v0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9

    .prologue
    .line 1996
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Closure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/expr/Closure;
    return v0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10

    .prologue
    .line 2001
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Closure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/expr/Closure;
    return v0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 11

    .prologue
    .line 2006
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Closure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v3

    aput-object v9, v7, v8

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Lgnu/expr/Closure;
    return v0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 12

    .prologue
    .line 2012
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Closure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "arg4":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    move-object v10, v4

    aput-object v10, v8, v9

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Lgnu/expr/Closure;
    return v0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 29

    .prologue
    .line 2017
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/expr/Closure;
    move-object/from16 v3, p1

    .local v3, "args":[Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "ctx":Lgnu/mapping/CallContext;
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Closure;->numArgs()I

    move-result v24

    move/from16 v5, v24

    .line 2018
    .local v5, "num":I
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v6, v24

    .line 2019
    .local v6, "nargs":I
    move/from16 v24, v5

    const/16 v25, 0xfff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xfff

    move/from16 v24, v0

    move/from16 v7, v24

    .line 2020
    .local v7, "min":I
    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 2021
    const/high16 v24, -0xf0000

    move/from16 v25, v7

    or-int v24, v24, v25

    move/from16 v2, v24

    .line 2115
    .end local v2    # "this":Lgnu/expr/Closure;
    :goto_0
    return v2

    .line 2022
    .restart local v2    # "this":Lgnu/expr/Closure;
    :cond_0
    move/from16 v24, v5

    const/16 v25, 0xc

    shr-int/lit8 v24, v24, 0xc

    move/from16 v8, v24

    .line 2023
    .local v8, "max":I
    move/from16 v24, v6

    move/from16 v25, v8

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    move/from16 v24, v8

    if-ltz v24, :cond_1

    .line 2024
    const/high16 v24, -0xe0000

    move/from16 v25, v8

    or-int v24, v24, v25

    move/from16 v2, v24

    goto :goto_0

    .line 2026
    :cond_1
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/expr/LambdaExp;->frameSize:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v9, v24

    .line 2027
    .local v9, "evalFrame":[Ljava/lang/Object;
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    const/16 v24, 0x0

    :goto_1
    move/from16 v10, v24

    .line 2028
    .local v10, "key_args":I
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    const/16 v24, 0x0

    :goto_2
    move/from16 v11, v24

    .line 2030
    .local v11, "opt_args":I
    const/16 v24, 0x0

    move/from16 v12, v24

    .line 2031
    .local v12, "i":I
    const/16 v24, 0x0

    move/from16 v13, v24

    .line 2032
    .local v13, "opt_i":I
    const/16 v24, 0x0

    move/from16 v14, v24

    .line 2033
    .local v14, "key_i":I
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v24, v0

    move/from16 v15, v24

    .line 2034
    .local v15, "min_args":I
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v24

    move-object/from16 v16, v24

    .local v16, "decl":Lgnu/expr/Declaration;
    :goto_3
    move-object/from16 v24, v16

    if-eqz v24, :cond_e

    .line 2038
    move/from16 v24, v12

    move/from16 v25, v15

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 2039
    move-object/from16 v24, v3

    move/from16 v25, v12

    add-int/lit8 v12, v12, 0x1

    aget-object v24, v24, v25

    move-object/from16 v17, v24

    .line 2092
    :goto_4
    move-object/from16 v24, v16

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 2096
    move-object/from16 v24, v16

    :try_start_0
    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    move-object/from16 v24, v0

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v24

    move-object/from16 v17, v24

    .line 2101
    .line 2103
    :cond_2
    move-object/from16 v24, v16

    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 2105
    move-object/from16 v24, v16

    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->makeIndirectLocationFor()Lgnu/mapping/Location;

    move-result-object v24

    move-object/from16 v18, v24

    .line 2106
    .local v18, "loc":Lgnu/mapping/Location;
    move-object/from16 v24, v18

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 2107
    move-object/from16 v24, v18

    move-object/from16 v17, v24

    .line 2109
    .end local v18    # "loc":Lgnu/mapping/Location;
    :cond_3
    move-object/from16 v24, v9

    move-object/from16 v25, v16

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/expr/Declaration;->evalIndex:I

    move/from16 v25, v0

    move-object/from16 v26, v17

    aput-object v26, v24, v25

    .line 2035
    move-object/from16 v24, v16

    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v24

    move-object/from16 v16, v24

    goto :goto_3

    .line 2027
    .end local v10    # "key_args":I
    .end local v11    # "opt_args":I
    .end local v12    # "i":I
    .end local v13    # "opt_i":I
    .end local v14    # "key_i":I
    .end local v15    # "min_args":I
    .end local v16    # "decl":Lgnu/expr/Declaration;
    :cond_4
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    goto/16 :goto_1

    .line 2028
    .restart local v10    # "key_args":I
    :cond_5
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v25, v10

    sub-int v24, v24, v25

    goto/16 :goto_2

    .line 2040
    .restart local v11    # "opt_args":I
    .restart local v12    # "i":I
    .restart local v13    # "opt_i":I
    .restart local v14    # "key_i":I
    .restart local v15    # "min_args":I
    .restart local v16    # "decl":Lgnu/expr/Declaration;
    :cond_6
    move/from16 v24, v12

    move/from16 v25, v15

    move/from16 v26, v11

    add-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    .line 2042
    move/from16 v24, v12

    move/from16 v25, v6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 2043
    move-object/from16 v24, v3

    move/from16 v25, v12

    add-int/lit8 v12, v12, 0x1

    aget-object v24, v24, v25

    move-object/from16 v17, v24

    .line 2046
    .local v17, "value":Ljava/lang/Object;
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 2045
    .end local v17    # "value":Ljava/lang/Object;
    :cond_7
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v24, v0

    move/from16 v25, v13

    move-object/from16 v26, v4

    invoke-virtual/range {v24 .. v26}, Lgnu/expr/LambdaExp;->evalDefaultArg(ILgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v17, v24

    .restart local v17    # "value":Ljava/lang/Object;
    goto :goto_5

    .line 2048
    .end local v17    # "value":Ljava/lang/Object;
    :cond_8
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v24, v0

    if-gez v24, :cond_c

    move/from16 v24, v12

    move/from16 v25, v15

    move/from16 v26, v11

    add-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 2050
    move-object/from16 v24, v16

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 2052
    move/from16 v24, v6

    move/from16 v25, v12

    sub-int v24, v24, v25

    move/from16 v18, v24

    .line 2053
    .local v18, "rem":I
    move-object/from16 v24, v16

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    move-object/from16 v24, v0

    check-cast v24, Lgnu/bytecode/ArrayType;

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v24

    move-object/from16 v19, v24

    .line 2054
    .local v19, "elementType":Lgnu/bytecode/Type;
    move-object/from16 v24, v19

    sget-object v25, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 2056
    move/from16 v24, v18

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v20, v24

    .line 2057
    .local v20, "rest":[Ljava/lang/Object;
    move-object/from16 v24, v3

    move/from16 v25, v12

    move-object/from16 v26, v20

    const/16 v27, 0x0

    move/from16 v28, v18

    invoke-static/range {v24 .. v28}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2058
    move-object/from16 v24, v20

    move-object/from16 v17, v24

    .line 2079
    .end local v20    # "rest":[Ljava/lang/Object;
    :cond_9
    goto/16 :goto_4

    .line 2062
    :cond_a
    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v20, v24

    .line 2063
    .local v20, "elementClass":Ljava/lang/Class;
    move-object/from16 v24, v20

    move/from16 v25, v18

    invoke-static/range {v24 .. v25}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v17, v24

    .line 2065
    .restart local v17    # "value":Ljava/lang/Object;
    const/16 v24, 0x0

    move/from16 v21, v24

    .local v21, "j":I
    :goto_6
    move/from16 v24, v21

    move/from16 v25, v18

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 2070
    move-object/from16 v24, v19

    move-object/from16 v25, v3

    move/from16 v26, v12

    move/from16 v27, v21

    add-int v26, v26, v27

    :try_start_1
    aget-object v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v24

    move-object/from16 v22, v24

    .line 2075
    .line 2076
    .local v22, "el":Ljava/lang/Object;
    move-object/from16 v24, v17

    move/from16 v25, v21

    move-object/from16 v26, v22

    invoke-static/range {v24 .. v26}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 2065
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 2072
    .end local v22    # "el":Ljava/lang/Object;
    :catch_0
    move-exception v24

    move-object/from16 v23, v24

    .line 2074
    .local v23, "ex":Ljava/lang/ClassCastException;
    const/high16 v24, -0xc0000

    move/from16 v25, v12

    move/from16 v26, v21

    add-int v25, v25, v26

    or-int v24, v24, v25

    move/from16 v2, v24

    goto/16 :goto_0

    .line 2081
    .end local v17    # "value":Ljava/lang/Object;
    .end local v18    # "rem":I
    .end local v19    # "elementType":Lgnu/bytecode/Type;
    .end local v20    # "elementClass":Ljava/lang/Class;
    .end local v21    # "j":I
    .end local v23    # "ex":Ljava/lang/ClassCastException;
    :cond_b
    move-object/from16 v24, v3

    move/from16 v25, v12

    invoke-static/range {v24 .. v25}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v24

    move-object/from16 v17, v24

    .local v17, "value":Lgnu/lists/LList;
    goto/16 :goto_4

    .line 2085
    .end local v17    # "value":Lgnu/lists/LList;
    :cond_c
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v24, v0

    move/from16 v25, v14

    add-int/lit8 v14, v14, 0x1

    aget-object v24, v24, v25

    move-object/from16 v18, v24

    .line 2086
    .local v18, "keyword":Lgnu/expr/Keyword;
    move/from16 v24, v15

    move/from16 v25, v11

    add-int v24, v24, v25

    move/from16 v19, v24

    .line 2087
    .local v19, "key_offset":I
    move-object/from16 v24, v3

    move/from16 v25, v19

    move-object/from16 v26, v18

    invoke-static/range {v24 .. v26}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v17, v24

    .line 2088
    .local v17, "value":Ljava/lang/Object;
    move-object/from16 v24, v17

    sget-object v25, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 2089
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v24, v0

    move/from16 v25, v13

    move-object/from16 v26, v4

    invoke-virtual/range {v24 .. v26}, Lgnu/expr/LambdaExp;->evalDefaultArg(ILgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v17, v24

    .line 2090
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 2098
    .end local v17    # "value":Ljava/lang/Object;
    .end local v18    # "keyword":Lgnu/expr/Keyword;
    .end local v19    # "key_offset":I
    :catch_1
    move-exception v24

    move-object/from16 v18, v24

    .line 2100
    .local v18, "ex":Ljava/lang/ClassCastException;
    const/high16 v24, -0xc0000

    move/from16 v25, v12

    or-int v24, v24, v25

    move/from16 v2, v24

    goto/16 :goto_0

    .line 2111
    .end local v18    # "ex":Ljava/lang/ClassCastException;
    :cond_e
    move-object/from16 v24, v4

    move-object/from16 v25, v9

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 2112
    move-object/from16 v24, v4

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lgnu/mapping/CallContext;->where:I

    .line 2113
    move-object/from16 v24, v4

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lgnu/mapping/CallContext;->next:I

    .line 2114
    move-object/from16 v24, v4

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 2115
    const/16 v24, 0x0

    move/from16 v2, v24

    goto/16 :goto_0
.end method

.method public numArgs()I
    .locals 4

    .prologue
    .line 1970
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Closure;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget v1, v1, Lgnu/expr/LambdaExp;->min_args:I

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget v2, v2, Lgnu/expr/LambdaExp;->max_args:I

    const/16 v3, 0xc

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Closure;
    return v0
.end method
