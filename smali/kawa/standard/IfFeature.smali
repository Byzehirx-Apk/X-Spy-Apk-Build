.class public Lkawa/standard/IfFeature;
.super Ljava/lang/Object;
.source "IfFeature.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lkawa/standard/IfFeature;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 9

    .prologue
    .line 22
    move-object v1, p0

    .local v1, "name":Ljava/lang/String;
    move-object v5, v1

    const-string/jumbo v6, "kawa"

    if-ne v5, v6, :cond_0

    .line 23
    const/4 v5, 0x1

    move v1, v5

    .line 85
    .end local v1    # "name":Ljava/lang/String;
    .local v2, "provide_name":Ljava/lang/String;
    .local v3, "comp":Lgnu/expr/Compilation;
    .local v4, "decl":Lgnu/expr/Declaration;
    :goto_0
    return v1

    .line 24
    .end local v2    # "provide_name":Ljava/lang/String;
    .end local v3    # "comp":Lgnu/expr/Compilation;
    .end local v4    # "decl":Lgnu/expr/Declaration;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    move-object v5, v1

    const-string/jumbo v6, "srfi-0"

    if-ne v5, v6, :cond_1

    .line 25
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 27
    :cond_1
    move-object v5, v1

    const-string/jumbo v6, "srfi-4"

    if-ne v5, v6, :cond_2

    .line 28
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 29
    :cond_2
    move-object v5, v1

    const-string/jumbo v6, "srfi-6"

    if-ne v5, v6, :cond_3

    .line 30
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 31
    :cond_3
    move-object v5, v1

    const-string/jumbo v6, "srfi-8"

    if-ne v5, v6, :cond_4

    .line 32
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 33
    :cond_4
    move-object v5, v1

    const-string/jumbo v6, "srfi-9"

    if-ne v5, v6, :cond_5

    .line 34
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 35
    :cond_5
    move-object v5, v1

    const-string/jumbo v6, "srfi-11"

    if-ne v5, v6, :cond_6

    .line 36
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 37
    :cond_6
    move-object v5, v1

    const-string/jumbo v6, "srfi-16"

    if-ne v5, v6, :cond_7

    .line 38
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 39
    :cond_7
    move-object v5, v1

    const-string/jumbo v6, "srfi-17"

    if-ne v5, v6, :cond_8

    .line 40
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 41
    :cond_8
    move-object v5, v1

    const-string/jumbo v6, "srfi-23"

    if-ne v5, v6, :cond_9

    .line 42
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 43
    :cond_9
    move-object v5, v1

    const-string/jumbo v6, "srfi-25"

    if-ne v5, v6, :cond_a

    .line 44
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 45
    :cond_a
    move-object v5, v1

    const-string/jumbo v6, "srfi-26"

    if-ne v5, v6, :cond_b

    .line 46
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 47
    :cond_b
    move-object v5, v1

    const-string/jumbo v6, "srfi-28"

    if-ne v5, v6, :cond_c

    .line 48
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 49
    :cond_c
    move-object v5, v1

    const-string/jumbo v6, "srfi-30"

    if-ne v5, v6, :cond_d

    .line 50
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 51
    :cond_d
    move-object v5, v1

    const-string/jumbo v6, "srfi-39"

    if-ne v5, v6, :cond_e

    .line 52
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 71
    :cond_e
    move-object v5, v1

    const-string/jumbo v6, "in-http-server"

    if-eq v5, v6, :cond_f

    move-object v5, v1

    const-string/jumbo v6, "in-servlet"

    if-ne v5, v6, :cond_13

    .line 73
    :cond_f
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/expr/ModuleContext;->getFlags()I

    move-result v5

    move v2, v5

    .line 74
    .local v2, "mflags":I
    move-object v5, v1

    const-string/jumbo v6, "in-http-server"

    if-ne v5, v6, :cond_11

    .line 75
    move v5, v2

    sget v6, Lgnu/expr/ModuleContext;->IN_HTTP_SERVER:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    :goto_1
    move v1, v5

    goto/16 :goto_0

    :cond_10
    const/4 v5, 0x0

    goto :goto_1

    .line 76
    :cond_11
    move-object v5, v1

    const-string/jumbo v6, "in-servlet"

    if-ne v5, v6, :cond_13

    .line 77
    move v5, v2

    sget v6, Lgnu/expr/ModuleContext;->IN_SERVLET:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    :goto_2
    move v1, v5

    goto/16 :goto_0

    :cond_12
    const/4 v5, 0x0

    goto :goto_2

    .line 80
    .end local v2    # "mflags":I
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "%provide%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 81
    .local v2, "provide_name":Ljava/lang/String;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v5

    move-object v3, v5

    .line 82
    .restart local v3    # "comp":Lgnu/expr/Compilation;
    move-object v5, v3

    move-object v6, v2

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Compilation;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v5

    move-object v4, v5

    .line 83
    .restart local v4    # "decl":Lgnu/expr/Declaration;
    move-object v5, v4

    if-eqz v5, :cond_14

    move-object v5, v4

    const-wide/32 v6, 0x10000

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-nez v5, :cond_14

    .line 84
    const/4 v5, 0x1

    move v1, v5

    goto/16 :goto_0

    .line 85
    :cond_14
    const/4 v5, 0x0

    move v1, v5

    goto/16 :goto_0
.end method

.method public static testFeature(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "form":Ljava/lang/Object;
    move-object v2, v0

    instance-of v2, v2, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_0

    .line 12
    move-object v2, v0

    check-cast v2, Lkawa/lang/SyntaxForm;

    move-object v1, v2

    .line 13
    .local v1, "sf":Lkawa/lang/SyntaxForm;
    move-object v2, v1

    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 15
    .end local v1    # "sf":Lkawa/lang/SyntaxForm;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    instance-of v2, v2, Lgnu/mapping/SimpleSymbol;

    if-eqz v2, :cond_2

    .line 16
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkawa/standard/IfFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 17
    .end local v0    # "form":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local v0    # "form":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
