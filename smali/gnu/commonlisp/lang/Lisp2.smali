.class public abstract Lgnu/commonlisp/lang/Lisp2;
.super Lgnu/kawa/lispexpr/LispLanguage;
.source "Lisp2.java"


# static fields
.field public static final FALSE:Lgnu/lists/LList;

.field public static final TRUE:Lgnu/mapping/Symbol;

.field public static final nilExpr:Lgnu/expr/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    sput-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    .line 20
    invoke-static {}, Lgnu/mapping/Namespace;->getDefault()Lgnu/mapping/Namespace;

    move-result-object v0

    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    .line 21
    new-instance v0, Lgnu/expr/QuoteExp;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lgnu/commonlisp/lang/Lisp2;->nilExpr:Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/lispexpr/LispLanguage;-><init>()V

    return-void
.end method

.method public static asSymbol(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    const-string/jumbo v2, "nil"

    if-ne v1, v2, :cond_0

    .line 79
    sget-object v1, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    move-object v0, v1

    .line 80
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private defun(Lgnu/mapping/Procedure;)V
    .locals 5

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/commonlisp/lang/Lisp2;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public static getString(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "symbol":Lgnu/mapping/Symbol;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/commonlisp/lang/Lisp2;->getString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "symbol":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lgnu/lists/FString;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public booleanObject(Z)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2;
    move v1, p1

    .local v1, "b":Z
    move v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    move-object v0, v2

    .end local v0    # "this":Lgnu/commonlisp/lang/Lisp2;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/commonlisp/lang/Lisp2;
    :cond_0
    sget-object v2, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    move-object v0, v2

    goto :goto_0
.end method

.method public createReadTable()Lgnu/kawa/lispexpr/ReadTable;
    .locals 5

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2;
    new-instance v2, Lgnu/commonlisp/lang/Lisp2ReadTable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/commonlisp/lang/Lisp2ReadTable;-><init>()V

    move-object v1, v2

    .line 161
    .local v1, "tab":Lgnu/kawa/lispexpr/ReadTable;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/kawa/lispexpr/ReadTable;->initialize()V

    .line 162
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgnu/kawa/lispexpr/ReadTable;->setInitialColonIsKeyword(Z)V

    .line 163
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/commonlisp/lang/Lisp2;
    return-object v0
.end method

.method protected defun(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2;
    move-object v1, p1

    .local v1, "sym":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/commonlisp/lang/Lisp2;->environ:Lgnu/mapping/Environment;

    move-object v5, v1

    sget-object v6, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    move-object v4, v2

    instance-of v4, v4, Lgnu/mapping/Procedure;

    if-eqz v4, :cond_0

    .line 119
    move-object v4, v2

    check-cast v4, Lgnu/mapping/Procedure;

    move-object v3, v4

    .line 120
    .local v3, "n":Lgnu/mapping/Procedure;
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/mapping/Procedure;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 121
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->setSymbol(Ljava/lang/Object;)V

    .line 123
    .end local v3    # "n":Lgnu/mapping/Procedure;
    :cond_0
    return-void
.end method

.method protected defun(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/commonlisp/lang/Lisp2;->environ:Lgnu/mapping/Environment;

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/commonlisp/lang/Lisp2;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    sget-object v6, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    move-object v4, v2

    instance-of v4, v4, Lgnu/mapping/Named;

    if-eqz v4, :cond_0

    .line 108
    move-object v4, v2

    check-cast v4, Lgnu/mapping/Named;

    move-object v3, v4

    .line 109
    .local v3, "n":Lgnu/mapping/Named;
    move-object v4, v3

    invoke-interface {v4}, Lgnu/mapping/Named;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 110
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lgnu/mapping/Named;->setName(Ljava/lang/String;)V

    .line 112
    .end local v3    # "n":Lgnu/mapping/Named;
    :cond_0
    return-void
.end method

.method public emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2;
    move v1, p1

    .local v1, "value":Z
    move-object v2, p2

    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move v3, v1

    if-eqz v3, :cond_0

    .line 36
    move-object v3, v2

    const-string/jumbo v4, "gnu.commonlisp.lang.Lisp2"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    move-object v3, v2

    sget-object v4, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string/jumbo v5, "Empty"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_0
.end method

.method protected fromLangSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_0

    .line 87
    move-object v2, v0

    iget-object v2, v2, Lgnu/commonlisp/lang/Lisp2;->environ:Lgnu/mapping/Environment;

    const-string/jumbo v3, "nil"

    invoke-virtual {v2, v3}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v0, v2

    .line 88
    .end local v0    # "this":Lgnu/commonlisp/lang/Lisp2;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/commonlisp/lang/Lisp2;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/kawa/lispexpr/LispLanguage;->fromLangSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getEnvPropertyFor(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2;
    move-object v1, p1

    .local v1, "fld":Ljava/lang/reflect/Field;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Lkawa/lang/Syntax;

    if-eqz v3, :cond_1

    .line 61
    :cond_0
    sget-object v3, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v0, v3

    .line 62
    .end local v0    # "this":Lgnu/commonlisp/lang/Lisp2;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/commonlisp/lang/Lisp2;
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const/4 v2, 0x3

    move v0, v2

    .line 72
    .end local v0    # "this":Lgnu/commonlisp/lang/Lisp2;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/commonlisp/lang/Lisp2;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public hasSeparateFunctionNamespace()Z
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/commonlisp/lang/Lisp2;
    return v0
.end method

.method protected importLocation(Lgnu/mapping/Location;)V
    .locals 9

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2;
    move-object v1, p1

    .local v1, "loc":Lgnu/mapping/Location;
    move-object v4, v1

    check-cast v4, Lgnu/mapping/NamedLocation;

    invoke-virtual {v4}, Lgnu/mapping/NamedLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v2, v4

    .line 133
    .local v2, "name":Lgnu/mapping/Symbol;
    move-object v4, v0

    iget-object v4, v4, Lgnu/commonlisp/lang/Lisp2;->environ:Lgnu/mapping/Environment;

    move-object v5, v2

    sget-object v6, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    .line 156
    :goto_0
    return-void

    .line 136
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v4

    move-object v1, v4

    .line 142
    move-object v4, v1

    instance-of v4, v4, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Lgnu/kawa/reflect/FieldLocation;

    invoke-virtual {v4}, Lgnu/kawa/reflect/FieldLocation;->isProcedureOrSyntax()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    move-object v4, v0

    iget-object v4, v4, Lgnu/commonlisp/lang/Lisp2;->environ:Lgnu/mapping/Environment;

    move-object v5, v2

    sget-object v6, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v4

    .line 156
    :cond_1
    :goto_1
    goto :goto_0

    .line 147
    :cond_2
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v3, v5

    .local v3, "val":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 149
    move-object v4, v3

    instance-of v4, v4, Lgnu/mapping/Procedure;

    if-nez v4, :cond_3

    move-object v4, v3

    instance-of v4, v4, Lkawa/lang/Syntax;

    if-eqz v4, :cond_4

    .line 150
    :cond_3
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/Lisp2;->defun(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    goto :goto_1

    .line 151
    :cond_4
    move-object v4, v3

    instance-of v4, v4, Lgnu/kawa/lispexpr/LangObjType;

    if-eqz v4, :cond_5

    .line 152
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    check-cast v6, Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v6}, Lgnu/kawa/lispexpr/LangObjType;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/Lisp2;->defun(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    goto :goto_1

    .line 154
    :cond_5
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/commonlisp/lang/Lisp2;->define(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public isTrue(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    sget-object v3, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/commonlisp/lang/Lisp2;
    return v0

    .restart local v0    # "this":Lgnu/commonlisp/lang/Lisp2;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public noValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2;
    sget-object v1, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    move-object v0, v1

    .end local v0    # "this":Lgnu/commonlisp/lang/Lisp2;
    return-object v0
.end method

.method public selfEvaluatingSymbol(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/expr/Keyword;

    if-nez v2, :cond_0

    move-object v2, v1

    sget-object v3, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/commonlisp/lang/Lisp2;
    return v0

    .restart local v0    # "this":Lgnu/commonlisp/lang/Lisp2;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
