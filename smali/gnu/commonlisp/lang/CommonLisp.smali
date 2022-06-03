.class public Lgnu/commonlisp/lang/CommonLisp;
.super Lgnu/commonlisp/lang/Lisp2;
.source "CommonLisp.java"


# static fields
.field static charIsInt:Z

.field public static final clispEnvironment:Lgnu/mapping/Environment;

.field static final displayFormat:Lgnu/lists/AbstractFormat;

.field public static final instance:Lgnu/commonlisp/lang/CommonLisp;

.field public static final numEqu:Lgnu/kawa/functions/NumberCompare;

.field public static final numGEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numGrt:Lgnu/kawa/functions/NumberCompare;

.field public static final numLEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numLss:Lgnu/kawa/functions/NumberCompare;

.field static final writeFormat:Lgnu/lists/AbstractFormat;


# instance fields
.field booleanType:Lgnu/kawa/lispexpr/LangPrimType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 17
    const/4 v2, 0x0

    sput-boolean v2, Lgnu/commonlisp/lang/CommonLisp;->charIsInt:Z

    .line 58
    const-string/jumbo v2, "clisp-environment"

    invoke-static {v2}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v2

    sput-object v2, Lgnu/commonlisp/lang/CommonLisp;->clispEnvironment:Lgnu/mapping/Environment;

    .line 69
    new-instance v2, Lgnu/commonlisp/lang/CommonLisp;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lgnu/commonlisp/lang/CommonLisp;-><init>()V

    sput-object v2, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    .line 71
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    const-string/jumbo v3, "t"

    sget-object v4, Lgnu/commonlisp/lang/CommonLisp;->TRUE:Lgnu/mapping/Symbol;

    invoke-virtual {v2, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->define(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    const-string/jumbo v3, "nil"

    sget-object v4, Lgnu/commonlisp/lang/CommonLisp;->FALSE:Lgnu/lists/LList;

    invoke-virtual {v2, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->define(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    const-string/jumbo v3, "="

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v2

    sput-object v2, Lgnu/commonlisp/lang/CommonLisp;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 75
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    const-string/jumbo v3, ">"

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v2

    sput-object v2, Lgnu/commonlisp/lang/CommonLisp;->numGrt:Lgnu/kawa/functions/NumberCompare;

    .line 77
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    const-string/jumbo v3, ">="

    const/16 v4, 0x18

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v2

    sput-object v2, Lgnu/commonlisp/lang/CommonLisp;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 79
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    const-string/jumbo v3, "<"

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v2

    sput-object v2, Lgnu/commonlisp/lang/CommonLisp;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 81
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    const-string/jumbo v3, "<="

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v2

    sput-object v2, Lgnu/commonlisp/lang/CommonLisp;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 83
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->clispEnvironment:Lgnu/mapping/Environment;

    invoke-static {v2}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v2

    move-object v0, v2

    .line 86
    .local v0, "saveEnv":Lgnu/mapping/Environment;
    :try_start_0
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    invoke-virtual {v2}, Lgnu/commonlisp/lang/CommonLisp;->initLisp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    move-object v2, v0

    invoke-static {v2}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 91
    .line 167
    new-instance v2, Lgnu/kawa/functions/DisplayFormat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/16 v5, 0x43

    invoke-direct {v3, v4, v5}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v2, Lgnu/commonlisp/lang/CommonLisp;->writeFormat:Lgnu/lists/AbstractFormat;

    .line 168
    new-instance v2, Lgnu/kawa/functions/DisplayFormat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/16 v5, 0x43

    invoke-direct {v3, v4, v5}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v2, Lgnu/commonlisp/lang/CommonLisp;->displayFormat:Lgnu/lists/AbstractFormat;

    return-void

    .line 90
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    invoke-static {v2}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    move-object v2, v1

    throw v2
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/CommonLisp;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/commonlisp/lang/Lisp2;-><init>()V

    .line 96
    move-object v1, v0

    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->clispEnvironment:Lgnu/mapping/Environment;

    iput-object v2, v1, Lgnu/commonlisp/lang/CommonLisp;->environ:Lgnu/mapping/Environment;

    .line 97
    return-void
.end method

.method public static asChar(Ljava/lang/Object;)C
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v2, v0

    instance-of v2, v2, Lgnu/text/Char;

    if-eqz v2, :cond_0

    .line 38
    move-object v2, v0

    check-cast v2, Lgnu/text/Char;

    invoke-virtual {v2}, Lgnu/text/Char;->charValue()C

    move-result v2

    move v0, v2

    .line 46
    .end local v0    # "x":Ljava/lang/Object;
    .local v1, "i":I
    :goto_0
    return v0

    .line 40
    .end local v1    # "i":I
    .restart local v0    # "x":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Lgnu/math/Numeric;

    if-eqz v2, :cond_2

    .line 41
    move-object v2, v0

    check-cast v2, Lgnu/math/Numeric;

    invoke-virtual {v2}, Lgnu/math/Numeric;->intValue()I

    move-result v2

    move v1, v2

    .line 44
    .restart local v1    # "i":I
    :goto_1
    move v2, v1

    if-ltz v2, :cond_1

    move v2, v1

    const v3, 0xffff

    if-le v2, v3, :cond_3

    .line 45
    :cond_1
    new-instance v2, Ljava/lang/ClassCastException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "not a character value"

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    .end local v1    # "i":I
    :cond_2
    const/4 v2, -0x1

    move v1, v2

    .restart local v1    # "i":I
    goto :goto_1

    .line 46
    :cond_3
    move v2, v1

    int-to-char v2, v2

    move v0, v2

    goto :goto_0
.end method

.method public static asNumber(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/text/Char;

    if-eqz v1, :cond_0

    .line 31
    move-object v1, v0

    check-cast v1, Lgnu/text/Char;

    invoke-virtual {v1}, Lgnu/text/Char;->intValue()I

    move-result v1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .line 32
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    check-cast v1, Lgnu/math/Numeric;

    move-object v0, v1

    goto :goto_0
.end method

.method public static getCharacter(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 22
    move v0, p0

    .local v0, "c":I
    sget-boolean v1, Lgnu/commonlisp/lang/CommonLisp;->charIsInt:Z

    if-eqz v1, :cond_0

    .line 23
    move v1, v0

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .line 25
    .end local v0    # "c":I
    :goto_0
    return-object v0

    .restart local v0    # "c":I
    :cond_0
    move v1, v0

    int-to-char v1, v1

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstance()Lgnu/commonlisp/lang/CommonLisp;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    return-object v0
.end method

.method public static registerEnvironment()V
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 165
    return-void
.end method


# virtual methods
.method public getFormat(Z)Lgnu/lists/AbstractFormat;
    .locals 3

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/CommonLisp;
    move v1, p1

    .local v1, "readable":Z
    move v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->writeFormat:Lgnu/lists/AbstractFormat;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/commonlisp/lang/CommonLisp;
    return-object v0

    .restart local v0    # "this":Lgnu/commonlisp/lang/CommonLisp;
    :cond_0
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->displayFormat:Lgnu/lists/AbstractFormat;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/CommonLisp;
    const-string/jumbo v1, "CommonLisp"

    move-object v0, v1

    .end local v0    # "this":Lgnu/commonlisp/lang/CommonLisp;
    return-object v0
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 9

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/CommonLisp;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 189
    .local v2, "name":Ljava/lang/String;
    move-object v3, v2

    const-string/jumbo v4, "boolean"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    move-object v3, v0

    iget-object v3, v3, Lgnu/commonlisp/lang/CommonLisp;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    if-nez v3, :cond_0

    .line 192
    move-object v3, v0

    new-instance v4, Lgnu/kawa/lispexpr/LangPrimType;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    move-object v7, v0

    invoke-direct {v5, v6, v7}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;Lgnu/expr/Language;)V

    iput-object v4, v3, Lgnu/commonlisp/lang/CommonLisp;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    .line 193
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/commonlisp/lang/CommonLisp;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    move-object v0, v3

    .line 197
    .end local v0    # "this":Lgnu/commonlisp/lang/CommonLisp;
    .end local v2    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 195
    .restart local v0    # "this":Lgnu/commonlisp/lang/CommonLisp;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    move-object v3, v2

    invoke-static {v3}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 197
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    move-object v3, v1

    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/CommonLisp;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    const-string/jumbo v3, "t"

    if-ne v2, v3, :cond_0

    .line 180
    const-string/jumbo v2, "java.lang.Object"

    move-object v1, v2

    .line 181
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/commonlisp/lang/CommonLisp;
    return-object v0
.end method

.method initLisp()V
    .locals 11

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/CommonLisp;
    invoke-static {}, Lkawa/standard/Scheme;->builtin()Lgnu/mapping/Environment;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v4

    move-object v1, v4

    .line 102
    .local v1, "e":Lgnu/mapping/LocationEnumeration;
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/LocationEnumeration;->nextLocation()Lgnu/mapping/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/commonlisp/lang/CommonLisp;->importLocation(Lgnu/mapping/Location;)V

    goto :goto_0

    .line 110
    :cond_0
    move-object v4, v0

    :try_start_0
    const-string/jumbo v5, "kawa.lib.prim_syntax"

    invoke-virtual {v4, v5}, Lgnu/commonlisp/lang/CommonLisp;->loadClass(Ljava/lang/String;)V

    .line 111
    move-object v4, v0

    const-string/jumbo v5, "kawa.lib.std_syntax"

    invoke-virtual {v4, v5}, Lgnu/commonlisp/lang/CommonLisp;->loadClass(Ljava/lang/String;)V

    .line 112
    move-object v4, v0

    const-string/jumbo v5, "kawa.lib.lists"

    invoke-virtual {v4, v5}, Lgnu/commonlisp/lang/CommonLisp;->loadClass(Ljava/lang/String;)V

    .line 113
    move-object v4, v0

    const-string/jumbo v5, "kawa.lib.strings"

    invoke-virtual {v4, v5}, Lgnu/commonlisp/lang/CommonLisp;->loadClass(Ljava/lang/String;)V

    .line 114
    move-object v4, v0

    const-string/jumbo v5, "gnu.commonlisp.lisp.PrimOps"

    invoke-virtual {v4, v5}, Lgnu/commonlisp/lang/CommonLisp;->loadClass(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 121
    :goto_1
    new-instance v4, Lkawa/lang/Lambda;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Lkawa/lang/Lambda;-><init>()V

    move-object v2, v4

    .line 122
    .local v2, "lambda":Lkawa/lang/Lambda;
    move-object v4, v2

    const-string/jumbo v5, "&optional"

    invoke-static {v5}, Lgnu/commonlisp/lang/CommonLisp;->asSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "&rest"

    invoke-static {v6}, Lgnu/commonlisp/lang/CommonLisp;->asSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "&key"

    invoke-static {v7}, Lgnu/commonlisp/lang/CommonLisp;->asSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Lambda;->setKeywords(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    move-object v4, v2

    sget-object v5, Lgnu/commonlisp/lang/CommonLisp;->nilExpr:Lgnu/expr/Expression;

    iput-object v5, v4, Lkawa/lang/Lambda;->defaultDefault:Lgnu/expr/Expression;

    .line 126
    move-object v4, v0

    const-string/jumbo v5, "lambda"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    move-object v4, v0

    const-string/jumbo v5, "defun"

    new-instance v6, Lgnu/commonlisp/lang/defun;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-direct {v7, v8}, Lgnu/commonlisp/lang/defun;-><init>(Lkawa/lang/Lambda;)V

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    move-object v4, v0

    const-string/jumbo v5, "defvar"

    new-instance v6, Lgnu/commonlisp/lang/defvar;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lgnu/commonlisp/lang/defvar;-><init>(Z)V

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    move-object v4, v0

    const-string/jumbo v5, "defconst"

    new-instance v6, Lgnu/commonlisp/lang/defvar;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lgnu/commonlisp/lang/defvar;-><init>(Z)V

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    move-object v4, v0

    const-string/jumbo v5, "defsubst"

    new-instance v6, Lgnu/commonlisp/lang/defun;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-direct {v7, v8}, Lgnu/commonlisp/lang/defun;-><init>(Lkawa/lang/Lambda;)V

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    move-object v4, v0

    const-string/jumbo v5, "function"

    new-instance v6, Lgnu/commonlisp/lang/function;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-direct {v7, v8}, Lgnu/commonlisp/lang/function;-><init>(Lkawa/lang/Syntax;)V

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    move-object v4, v0

    const-string/jumbo v5, "setq"

    new-instance v6, Lgnu/commonlisp/lang/setq;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lgnu/commonlisp/lang/setq;-><init>()V

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    move-object v4, v0

    const-string/jumbo v5, "prog1"

    new-instance v6, Lgnu/commonlisp/lang/prog1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "prog1"

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lgnu/commonlisp/lang/prog1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    move-object v4, v0

    const-string/jumbo v5, "prog2"

    sget-object v6, Lgnu/commonlisp/lang/prog1;->prog2:Lgnu/commonlisp/lang/prog1;

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    move-object v4, v0

    const-string/jumbo v5, "progn"

    new-instance v6, Lkawa/standard/begin;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lkawa/standard/begin;-><init>()V

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    move-object v4, v0

    const-string/jumbo v5, "unwind-protect"

    new-instance v6, Lgnu/commonlisp/lang/UnwindProtect;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lgnu/commonlisp/lang/UnwindProtect;-><init>()V

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    new-instance v4, Lgnu/kawa/functions/Not;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-direct {v5, v6}, Lgnu/kawa/functions/Not;-><init>(Lgnu/expr/Language;)V

    move-object v3, v4

    .line 139
    .local v3, "not":Lgnu/mapping/Procedure;
    move-object v4, v0

    const-string/jumbo v5, "not"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    move-object v4, v0

    const-string/jumbo v5, "null"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    move-object v4, v0

    const-string/jumbo v5, "eq"

    new-instance v6, Lgnu/kawa/functions/IsEq;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const-string/jumbo v9, "eq"

    invoke-direct {v7, v8, v9}, Lgnu/kawa/functions/IsEq;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    move-object v4, v0

    const-string/jumbo v5, "equal"

    new-instance v6, Lgnu/kawa/functions/IsEqual;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const-string/jumbo v9, "equal"

    invoke-direct {v7, v8, v9}, Lgnu/kawa/functions/IsEqual;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    move-object v4, v0

    const-string/jumbo v5, "typep"

    new-instance v6, Lgnu/kawa/reflect/InstanceOf;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;)V

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    move-object v4, v0

    const-string/jumbo v5, "princ"

    sget-object v6, Lgnu/commonlisp/lang/CommonLisp;->displayFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    move-object v4, v0

    const-string/jumbo v5, "prin1"

    sget-object v6, Lgnu/commonlisp/lang/CommonLisp;->writeFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    move-object v4, v0

    const-string/jumbo v5, "="

    const-string/jumbo v6, "gnu.commonlisp.lang.CommonLisp"

    const-string/jumbo v7, "numEqu"

    invoke-virtual {v4, v5, v6, v7}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    move-object v4, v0

    const-string/jumbo v5, "<"

    const-string/jumbo v6, "gnu.commonlisp.lang.CommonLisp"

    const-string/jumbo v7, "numLss"

    invoke-virtual {v4, v5, v6, v7}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    move-object v4, v0

    const-string/jumbo v5, ">"

    const-string/jumbo v6, "gnu.commonlisp.lang.CommonLisp"

    const-string/jumbo v7, "numGrt"

    invoke-virtual {v4, v5, v6, v7}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object v4, v0

    const-string/jumbo v5, "<="

    const-string/jumbo v6, "gnu.commonlisp.lang.CommonLisp"

    const-string/jumbo v7, "numLEq"

    invoke-virtual {v4, v5, v6, v7}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    move-object v4, v0

    const-string/jumbo v5, ">="

    const-string/jumbo v6, "gnu.commonlisp.lang.CommonLisp"

    const-string/jumbo v7, "numGEq"

    invoke-virtual {v4, v5, v6, v7}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    move-object v4, v0

    const-string/jumbo v5, "functionp"

    const-string/jumbo v6, "gnu.commonlisp.lisp.PrimOps"

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    .line 116
    .end local v2    # "lambda":Lkawa/lang/Lambda;
    .end local v3    # "not":Lgnu/mapping/Procedure;
    :catch_0
    move-exception v4

    move-object v2, v4

    goto/16 :goto_1
.end method
